# load package
R.version.string
pg = c('Seurat', 'ggplot2', 'dplyr', 'patchwork', 'sctransform', 'data.table','readr',
       'SingleCellExperiment','clustree','patchwork','fgsea','ComplexHeatmap','harmony',
       'fgsea','ggplot2','pheatmap','ComplexHeatmap','RColorBrewer','circlize','grid', 'scCustomize',
       'SCpubr', 'scales', 'dior', 'SeuratDisk', 'tools', 'rhdf5', 'future','reticulate')

# This function is used for loading h5ad file to seurat v5
convert_h5ad_to_seuratv5 <- function(
    h5ad_path = '',
    output_dir = '',
    prefix_name = '',
    include_all_assays = FALSE,
    save = TRUE,
    verbose = TRUE
) {
  if (!file.exists(h5ad_path)) stop("The specified .h5ad file does not exist.")
  if (!dir.exists(output_dir)) stop("The specified output directory does not exist.")
  if (is.null(prefix_name) || prefix_name == "") stop("The 'prefix_name' argument is missing or empty.")
  
  base_name <- tools::file_path_sans_ext(basename(h5ad_path))
  h5seurat_path <- sub("\\.h5ad$", ".h5seurat", h5ad_path)
  
  if (verbose) cat("Converting .h5ad to .h5seurat...\n")
  Convert(h5ad_path, dest = "h5seurat", overwrite = TRUE, assay = "RNA", filename = h5seurat_path)
  
  if (verbose) cat("Detecting available assays...\n")
  get_available_assays <- function(h5seurat_path) {
    h5_structure <- h5ls(h5seurat_path)
    assay_names <- h5_structure$name[h5_structure$group == "/assays" & h5_structure$otype == "H5I_GROUP"]
    return(assay_names)
  }
  all_assays <- get_available_assays(h5seurat_path)
  
  if (!"RNA" %in% all_assays) stop("RNA assay not found in the h5seurat file.")
  
  if (verbose) cat("Found assays:", paste(all_assays, collapse = ", "), "\n")
  
  # Load RNA assay as base object
  seurat_obj <- LoadH5Seurat(h5seurat_path, assays = "RNA")
  
  # Add additional assays if requested
  if (include_all_assays) {
    other_assays <- setdiff(all_assays, "RNA")
    for (assay_name in other_assays) {
      if (verbose) cat("Loading additional assay:", assay_name, "\n")
      temp_obj <- LoadH5Seurat(h5seurat_path, assays = assay_name)
      assay_data <- temp_obj[[assay_name]]
      # Detect naming conflict
      new_assay_name <- assay_name
      if (assay_name %in% Assays(seurat_obj)) {
        new_assay_name <- paste0(assay_name, "_raw")
        if (verbose) cat("Assay name conflict detected. Renaming", assay_name, "to", new_assay_name, "\n")
      }
      seurat_obj[[new_assay_name]] <- assay_data
    }
  }
  
  # Update object and convert assays to Assay5
  if (verbose) cat("Converting assays to Seurat v5 Assay5 format...\n")
  seurat_obj <- UpdateSeuratObject(seurat_obj)
  for (assay in names(seurat_obj@assays)) {
    seurat_obj[[assay]] <- as(seurat_obj[[assay]], Class = "Assay5")
  }
  
  if ("RNA" %in% names(seurat_obj@assays)) {
    DefaultAssay(seurat_obj) <- "RNA"
  }
  
  # Save if requested
  if (save) {
    v5_rds_path <- file.path(output_dir, paste0(prefix_name, "_v5.rds"))
    saveRDS(seurat_obj, v5_rds_path)
    if (verbose) cat("Saved Seurat v5 object to:", v5_rds_path, "\n")
  }
  
  if (verbose) cat("Conversion complete. Returning Seurat v5 object.\n")
  
  if (file.exists(h5seurat_path)) {
    if (verbose) cat("Removing temporary file:", h5seurat_path, "\n")
    file.remove(h5seurat_path)
  }
  
  return(seurat_obj)
}

# This function is used for convert seurat v5 to h5ad
convert_seuratv5_to_anndata <- function(condaenv_env, seurat_object, file_path, file_name) {
  reticulate::use_condaenv(condaenv_env, required = TRUE)
  reticulate::py_config()
  seurat_object %>%
    as.anndata(file_path = file_path, file_name = file_name)
  message(paste("The Seurat object has been successfully converted and saved to", file_path, file_name))
}



data_QC <- function(x, 
                    create_obj = TRUE,
                    min_cells = 3, 
                    min_features = 150, 
                    project_name, 
                    fig.dir = "./Seurat/fig",
                    rename_sample = TRUE, 
                    sample_label,
                    tissue) {
  
  ## Ensure the figure directory exists
  if (!dir.exists(fig.dir)) {
    stop("Figure directory does not exist! Please create it before running the function.\n")
  }
  
  ## Check whether to create a Seurat object
  if (create_obj) {
    if ("Gene Expression" %in% names(x)) {
      obj <- CreateSeuratObject(counts = x[["Gene Expression"]], min.cells = min_cells, min.features = min_features, project = project_name)
      if ("Antibody Capture" %in% names(x)) {
        ADT_Matrix <- x[["Antibody Capture"]]
        obj[["ADT"]] <- CreateAssayObject(ADT_Matrix[,colnames(obj)])
        obj <- NormalizeData(obj, normalization.method = "CLR", margin = 2, assay = "ADT")
      }
    } else {
      obj <- CreateSeuratObject(counts = x, min.cells = min_cells, min.features = min_features, project = project_name)
    }
    cat("Seurat object is created\n")
  } else {
    obj <- x
  }
  
  ## Set default assay to RNA
  DefaultAssay(obj) <- "RNA"
  
  ## Rename samples if required
  if (rename_sample) {
    obj <- RenameCells(object = obj, add.cell.id = sample_label)
    obj@meta.data$sample_id <- sample_label
    obj@meta.data$tissue <- tissue
    obj@meta.data$barcode <- rownames(obj@meta.data)
  }
  
  ## Perform QC analysis
  obj@meta.data$orig.ident <- project_name
  Idents(obj) <- "orig.ident"
  
  obj[["percent.mt"]] <- PercentageFeatureSet(obj, pattern = "^MT-") 
  obj[["percent.rbp"]] <- PercentageFeatureSet(obj, pattern = "^RP[SL]")
  obj[["percent.hb"]] <- PercentageFeatureSet(obj, pattern = "^HB[ABG]")
  
  p1 <- VlnPlot(obj, features = c("nFeature_RNA", "nCount_RNA", "percent.mt", "percent.rbp", "percent.hb"), log = TRUE, ncol = 5)
  p2 <- SCpubr::do_ViolinPlot(sample = obj,
                              features = c("nFeature_RNA", "nCount_RNA", "percent.mt", "percent.rbp", "percent.hb"),
                              ncol = 5)
  
  ## Save QC plot
  qc_file <- file.path(fig.dir, paste0(sample_label, "_cellqc.pdf"))
  ggsave(qc_file, wrap_plots(p1, p2, ncol = 1), width = 10, height = 8)   
  
  cat("QC plot is saved.\n")
  return(obj)
}

