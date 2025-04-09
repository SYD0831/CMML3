<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.44 (Build 295) (http://www.copasi.org) at 2025-04-09T04:04:09Z -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="44" versionDevel="295" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_13" name="Mass action (irreversible)" type="MassAction" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
   <rdf:Description rdf:about="#Function_13">
   <CopasiMT:is rdf:resource="urn:miriam:obo.sbo:SBO:0000163" />
   </rdf:Description>
   </rdf:RDF>
      </MiriamAnnotation>
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
<b>Mass action rate law for irreversible reactions</b>
<p>
Reaction scheme where the products are created from the reactants and the change of a product quantity is proportional to the product of reactant activities. The reaction scheme does not include any reverse process that creates the reactants from the products. The change of a product quantity is proportional to the quantity of one reactant.
</p>
</body>
      </Comment>
      <Expression>
        k1*PRODUCT&lt;substrate_i>
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_80" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_81" name="substrate" order="1" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_14" name="Mass action (reversible)" type="MassAction" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
   <rdf:Description rdf:about="#Function_14">
   <CopasiMT:is rdf:resource="urn:miriam:obo.sbo:SBO:0000042" />
   </rdf:Description>
   </rdf:RDF>
      </MiriamAnnotation>
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
<b>Mass action rate law for reversible reactions</b>
<p>
Reaction scheme where the products are created from the reactants and the change of a product quantity is proportional to the product of reactant activities. The reaction scheme does include a reverse process that creates the reactants from the products.
</p>
</body>
      </Comment>
      <Expression>
        k1*PRODUCT&lt;substrate_i>-k2*PRODUCT&lt;product_j>
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_69" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_68" name="substrate" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_78" name="k2" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_79" name="product" order="3" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_0" name="Oxygen Binding to Hemoglobin" simulationType="time" timeUnit="s" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="µmol" type="deterministic" avogadroConstant="6.0221407599999999e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Model_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2025-03-04T01:29:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <ListOfCompartments>
      <Compartment key="Compartment_1" name="Normal_lung" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Compartment_1">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_2" name="CO_lung" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Compartment_2">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_8" name="Hb" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_8">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_9" name="HbO2" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_9">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_10" name="HbO22" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_10">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_11" name="HbO23" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_11">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_12" name="HbO24" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_12">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_13" name="O2" simulationType="assignment" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_13">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[alpha_O2],Reference=InitialValue>*&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[PO2],Reference=InitialValue>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_14" name="Hb" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_14">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_15" name="HbO2" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_15">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_16" name="HbO22" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_16">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_17" name="HbO23" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_17">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_18" name="HbO24" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_18">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_19" name="O2" simulationType="assignment" compartment="Compartment_2" addNoise="false">
        <Expression>
          &lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[alpha_O2],Reference=InitialValue>*&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[PO2],Reference=InitialValue>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_20" name="CO" simulationType="assignment" compartment="Compartment_2" addNoise="false">
        <Expression>
          &lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[PCO],Reference=InitialValue>*&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[alpha_CO],Reference=InitialValue>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_21" name="HbCO" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_21">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_22" name="HbCOO2" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_22">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_23" name="HbCOO22" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_23">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_24" name="HbCOO23" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_24">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_19" name="Relative_Saturation_calculate" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_19">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Normal_lung],Vector=Metabolites[HbO2],Reference=Concentration>+2*&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Normal_lung],Vector=Metabolites[HbO22],Reference=Concentration>+3*&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Normal_lung],Vector=Metabolites[HbO23],Reference=Concentration>+4*&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Normal_lung],Vector=Metabolites[HbO24],Reference=Concentration>)/(4*(&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Normal_lung],Vector=Metabolites[Hb],Reference=Concentration>+&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Normal_lung],Vector=Metabolites[HbO2],Reference=Concentration>+&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Normal_lung],Vector=Metabolites[HbO22],Reference=Concentration>+&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Normal_lung],Vector=Metabolites[HbO23],Reference=Concentration>+&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Normal_lung],Vector=Metabolites[HbO24],Reference=Concentration>))
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_20" name="Relative_Saturation_hill_KA" simulationType="assignment" addNoise="false">
        <Expression>
          (&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Normal_lung],Vector=Metabolites[O2],Reference=InitialConcentration>/&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[KA_hemoglobin_oxygen],Reference=InitialValue>)^&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[Hill_nH],Reference=InitialValue>/(1+(&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Normal_lung],Vector=Metabolites[O2],Reference=InitialConcentration>/&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[KA_hemoglobin_oxygen],Reference=InitialValue>)^&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[Hill_nH],Reference=InitialValue>)
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_21" name="Hill_nH" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_21">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_22" name="KA_hemoglobin_oxygen" simulationType="fixed" addNoise="false">
        <Unit>
          umol
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_23" name="Kd_hemoglobin_oxygen" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_23">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[KA_hemoglobin_oxygen],Reference=InitialValue>^&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[Hill_nH],Reference=InitialValue>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_24" name="Relative_Saturation_hill_Kd" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_24">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Normal_lung],Vector=Metabolites[O2],Reference=InitialConcentration>^&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[Hill_nH],Reference=InitialValue>/(&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[Kd_hemoglobin_oxygen],Reference=InitialValue>+&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Normal_lung],Vector=Metabolites[O2],Reference=InitialConcentration>^&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[Hill_nH],Reference=InitialValue>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_25" name="alpha_O2" simulationType="fixed" addNoise="false">
        <Unit>
          µmol/(l * mmHg)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_26" name="PO2" simulationType="fixed" addNoise="false">
        <Unit>
          mmHg
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_27" name="a" simulationType="assignment" addNoise="false">
        <Expression>
          &lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R1],ParameterGroup=Parameters,Parameter=k1,Reference=Value>
        </Expression>
        <Unit>
          1/(umol/l)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_28" name="b" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_28">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R1],ParameterGroup=Parameters,Parameter=k1,Reference=Value>*&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R2],ParameterGroup=Parameters,Parameter=k1,Reference=Value>
        </Expression>
        <Unit>
          1/(umol/l)^2
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_29" name="c" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_29">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R1],ParameterGroup=Parameters,Parameter=k1,Reference=Value>*&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R2],ParameterGroup=Parameters,Parameter=k1,Reference=Value>*&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R3],ParameterGroup=Parameters,Parameter=k1,Reference=Value>
        </Expression>
        <Unit>
          1/(umol/l)^3
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_30" name="d" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_30">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R1],ParameterGroup=Parameters,Parameter=k1,Reference=Value>*&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R2],ParameterGroup=Parameters,Parameter=k1,Reference=Value>*&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R3],ParameterGroup=Parameters,Parameter=k1,Reference=Value>*&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R4],ParameterGroup=Parameters,Parameter=k1,Reference=Value>
        </Expression>
        <Unit>
          1/(umol/l)^4
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_31" name="Saturation_O2_normal" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_31">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[a],Reference=InitialValue>*&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Normal_lung],Vector=Metabolites[O2],Reference=InitialConcentration>+2*&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[b],Reference=InitialValue>*&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Normal_lung],Vector=Metabolites[O2],Reference=InitialConcentration>^2+3*&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[c],Reference=InitialValue>*&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Normal_lung],Vector=Metabolites[O2],Reference=InitialConcentration>^3+4*&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[d],Reference=InitialValue>*&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Normal_lung],Vector=Metabolites[O2],Reference=InitialConcentration>^4)/(4*(1+&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[a],Reference=InitialValue>*&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Normal_lung],Vector=Metabolites[O2],Reference=InitialConcentration>+&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[b],Reference=InitialValue>*&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Normal_lung],Vector=Metabolites[O2],Reference=InitialConcentration>^2+&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[c],Reference=InitialValue>*&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Normal_lung],Vector=Metabolites[O2],Reference=InitialConcentration>^3+&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[d],Reference=InitialValue>*&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Normal_lung],Vector=Metabolites[O2],Reference=InitialConcentration>^4))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_32" name="COHb_percent" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_32">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[CO_lung],Vector=Metabolites[HbCO],Reference=Concentration>+&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[CO_lung],Vector=Metabolites[HbCOO2],Reference=Concentration>+&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[CO_lung],Vector=Metabolites[HbCOO22],Reference=Concentration>+&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[CO_lung],Vector=Metabolites[HbCOO23],Reference=Concentration>)/(&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[CO_lung],Vector=Metabolites[Hb],Reference=Concentration>+&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[CO_lung],Vector=Metabolites[HbCO],Reference=Concentration>+&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[CO_lung],Vector=Metabolites[HbCOO2],Reference=Concentration>+&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[CO_lung],Vector=Metabolites[HbCOO22],Reference=Concentration>+&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[CO_lung],Vector=Metabolites[HbCOO23],Reference=Concentration>+&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[CO_lung],Vector=Metabolites[HbO2],Reference=Concentration>+&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[CO_lung],Vector=Metabolites[HbO22],Reference=Concentration>+&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[CO_lung],Vector=Metabolites[HbO23],Reference=Concentration>+&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[CO_lung],Vector=Metabolites[HbO24],Reference=Concentration>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_33" name="alpha_CO" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_33">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          µmol/(l * mmHg)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_34" name="PCO" simulationType="fixed" addNoise="false">
        <Unit>
          mmHg
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_35" name="Saturation_O2_copart" simulationType="assignment" addNoise="false">
        <Expression>
          (&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[a],Reference=InitialValue>*&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[CO_lung],Vector=Metabolites[O2],Reference=InitialConcentration>+2*&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[b],Reference=InitialValue>*&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[CO_lung],Vector=Metabolites[O2],Reference=InitialConcentration>^2+3*&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[c],Reference=InitialValue>*&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[CO_lung],Vector=Metabolites[O2],Reference=InitialConcentration>^3+4*&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[d],Reference=InitialValue>*&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[CO_lung],Vector=Metabolites[O2],Reference=InitialConcentration>^4+&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R1_co],ParameterGroup=Parameters,Parameter=k1,Reference=Value>*&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R6_co],ParameterGroup=Parameters,Parameter=k1,Reference=Value>*&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[CO_lung],Vector=Metabolites[O2],Reference=InitialConcentration>*&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[CO_lung],Vector=Metabolites[CO],Reference=InitialConcentration>+2*&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R1_co],ParameterGroup=Parameters,Parameter=k1,Reference=Value>*&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R2_co],ParameterGroup=Parameters,Parameter=k1,Reference=Value>*&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R7_co],ParameterGroup=Parameters,Parameter=k1,Reference=Value>*&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[CO_lung],Vector=Metabolites[O2],Reference=InitialConcentration>^2*&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[CO_lung],Vector=Metabolites[CO],Reference=InitialConcentration>+3*&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R1_co],ParameterGroup=Parameters,Parameter=k1,Reference=Value>*&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R2_co],ParameterGroup=Parameters,Parameter=k1,Reference=Value>*&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R3_co],ParameterGroup=Parameters,Parameter=k1,Reference=Value>*&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R8_co],ParameterGroup=Parameters,Parameter=k1,Reference=Value>*&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[CO_lung],Vector=Metabolites[O2],Reference=InitialConcentration>^3*&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[CO_lung],Vector=Metabolites[CO],Reference=InitialConcentration>)/(4*(1+&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[a],Reference=InitialValue>*&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[CO_lung],Vector=Metabolites[O2],Reference=InitialConcentration>+&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[b],Reference=InitialValue>*&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[CO_lung],Vector=Metabolites[O2],Reference=InitialConcentration>^2+&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[c],Reference=InitialValue>*&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[CO_lung],Vector=Metabolites[O2],Reference=InitialConcentration>^3+&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[d],Reference=InitialValue>*&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[CO_lung],Vector=Metabolites[O2],Reference=InitialConcentration>^4+&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[e],Reference=InitialValue>*&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[CO_lung],Vector=Metabolites[CO],Reference=InitialConcentration>+&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R1_co],ParameterGroup=Parameters,Parameter=k1,Reference=Value>*&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R6_co],ParameterGroup=Parameters,Parameter=k1,Reference=Value>*&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[CO_lung],Vector=Metabolites[O2],Reference=InitialConcentration>*&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[CO_lung],Vector=Metabolites[CO],Reference=InitialConcentration>+&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R1_co],ParameterGroup=Parameters,Parameter=k1,Reference=Value>*&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R2_co],ParameterGroup=Parameters,Parameter=k1,Reference=Value>*&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R7_co],ParameterGroup=Parameters,Parameter=k1,Reference=Value>*&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[CO_lung],Vector=Metabolites[O2],Reference=InitialConcentration>^2*&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[CO_lung],Vector=Metabolites[CO],Reference=InitialConcentration>+&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R1_co],ParameterGroup=Parameters,Parameter=k1,Reference=Value>*&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R2_co],ParameterGroup=Parameters,Parameter=k1,Reference=Value>*&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R3_co],ParameterGroup=Parameters,Parameter=k1,Reference=Value>*&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R8_co],ParameterGroup=Parameters,Parameter=k1,Reference=Value>*&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[CO_lung],Vector=Metabolites[O2],Reference=InitialConcentration>^3*&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[CO_lung],Vector=Metabolites[CO],Reference=InitialConcentration>))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_36" name="e" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_36">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R5_co],ParameterGroup=Parameters,Parameter=k1,Reference=Value>
        </Expression>
        <Unit>
          1/(umol/l)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_37" name="f" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_37">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R5_co],ParameterGroup=Parameters,Parameter=k1,Reference=Value>*&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R6_co],ParameterGroup=Parameters,Parameter=k1,Reference=Value>
        </Expression>
        <Unit>
          1/(umol/l)^2
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_38" name="g" simulationType="assignment" addNoise="false">
        <Expression>
          &lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R5_co],ParameterGroup=Parameters,Parameter=k1,Reference=Value>*&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R6_co],ParameterGroup=Parameters,Parameter=k1,Reference=Value>*&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R7_co],ParameterGroup=Parameters,Parameter=k1,Reference=Value>
        </Expression>
        <Unit>
          1/(umol/l)^3
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_39" name="h" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_39">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R5_co],ParameterGroup=Parameters,Parameter=k1,Reference=Value>*&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R6_co],ParameterGroup=Parameters,Parameter=k1,Reference=Value>*&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R7_co],ParameterGroup=Parameters,Parameter=k1,Reference=Value>*&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R8_co],ParameterGroup=Parameters,Parameter=k1,Reference=Value>
        </Expression>
        <Unit>
          1/(umol/l)^3
        </Unit>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_4" name="R1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_4">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_204" name="k1" value="0.0133563"/>
          <Constant key="Parameter_206" name="k2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Normal_lung]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_204"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_8"/>
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_206"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="R2" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_5">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_207" name="k1" value="0.0227233"/>
          <Constant key="Parameter_203" name="k2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Normal_lung]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_207"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_9"/>
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_203"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="R3" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_6">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_205" name="k1" value="0.0166738"/>
          <Constant key="Parameter_202" name="k2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Normal_lung]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_205"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_10"/>
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_202"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="R4" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_7">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_201" name="k1" value="0.143874"/>
          <Constant key="Parameter_197" name="k2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Normal_lung]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_201"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_11"/>
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_197"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="R2_co" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_129" name="k1" value="0.0227233"/>
          <Constant key="Parameter_125" name="k2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[CO_lung]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_129"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_15"/>
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_125"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_9" name="R3_co" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_16" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_200" name="k1" value="0.0166738"/>
          <Constant key="Parameter_198" name="k2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[CO_lung]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_200"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_16"/>
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_198"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_10" name="R4_co" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_17" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_199" name="k1" value="0.143874"/>
          <Constant key="Parameter_83" name="k2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[CO_lung]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_199"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_17"/>
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_83"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_11" name="R1_co" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_14" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_128" name="k1" value="0.0133563"/>
          <Constant key="Parameter_127" name="k2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[CO_lung]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_128"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_14"/>
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_127"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_12" name="R5_co" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_14" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_111" name="k1" value="3.125"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[CO_lung]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_111"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_14"/>
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_13" name="R6_co" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_90" name="k1" value="4.6"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[CO_lung]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_90"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_15"/>
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_14" name="R7_co" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_16" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_104" name="k1" value="3.68"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[CO_lung]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_104"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_16"/>
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_15" name="R8_co" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_17" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_130" name="k1" value="32"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[CO_lung]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_130"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_17"/>
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfModelParameterSets activeSet="ModelParameterSet_0">
      <ModelParameterSet key="ModelParameterSet_0" name="Initial State">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_0">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Normal_lung]" value="9.9999999999999998e-13" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[CO_lung]" value="9.9999999999999998e-13" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Normal_lung],Vector=Metabolites[Hb]" value="1385092374.8" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Normal_lung],Vector=Metabolites[HbO2]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Normal_lung],Vector=Metabolites[HbO22]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Normal_lung],Vector=Metabolites[HbO23]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Normal_lung],Vector=Metabolites[HbO24]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Normal_lung],Vector=Metabolites[O2]" value="78287829.879999995" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[CO_lung],Vector=Metabolites[Hb]" value="1385092374.8" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[CO_lung],Vector=Metabolites[HbO2]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[CO_lung],Vector=Metabolites[HbO22]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[CO_lung],Vector=Metabolites[HbO23]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[CO_lung],Vector=Metabolites[HbO24]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[CO_lung],Vector=Metabolites[O2]" value="78287829.879999995" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[CO_lung],Vector=Metabolites[CO]" value="33362659.810400002" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[CO_lung],Vector=Metabolites[HbCO]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[CO_lung],Vector=Metabolites[HbCOO2]" value="602214.076" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[CO_lung],Vector=Metabolites[HbCOO22]" value="602214.076" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[CO_lung],Vector=Metabolites[HbCOO23]" value="602214.076" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[Relative_Saturation_calculate]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[Relative_Saturation_hill_KA]" value="0.96245013071103303" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[Hill_nH]" value="2.7000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[KA_hemoglobin_oxygen]" value="39.100000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[Kd_hemoglobin_oxygen]" value="19901.107469078357" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[Relative_Saturation_hill_Kd]" value="0.96245013071103303" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[alpha_O2]" value="1.3" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[PO2]" value="100" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[a]" value="0.0133563" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[b]" value="0.00030349921178999997" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[c]" value="5.0604851575441013e-06" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[d]" value="7.2807224155650007e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[Saturation_O2_normal]" value="0.96630527203926753" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[COHb_percent]" value="0.0013026487190620929" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[alpha_CO]" value="554" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[PCO]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[Saturation_O2_copart]" value="0.72391326482251739" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[e]" value="3.125" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[f]" value="14.374999999999998" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[g]" value="52.899999999999999" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[h]" value="1692.8" type="ModelValue" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R1],ParameterGroup=Parameters,Parameter=k1" value="0.0133563" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R1],ParameterGroup=Parameters,Parameter=k2" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R2],ParameterGroup=Parameters,Parameter=k1" value="0.022723299999999998" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R2],ParameterGroup=Parameters,Parameter=k2" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R3]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R3],ParameterGroup=Parameters,Parameter=k1" value="0.016673799999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R3],ParameterGroup=Parameters,Parameter=k2" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R4]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R4],ParameterGroup=Parameters,Parameter=k1" value="0.143874" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R4],ParameterGroup=Parameters,Parameter=k2" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R2_co]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R2_co],ParameterGroup=Parameters,Parameter=k1" value="0.022723299999999998" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R2_co],ParameterGroup=Parameters,Parameter=k2" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R3_co]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R3_co],ParameterGroup=Parameters,Parameter=k1" value="0.016673799999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R3_co],ParameterGroup=Parameters,Parameter=k2" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R4_co]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R4_co],ParameterGroup=Parameters,Parameter=k1" value="0.143874" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R4_co],ParameterGroup=Parameters,Parameter=k2" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R1_co]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R1_co],ParameterGroup=Parameters,Parameter=k1" value="0.0133563" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R1_co],ParameterGroup=Parameters,Parameter=k2" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R5_co]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R5_co],ParameterGroup=Parameters,Parameter=k1" value="3.125" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R6_co]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R6_co],ParameterGroup=Parameters,Parameter=k1" value="4.5999999999999996" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R7_co]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R7_co],ParameterGroup=Parameters,Parameter=k1" value="3.6800000000000002" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R8_co]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R8_co],ParameterGroup=Parameters,Parameter=k1" value="32" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_5" name="PE: 2025-04-06T02:16:19Z Exp: Original">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_5">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Normal_lung]" value="9.9999999999999998e-13" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Normal_lung],Vector=Metabolites[Hb]" value="1385092374.8" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Normal_lung],Vector=Metabolites[HbO2]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Normal_lung],Vector=Metabolites[HbO22]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Normal_lung],Vector=Metabolites[HbO23]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Normal_lung],Vector=Metabolites[HbO24]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Normal_lung],Vector=Metabolites[O2]" value="21137714.067600001" type="Species" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[Relative_Saturation_calculate]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[Relative_Saturation_hill_KA]" value="0.42766419149706059" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[Hill_nH]" value="2.7000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[KA_hemoglobin_oxygen]" value="39.100000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[Kd_hemoglobin_oxygen]" value="19901.107469078357" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[Relative_Saturation_hill_Kd]" value="0.42766419149706059" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[alpha_O2]" value="1.3" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[PO2]" value="27" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[a]" value="0.9919" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[b]" value="239.0479" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[c]" value="1033882.1675" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[d]" value="1501196907.21" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[Saturation_O2_normal]" value="0.99999509472367532" type="ModelValue" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R1],ParameterGroup=Parameters,Parameter=k1" value="0.9919" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R1],ParameterGroup=Parameters,Parameter=k2" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R2],ParameterGroup=Parameters,Parameter=k1" value="241" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R2],ParameterGroup=Parameters,Parameter=k2" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R3]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R3],ParameterGroup=Parameters,Parameter=k1" value="4325" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R3],ParameterGroup=Parameters,Parameter=k2" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R4]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R4],ParameterGroup=Parameters,Parameter=k1" value="1452" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R4],ParameterGroup=Parameters,Parameter=k2" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_6" name="PE: 2025-04-06T02:16:19Z Exp: Experiment">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_6">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Normal_lung]" value="9.9999999999999998e-13" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Normal_lung],Vector=Metabolites[Hb]" value="1385092374.8" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Normal_lung],Vector=Metabolites[HbO2]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Normal_lung],Vector=Metabolites[HbO22]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Normal_lung],Vector=Metabolites[HbO23]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Normal_lung],Vector=Metabolites[HbO24]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Normal_lung],Vector=Metabolites[O2]" value="21137714.067600001" type="Species" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[Relative_Saturation_calculate]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[Relative_Saturation_hill_KA]" value="0.42766419149706059" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[Hill_nH]" value="2.7000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[KA_hemoglobin_oxygen]" value="39.100000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[Kd_hemoglobin_oxygen]" value="19901.107469078357" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[Relative_Saturation_hill_Kd]" value="0.42766419149706059" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[alpha_O2]" value="1.3" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[PO2]" value="27" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[a]" value="0.013356325418138517" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[b]" value="0.0003034993513439788" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[c]" value="5.0604723294403021e-06" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[d]" value="7.2806860893739348e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[Saturation_O2_normal]" value="0.49685959074651775" type="ModelValue" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R1],ParameterGroup=Parameters,Parameter=k1" value="0.013356325420000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R1],ParameterGroup=Parameters,Parameter=k2" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R2],ParameterGroup=Parameters,Parameter=k1" value="0.022723267204302497" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R2],ParameterGroup=Parameters,Parameter=k2" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R3]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R3],ParameterGroup=Parameters,Parameter=k1" value="0.016673750065794656" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R3],ParameterGroup=Parameters,Parameter=k2" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R4]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R4],ParameterGroup=Parameters,Parameter=k1" value="0.14387364687318016" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R4],ParameterGroup=Parameters,Parameter=k2" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_0"/>
      <StateTemplateVariable objectReference="Metabolite_15"/>
      <StateTemplateVariable objectReference="Metabolite_17"/>
      <StateTemplateVariable objectReference="Metabolite_16"/>
      <StateTemplateVariable objectReference="Metabolite_11"/>
      <StateTemplateVariable objectReference="Metabolite_9"/>
      <StateTemplateVariable objectReference="Metabolite_14"/>
      <StateTemplateVariable objectReference="Metabolite_10"/>
      <StateTemplateVariable objectReference="Metabolite_18"/>
      <StateTemplateVariable objectReference="Metabolite_22"/>
      <StateTemplateVariable objectReference="Metabolite_23"/>
      <StateTemplateVariable objectReference="Metabolite_12"/>
      <StateTemplateVariable objectReference="Metabolite_21"/>
      <StateTemplateVariable objectReference="Metabolite_8"/>
      <StateTemplateVariable objectReference="Metabolite_24"/>
      <StateTemplateVariable objectReference="Metabolite_13"/>
      <StateTemplateVariable objectReference="Metabolite_19"/>
      <StateTemplateVariable objectReference="Metabolite_20"/>
      <StateTemplateVariable objectReference="ModelValue_19"/>
      <StateTemplateVariable objectReference="ModelValue_20"/>
      <StateTemplateVariable objectReference="ModelValue_23"/>
      <StateTemplateVariable objectReference="ModelValue_24"/>
      <StateTemplateVariable objectReference="ModelValue_27"/>
      <StateTemplateVariable objectReference="ModelValue_28"/>
      <StateTemplateVariable objectReference="ModelValue_29"/>
      <StateTemplateVariable objectReference="ModelValue_30"/>
      <StateTemplateVariable objectReference="ModelValue_31"/>
      <StateTemplateVariable objectReference="ModelValue_32"/>
      <StateTemplateVariable objectReference="ModelValue_35"/>
      <StateTemplateVariable objectReference="ModelValue_36"/>
      <StateTemplateVariable objectReference="ModelValue_37"/>
      <StateTemplateVariable objectReference="ModelValue_38"/>
      <StateTemplateVariable objectReference="ModelValue_39"/>
      <StateTemplateVariable objectReference="Compartment_1"/>
      <StateTemplateVariable objectReference="Compartment_2"/>
      <StateTemplateVariable objectReference="ModelValue_21"/>
      <StateTemplateVariable objectReference="ModelValue_22"/>
      <StateTemplateVariable objectReference="ModelValue_25"/>
      <StateTemplateVariable objectReference="ModelValue_26"/>
      <StateTemplateVariable objectReference="ModelValue_33"/>
      <StateTemplateVariable objectReference="ModelValue_34"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 0 0 0 0 0 1385092374.8 0 0 602214.076 602214.076 0 0 1385092374.8 602214.076 78287829.879999995 78287829.879999995 33362659.810400002 0 0.96245013071103303 19901.107469078357 0.96245013071103303 0.0133563 0.00030349921178999997 5.0604851575441013e-06 7.2807224155650007e-07 0.96630527203926753 0.0013026487190620929 0.72391326482251739 3.125 14.374999999999998 52.899999999999999 1692.8 9.9999999999999998e-13 9.9999999999999998e-13 2.7000000000000002 39.100000000000001 1.3 100 554 0.10000000000000001 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_13" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
      <Report reference="Report_10" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="JacobianRequested" type="bool" value="1"/>
        <Parameter name="StabilityAnalysisRequested" type="bool" value="1"/>
      </Problem>
      <Method name="Enhanced Newton" type="EnhancedNewton">
        <Parameter name="Resolution" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Derivation Factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Use Newton" type="bool" value="1"/>
        <Parameter name="Use Integration" type="bool" value="1"/>
        <Parameter name="Use Back Integration" type="bool" value="0"/>
        <Parameter name="Accept Negative Concentrations" type="bool" value="0"/>
        <Parameter name="Iteration Limit" type="unsignedInteger" value="50"/>
        <Parameter name="Maximum duration for forward integration" type="unsignedFloat" value="1000000000"/>
        <Parameter name="Maximum duration for backward integration" type="unsignedFloat" value="1000000"/>
        <Parameter name="Target Criterion" type="string" value="Distance and Rate"/>
      </Method>
    </Task>
    <Task key="Task_12" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Report reference="Report_9" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.001"/>
        <Parameter name="Duration" type="float" value="0.10000000000000001"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="Use Values" type="bool" value="0"/>
        <Parameter name="Values" type="string" value=""/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="100000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_11" name="Scan" type="scan" scheduled="true" updateModel="true">
      <Problem>
        <Parameter name="Subtask" type="unsignedInteger" value="1"/>
        <ParameterGroup name="ScanItems">
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="7"/>
            <Parameter name="Type" type="unsignedInteger" value="1"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[PCO],Reference=InitialValue"/>
            <Parameter name="Minimum" type="float" value="1.0000000000000001e-05"/>
            <Parameter name="Maximum" type="float" value="1"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Values" type="string" value="0.1"/>
            <Parameter name="Use Values" type="bool" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="2000"/>
            <Parameter name="Type" type="unsignedInteger" value="1"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[PO2],Reference=InitialValue"/>
            <Parameter name="Minimum" type="float" value="0"/>
            <Parameter name="Maximum" type="float" value="120"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Values" type="string" value=""/>
            <Parameter name="Use Values" type="bool" value="0"/>
          </ParameterGroup>
        </ParameterGroup>
        <Parameter name="Subtask Output" type="string" value="subTaskDuring"/>
        <Parameter name="Adjust initial conditions" type="bool" value="0"/>
        <Parameter name="Continue on Error" type="bool" value="0"/>
      </Problem>
      <Method name="Scan Framework" type="ScanFramework">
      </Method>
    </Task>
    <Task key="Task_10" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_8" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_9" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_7" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Subtask" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <ParameterText name="ObjectiveExpression" type="expression">
          
        </ParameterText>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="0"/>
        <Parameter name="Calculate Statistics" type="bool" value="1"/>
        <ParameterGroup name="OptimizationItemList">
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
      </Problem>
      <Method name="Random Search" type="RandomSearch">
        <Parameter name="Log Verbosity" type="unsignedInteger" value="0"/>
        <Parameter name="Number of Iterations" type="unsignedInteger" value="100000"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_8" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="false">
      <Report reference="Report_6" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="1"/>
        <Parameter name="Calculate Statistics" type="bool" value="1"/>
        <ParameterGroup name="OptimizationItemList">
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R6_co],ParameterGroup=Parameters,Parameter=k1,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="0.000001"/>
            <Parameter name="UpperBound" type="cn" value="1"/>
            <Parameter name="StartValue" type="float" value="0.033114624799999999"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R7_co],ParameterGroup=Parameters,Parameter=k1,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="0.000001"/>
            <Parameter name="UpperBound" type="cn" value="1"/>
            <Parameter name="StartValue" type="float" value="0.052879987317104436"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R8_co],ParameterGroup=Parameters,Parameter=k1,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="0.000001"/>
            <Parameter name="UpperBound" type="cn" value="1"/>
            <Parameter name="StartValue" type="float" value="0.3200528547587228"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
        <Parameter name="Steady-State" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <Parameter name="Time-Course" type="cn" value="CN=Root,Vector=TaskList[Time-Course]"/>
        <Parameter name="Create Parameter Sets" type="bool" value="0"/>
        <Parameter name="Use Time Sens" type="bool" value="0"/>
        <Parameter name="Time-Sens" type="cn" value=""/>
        <ParameterGroup name="Experiment Set">
          <ParameterGroup name="Experiment_1">
            <Parameter name="Key" type="key" value="Experiment_4"/>
            <Parameter name="File Name" type="file" value="../Undergraduate/CMML3/ICA1-Project3-Model/CO_HbCO_percentage_data.csv"/>
            <Parameter name="First Row" type="unsignedInteger" value="2"/>
            <Parameter name="Last Row" type="unsignedInteger" value="18"/>
            <Parameter name="Experiment Type" type="unsignedInteger" value="0"/>
            <Parameter name="Normalize Weights per Experiment" type="bool" value="1"/>
            <Parameter name="Separator" type="string" value=","/>
            <Parameter name="Weight Method" type="unsignedInteger" value="1"/>
            <Parameter name="Data is Row Oriented" type="bool" value="1"/>
            <Parameter name="Row containing Names" type="unsignedInteger" value="1"/>
            <Parameter name="Number of Columns" type="unsignedInteger" value="2"/>
            <ParameterGroup name="Object Map">
              <ParameterGroup name="0">
                <Parameter name="Role" type="unsignedInteger" value="1"/>
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[PCO],Reference=InitialValue"/>
              </ParameterGroup>
              <ParameterGroup name="1">
                <Parameter name="Role" type="unsignedInteger" value="2"/>
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[COHb_percent],Reference=Value"/>
              </ParameterGroup>
            </ParameterGroup>
          </ParameterGroup>
        </ParameterGroup>
        <ParameterGroup name="Validation Set">
          <Parameter name="Weight" type="unsignedFloat" value="1"/>
          <Parameter name="Threshold" type="unsignedInteger" value="5"/>
        </ParameterGroup>
      </Problem>
      <Method name="Evolutionary Programming" type="EvolutionaryProgram">
        <Parameter name="Log Verbosity" type="unsignedInteger" value="0"/>
        <Parameter name="Number of Generations" type="unsignedInteger" value="200"/>
        <Parameter name="Population Size" type="unsignedInteger" value="10"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
        <Parameter name="Stop after # Stalled Generations" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_7" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_5" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_13"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Use Reder" type="bool" value="1"/>
        <Parameter name="Use Smallbone" type="bool" value="1"/>
      </Method>
    </Task>
    <Task key="Task_6" name="Lyapunov Exponents" type="lyapunovExponents" scheduled="false" updateModel="false">
      <Report reference="Report_4" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="ExponentNumber" type="unsignedInteger" value="3"/>
        <Parameter name="DivergenceRequested" type="bool" value="1"/>
        <Parameter name="TransientTime" type="float" value="0"/>
      </Problem>
      <Method name="Wolf Method" type="WolfMethod">
        <Parameter name="Orthonormalization Interval" type="unsignedFloat" value="1"/>
        <Parameter name="Overall time" type="unsignedFloat" value="1000"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
      </Method>
    </Task>
    <Task key="Task_5" name="Time Scale Separation Analysis" type="timeScaleSeparationAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_3" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
      </Problem>
      <Method name="ILDM (LSODA,Deuflhard)" type="TimeScaleSeparation(ILDM,Deuflhard)">
        <Parameter name="Deuflhard Tolerance" type="unsignedFloat" value="0.0001"/>
      </Method>
    </Task>
    <Task key="Task_16" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_2" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="SubtaskType" type="unsignedInteger" value="1"/>
        <ParameterGroup name="TargetFunctions">
          <Parameter name="SingleObject" type="cn" value=""/>
          <Parameter name="ObjectListType" type="unsignedInteger" value="7"/>
        </ParameterGroup>
        <ParameterGroup name="ListOfVariables">
          <ParameterGroup name="Variables">
            <Parameter name="SingleObject" type="cn" value=""/>
            <Parameter name="ObjectListType" type="unsignedInteger" value="41"/>
          </ParameterGroup>
          <ParameterGroup name="Variables">
            <Parameter name="SingleObject" type="cn" value=""/>
            <Parameter name="ObjectListType" type="unsignedInteger" value="0"/>
          </ParameterGroup>
        </ParameterGroup>
      </Problem>
      <Method name="Sensitivities Method" type="SensitivitiesMethod">
        <Parameter name="Delta factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Delta minimum" type="unsignedFloat" value="9.9999999999999998e-13"/>
      </Method>
    </Task>
    <Task key="Task_15" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Report reference="Report_1" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
    <Task key="Task_4" name="Cross Section" type="crosssection" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="Use Values" type="bool" value="0"/>
        <Parameter name="Values" type="string" value=""/>
        <Parameter name="LimitCrossings" type="bool" value="0"/>
        <Parameter name="NumCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitOutTime" type="bool" value="0"/>
        <Parameter name="LimitOutCrossings" type="bool" value="0"/>
        <Parameter name="PositiveDirection" type="bool" value="1"/>
        <Parameter name="NumOutCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitUntilConvergence" type="bool" value="0"/>
        <Parameter name="ConvergenceTolerance" type="float" value="0"/>
        <Parameter name="Threshold" type="float" value="0"/>
        <Parameter name="DelayOutputUntilConvergence" type="bool" value="0"/>
        <Parameter name="OutputConvergenceTolerance" type="float" value="0"/>
        <ParameterText name="TriggerExpression" type="expression">
          
        </ParameterText>
        <Parameter name="SingleVariable" type="cn" value=""/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="100000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_3" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_0" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_13"/>
      </Problem>
      <Method name="Linear Noise Approximation" type="LinearNoiseApproximation">
      </Method>
    </Task>
    <Task key="Task_2" name="Time-Course Sensitivities" type="timeSensitivities" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="Use Values" type="bool" value="0"/>
        <Parameter name="Values" type="string" value=""/>
        <ParameterGroup name="ListOfParameters">
        </ParameterGroup>
        <ParameterGroup name="ListOfTargets">
        </ParameterGroup>
      </Problem>
      <Method name="LSODA Sensitivities" type="Sensitivities(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
  </ListOfTasks>
  <ListOfReports>
    <Report key="Report_10" name="Steady-State" taskType="steadyState" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Steady-State]"/>
      </Footer>
    </Report>
    <Report key="Report_9" name="Time-Course" taskType="timeCourse" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Time-Course],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Time-Course],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_8" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_7" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Object=Description"/>
        <Object cn="String=\[Function Evaluations\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Value\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Parameters\]"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Function Evaluations"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Best Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Best Parameters"/>
      </Body>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_6" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Object=Description"/>
        <Object cn="String=\[Function Evaluations\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Value\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Parameters\]"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Function Evaluations"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Parameters"/>
      </Body>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_5" name="Metabolic Control Analysis" taskType="metabolicControlAnalysis" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_4" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Lyapunov Exponents],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Lyapunov Exponents],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_3" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_2" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_1" name="Moieties" taskType="moieties" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Moieties],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Moieties],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_0" name="Linear Noise Approximation" taskType="linearNoiseApproximation" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Linear Noise Approximation],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Linear Noise Approximation],Object=Result"/>
      </Footer>
    </Report>
  </ListOfReports>
  <ListOfPlots>
    <PlotSpecification name="Normal_condition_PO2_SO2" type="Plot2D" active="0" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <Parameter name="x axis" type="string" value=""/>
      <Parameter name="y axis" type="string" value=""/>
      <Parameter name="z axis" type="string" value=""/>
      <Parameter name="plot engine" type="string" value="QWT"/>
      <ListOfPlotItems>
        <PlotItem name="Values[Saturation_O2_abcd]|Values[PO2].InitialValue" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="1"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[PO2],Reference=InitialValue"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[Saturation_O2_normal],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Normal_condition_PO2_Distribution_Hb_Species" type="Plot2D" active="0" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <Parameter name="x axis" type="string" value=""/>
      <Parameter name="y axis" type="string" value=""/>
      <Parameter name="z axis" type="string" value=""/>
      <Parameter name="plot engine" type="string" value="QWT"/>
      <ListOfPlotItems>
        <PlotItem name="Values[Saturation_O2_abcd]|Values[PO2].InitialValue" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="1"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[PO2],Reference=InitialValue"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[Saturation_O2_normal],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Hb]|Values[PO2].InitialValue" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[PO2],Reference=InitialValue"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Normal_lung],Vector=Metabolites[Hb],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[HbO2{Normal_lung}]|Values[PO2].InitialValue" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[PO2],Reference=InitialValue"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Normal_lung],Vector=Metabolites[HbO2],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[HbO22{Normal_lung}]|Values[PO2].InitialValue" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[PO2],Reference=InitialValue"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Normal_lung],Vector=Metabolites[HbO22],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[HbO23{Normal_lung}]|Values[PO2].InitialValue" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[PO2],Reference=InitialValue"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Normal_lung],Vector=Metabolites[HbO23],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[HbO24{Normal_lung}]|Values[PO2].InitialValue" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[PO2],Reference=InitialValue"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Normal_lung],Vector=Metabolites[HbO24],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="CO_exposureppm_COHbpercent" type="Plot2D" active="0" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <Parameter name="x axis" type="string" value=""/>
      <Parameter name="y axis" type="string" value=""/>
      <Parameter name="z axis" type="string" value=""/>
      <Parameter name="plot engine" type="string" value="QWT"/>
      <ListOfPlotItems>
        <PlotItem name="Values[COHb_percent]|Values[PCO].InitialValue" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[PCO],Reference=InitialValue"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[COHb_percent],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="CO_exposureppm_SO2" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <Parameter name="x axis" type="string" value=""/>
      <Parameter name="y axis" type="string" value=""/>
      <Parameter name="z axis" type="string" value=""/>
      <Parameter name="plot engine" type="string" value="QWT"/>
      <ListOfPlotItems>
        <PlotItem name="Values[Saturation_O2_normal]|Values[PO2].InitialValue" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="1"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#FF0000"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[PO2],Reference=InitialValue"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[Saturation_O2_normal],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[Saturation_O2_copart]|Values[PO2].InitialValue" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="1"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#0000FF"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[PO2],Reference=InitialValue"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[Saturation_O2_copart],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Parameter Estimation Result" type="Plot2D" active="0" taskTypes="Scan, Parameter Estimation">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <Parameter name="plot engine" type="string" value="QCustomPlot"/>
      <Parameter name="x axis" type="string" value=""/>
      <Parameter name="y axis" type="string" value=""/>
      <Parameter name="z axis" type="string" value=""/>
      <ListOfPlotItems>
        <PlotItem name="Experiment,Values[COHb_percent](Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#FF0000"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Experiment,Values[COHb_percent](Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="3"/>
          <Parameter name="Color" type="string" value="#FF0000"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Concentrations, Volumes, and Global Quantity Values 1" type="Plot2D" active="0" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <Parameter name="plot engine" type="string" value="QCustomPlot"/>
      <Parameter name="x axis" type="string" value=""/>
      <Parameter name="y axis" type="string" value=""/>
      <Parameter name="z axis" type="string" value=""/>
      <ListOfPlotItems>
        <PlotItem name="[Hb{CO_lung}]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#0000FF"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[CO_lung],Vector=Metabolites[Hb],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[HbO2{CO_lung}]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#00E600"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[CO_lung],Vector=Metabolites[HbO2],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[HbO22{CO_lung}]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#00BEF0"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[CO_lung],Vector=Metabolites[HbO22],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[HbO23{CO_lung}]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#F000FF"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[CO_lung],Vector=Metabolites[HbO23],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[HbO24{CO_lung}]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#F0C800"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[CO_lung],Vector=Metabolites[HbO24],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[HbCO]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#FF0000"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[CO_lung],Vector=Metabolites[HbCO],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[HbCOO2]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#7051A7"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[CO_lung],Vector=Metabolites[HbCOO2],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[HbCOO22]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#FD8D3C"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[CO_lung],Vector=Metabolites[HbCOO22],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[HbCOO23]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#1B9E77"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[CO_lung],Vector=Metabolites[HbCOO23],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <ListOfUnitDefinitions>
    <UnitDefinition key="Unit_1" name="meter" symbol="m">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_0">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        m
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_3" name="gram" symbol="g">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_2">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        g
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_5" name="second" symbol="s">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_4">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        s
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_13" name="Avogadro" symbol="Avogadro">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_12">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Avogadro
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_15" name="dimensionless" symbol="1">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_14">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        1
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_17" name="item" symbol="#">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_16">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        #
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_35" name="liter" symbol="l">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_34">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        0.001*m^3
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_41" name="mole" symbol="mol">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_40">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Avogadro*#
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_47" name="pascal" symbol="Pa">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_46">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        m^-1*kg*s^-2
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_91" name="mmHg" symbol="mmHg">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_90">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        133.322 * Pa
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_105" name="ppm" symbol="ppm">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_104">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        mol/mol
      </Expression>
    </UnitDefinition>
  </ListOfUnitDefinitions>
</COPASI>
