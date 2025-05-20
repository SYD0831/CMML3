# CMML3
This repository houses the source code and comprehensive documentation for the CMML3 course.

# ICA2 – Batch Correction and Integration Benchmark

This `ICA2-Batch_correction-Scanorama` folder contains the source code, analysis notebooks, and supporting materials for **ICA 2**, part of the CMML3 course. The project focuses on benchmarking embedding-based integration methods for single-cell RNA-seq data, with a focus on both batch correction and biological signal preservation.

##  Folder Structure
ICA2-Batch_correction-Scanorama/
├── Notebook/
│ ├── 1-Data_preprocessing.ipynb
│ ├── 2-Integrate_harmony_scanorama_scVI.ipynb
│ ├── 3-Integrate_seurat_cca_rpca_visualization.ipynb
│ ├── 4-Benchmark_Scanorama_harmony_scVI_cca_rpca.ipynb
│ ├── 5-Cross_species.ipynb
│ ├── S1-Scanorama_pipeline_validation.ipynb
│ ├── S2-Scanorama-pbmc.ipynb
│ └── Seurat_Function.R
├── Documentation of supporting materials.pdf


## Methods Overview

- **Preprocessing**: All datasets were normalized and log-transformed using the general preprocessing pipeline from OmicVerse (`log₁₀(x + 1)`).
- **Feature Selection**: 2,000 highly variable genes were selected by intersecting genes detected as highly variable in more than two batches.
- **Integration Methods**: Five methods were benchmarked — Scanorama, Harmony, scVI, Seurat CCA, and Seurat RPCA — using default settings from papers or tutorials.
- **Evaluation Metrics**: Following [scIB](https://github.com/theislab/scib), metrics were grouped into:
  - *Batch effect removal*: iLISI, Silhouette (batch), graph connectivity, PCR.
  - *Biological conservation*: NMI, ARI, cLISI, Silhouette (label).
- **Clustering Stability**: Evaluated using bootstrap resampling and Jaccard similarity across 100 iterations.
- **Dimensionality & Visualization**: PCA and UMAP were computed using 30 components; all visualizations were generated in R with base plotting and `ggplot2`.

## Results Summary

Each method was applied to the same input features and evaluated using consistent metrics and embedding dimensions to ensure fair comparison. For detailed results and figures, refer to the Jupyter notebooks under `/Notebook`.

##  Supporting Files

- `Documentation of supporting materials.pdf`: Summary of datasets and methods.

## Author

Shenyu
ICA 2 Submission, CMML3 Course

