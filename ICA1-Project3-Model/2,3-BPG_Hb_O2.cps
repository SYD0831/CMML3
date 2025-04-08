<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.44 (Build 295) (http://www.copasi.org) at 2025-04-07T14:22:11Z -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="44" versionDevel="295" copasiSourcesModified="0">
  <ListOfFunctions>
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
  <Model key="Model_1" name="Oxygen Binding to Hemoglobin" simulationType="time" timeUnit="s" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="µmol" type="deterministic" avogadroConstant="6.0221407599999999e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Model_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2025-03-04T01:29:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="Lung-c1" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Compartment_0">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="Hb" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_0">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="HbO2" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_1">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="HbO22" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_2">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="HbO23" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_3">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="HbO24" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_4">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="O2" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_5">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[alpha],Reference=InitialValue>*&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[PO2],Reference=InitialValue>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_6" name="species" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_6">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_7" name="dpg" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_7">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="Relative_Saturation_calculate" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_0">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Lung-c1],Vector=Metabolites[HbO2],Reference=Concentration>+2*&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Lung-c1],Vector=Metabolites[HbO22],Reference=Concentration>+3*&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Lung-c1],Vector=Metabolites[HbO23],Reference=Concentration>+4*&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Lung-c1],Vector=Metabolites[HbO24],Reference=Concentration>)/(4*(&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Lung-c1],Vector=Metabolites[Hb],Reference=Concentration>+&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Lung-c1],Vector=Metabolites[HbO2],Reference=Concentration>+&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Lung-c1],Vector=Metabolites[HbO22],Reference=Concentration>+&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Lung-c1],Vector=Metabolites[HbO23],Reference=Concentration>+&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Lung-c1],Vector=Metabolites[HbO24],Reference=Concentration>))
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_1" name="Relative_Saturation_hill_KA" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_1">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Lung-c1],Vector=Metabolites[O2],Reference=InitialConcentration>/&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[KA_hemoglobin_oxygen],Reference=InitialValue>)^&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[Hill_nH],Reference=InitialValue>/(1+(&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Lung-c1],Vector=Metabolites[O2],Reference=InitialConcentration>/&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[KA_hemoglobin_oxygen],Reference=InitialValue>)^&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[Hill_nH],Reference=InitialValue>)
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_2" name="Hill_nH" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_2">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_3" name="KA_hemoglobin_oxygen" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_3">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_4" name="Kd_hemoglobin_oxygen" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_4">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[KA_hemoglobin_oxygen],Reference=InitialValue>^&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[Hill_nH],Reference=InitialValue>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_5" name="Relative_Saturation_hill_Kd" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_5">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Lung-c1],Vector=Metabolites[O2],Reference=InitialConcentration>^&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[Hill_nH],Reference=InitialValue>/(&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[Kd_hemoglobin_oxygen],Reference=InitialValue>+&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Lung-c1],Vector=Metabolites[O2],Reference=InitialConcentration>^&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[Hill_nH],Reference=InitialValue>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_6" name="alpha" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_6">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          µmol/(l * mmHg)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_7" name="PO2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_7">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mmHg
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_8" name="a" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_8">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R1],ParameterGroup=Parameters,Parameter=k1,Reference=Value>
        </Expression>
        <Unit>
          1/(umol/l)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_9" name="b" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_9">
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
      <ModelValue key="ModelValue_10" name="c" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_10">
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
      <ModelValue key="ModelValue_11" name="d" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_11">
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
      <ModelValue key="ModelValue_12" name="Saturation_O2_abcd" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_12">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          1/4*(&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[a],Reference=InitialValue>*&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Lung-c1],Vector=Metabolites[O2],Reference=InitialConcentration>+2*&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[b],Reference=InitialValue>*&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Lung-c1],Vector=Metabolites[O2],Reference=InitialConcentration>^2+3*&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[c],Reference=InitialValue>*&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Lung-c1],Vector=Metabolites[O2],Reference=InitialConcentration>^3+4*&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[d],Reference=InitialValue>*&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Lung-c1],Vector=Metabolites[O2],Reference=InitialConcentration>^4)/(1+&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[a],Reference=InitialValue>*&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Lung-c1],Vector=Metabolites[O2],Reference=InitialConcentration>+&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[b],Reference=InitialValue>*&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Lung-c1],Vector=Metabolites[O2],Reference=InitialConcentration>^2+&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[c],Reference=InitialValue>*&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Lung-c1],Vector=Metabolites[O2],Reference=InitialConcentration>^3+&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[d],Reference=InitialValue>*&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Lung-c1],Vector=Metabolites[O2],Reference=InitialConcentration>^4)
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_13" name="p50_std" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_13">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mmHg
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_14" name="p50" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_14">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[p50_std],Reference=InitialValue>+&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[K1],Reference=InitialValue>*(&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Lung-c1],Vector=Metabolites[dpg],Reference=InitialConcentration>-&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[dpg_std],Reference=InitialValue>)+&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[K2],Reference=InitialValue>*(&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Lung-c1],Vector=Metabolites[dpg],Reference=InitialConcentration>-&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[dpg_std],Reference=InitialValue>)^2
        </Expression>
        <Unit>
          mmHg
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_15" name="dpg_std" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_15">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_16" name="K1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_16">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mmHg*l/umol
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_17" name="K2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_17">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mmHg*(l/umol)^2
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_18" name="Saturation_O2_bpg_hill" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_18">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[PO2],Reference=InitialValue>^&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[Hill_nH],Reference=InitialValue>/(&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[p50],Reference=InitialValue>^&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[Hill_nH],Reference=InitialValue>+&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[PO2],Reference=InitialValue>^&lt;CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[Hill_nH],Reference=InitialValue>)
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="R1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_0">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_251" name="k1" value="0.0133563"/>
          <Constant key="Parameter_252" name="k2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Lung-c1]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_251"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_0"/>
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_252"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="R2" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_1">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_253" name="k1" value="0.0227233"/>
          <Constant key="Parameter_254" name="k2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Lung-c1]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_253"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_1"/>
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_254"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="R3" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_2">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_255" name="k1" value="0.0166738"/>
          <Constant key="Parameter_256" name="k2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Lung-c1]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_255"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_2"/>
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_256"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="R4" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_3">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_257" name="k1" value="0.143874"/>
          <Constant key="Parameter_258" name="k2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Lung-c1]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_257"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_3"/>
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_258"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfModelParameterSets activeSet="ModelParameterSet_1">
      <ModelParameterSet key="ModelParameterSet_1" name="Initial State">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_1">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Lung-c1]" value="9.9999999999999998e-13" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Lung-c1],Vector=Metabolites[Hb]" value="1385092374.8" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Lung-c1],Vector=Metabolites[HbO2]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Lung-c1],Vector=Metabolites[HbO22]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Lung-c1],Vector=Metabolites[HbO23]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Lung-c1],Vector=Metabolites[HbO24]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Lung-c1],Vector=Metabolites[O2]" value="78287829.879999995" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Lung-c1],Vector=Metabolites[species]" value="602214.076" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Lung-c1],Vector=Metabolites[dpg]" value="3914391493.9999981" type="Species" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[Relative_Saturation_calculate]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[Relative_Saturation_hill_KA]" value="0.96245013071103303" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[Hill_nH]" value="2.7000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[KA_hemoglobin_oxygen]" value="39.100000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[Kd_hemoglobin_oxygen]" value="19901.107469078357" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[Relative_Saturation_hill_Kd]" value="0.96245013071103303" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[alpha]" value="1.3" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[PO2]" value="100" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[a]" value="0.0133563" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[b]" value="0.00030349921178999997" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[c]" value="5.0604851575441013e-06" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[d]" value="7.2807224155650007e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[Saturation_O2_abcd]" value="0.96630527203926753" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[p50_std]" value="26.800000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[p50]" value="28.339204896024999" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[dpg_std]" value="4650" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[K1]" value="0.00079562999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[K2]" value="1.9660890000000001e-08" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[Saturation_O2_bpg_hill]" value="0.96784471464135025" type="ModelValue" simulationType="assignment"/>
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
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_3" name="PE: 2025-04-06T02:16:19Z Exp: Original">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_3">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Lung-c1]" value="9.9999999999999998e-13" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Lung-c1],Vector=Metabolites[Hb]" value="1385092374.8" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Lung-c1],Vector=Metabolites[HbO2]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Lung-c1],Vector=Metabolites[HbO22]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Lung-c1],Vector=Metabolites[HbO23]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Lung-c1],Vector=Metabolites[HbO24]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Lung-c1],Vector=Metabolites[O2]" value="21137714.067600001" type="Species" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[Relative_Saturation_calculate]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[Relative_Saturation_hill_KA]" value="0.42766419149706059" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[Hill_nH]" value="2.7000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[KA_hemoglobin_oxygen]" value="39.100000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[Kd_hemoglobin_oxygen]" value="19901.107469078357" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[Relative_Saturation_hill_Kd]" value="0.42766419149706059" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[alpha]" value="1.3" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[PO2]" value="27" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[a]" value="0.9919" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[b]" value="239.0479" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[c]" value="1033882.1675" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[d]" value="1501196907.21" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[Saturation_O2_abcd]" value="0.99999509472367532" type="ModelValue" simulationType="assignment"/>
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
      <ModelParameterSet key="ModelParameterSet_4" name="PE: 2025-04-06T02:16:19Z Exp: Experiment">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_4">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Lung-c1]" value="9.9999999999999998e-13" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Lung-c1],Vector=Metabolites[Hb]" value="1385092374.8" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Lung-c1],Vector=Metabolites[HbO2]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Lung-c1],Vector=Metabolites[HbO22]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Lung-c1],Vector=Metabolites[HbO23]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Lung-c1],Vector=Metabolites[HbO24]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Lung-c1],Vector=Metabolites[O2]" value="21137714.067600001" type="Species" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[Relative_Saturation_calculate]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[Relative_Saturation_hill_KA]" value="0.42766419149706059" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[Hill_nH]" value="2.7000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[KA_hemoglobin_oxygen]" value="39.100000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[Kd_hemoglobin_oxygen]" value="19901.107469078357" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[Relative_Saturation_hill_Kd]" value="0.42766419149706059" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[alpha]" value="1.3" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[PO2]" value="27" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[a]" value="0.013356325418138517" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[b]" value="0.0003034993513439788" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[c]" value="5.0604723294403021e-06" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[d]" value="7.2806860893739348e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[Saturation_O2_abcd]" value="0.49685959074651775" type="ModelValue" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R1],ParameterGroup=Parameters,Parameter=k1" value="0.013356325418138517" type="ReactionParameter" simulationType="fixed"/>
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
      <StateTemplateVariable objectReference="Model_1"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="ModelValue_0"/>
      <StateTemplateVariable objectReference="ModelValue_1"/>
      <StateTemplateVariable objectReference="ModelValue_4"/>
      <StateTemplateVariable objectReference="ModelValue_5"/>
      <StateTemplateVariable objectReference="ModelValue_8"/>
      <StateTemplateVariable objectReference="ModelValue_9"/>
      <StateTemplateVariable objectReference="ModelValue_10"/>
      <StateTemplateVariable objectReference="ModelValue_11"/>
      <StateTemplateVariable objectReference="ModelValue_12"/>
      <StateTemplateVariable objectReference="ModelValue_14"/>
      <StateTemplateVariable objectReference="ModelValue_18"/>
      <StateTemplateVariable objectReference="Metabolite_7"/>
      <StateTemplateVariable objectReference="Metabolite_6"/>
      <StateTemplateVariable objectReference="Compartment_0"/>
      <StateTemplateVariable objectReference="ModelValue_2"/>
      <StateTemplateVariable objectReference="ModelValue_3"/>
      <StateTemplateVariable objectReference="ModelValue_6"/>
      <StateTemplateVariable objectReference="ModelValue_7"/>
      <StateTemplateVariable objectReference="ModelValue_13"/>
      <StateTemplateVariable objectReference="ModelValue_15"/>
      <StateTemplateVariable objectReference="ModelValue_16"/>
      <StateTemplateVariable objectReference="ModelValue_17"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 0 0 0 1385092374.8 0 78287829.879999995 0 0.96245013071103303 19901.107469078357 0.96245013071103303 0.0133563 0.00030349921178999997 5.0604851575441013e-06 7.2807224155650007e-07 0.96630527203926753 28.339204896024999 0.96784471464135025 3914391493.9999981 602214.076 9.9999999999999998e-13 2.7000000000000002 39.100000000000001 1.3 100 26.800000000000001 4650 0.00079562999999999997 1.9660890000000001e-08 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_17" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
      <Report reference="Report_11" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_18" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Report reference="Report_12" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="1"/>
        <Parameter name="Duration" type="float" value="100"/>
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
    <Task key="Task_19" name="Scan" type="scan" scheduled="true" updateModel="true">
      <Problem>
        <Parameter name="Subtask" type="unsignedInteger" value="1"/>
        <ParameterGroup name="ScanItems">
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="100"/>
            <Parameter name="Type" type="unsignedInteger" value="1"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[PO2],Reference=InitialValue"/>
            <Parameter name="Minimum" type="float" value="0"/>
            <Parameter name="Maximum" type="float" value="120"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Values" type="string" value=""/>
            <Parameter name="Use Values" type="bool" value="0"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="10"/>
            <Parameter name="Type" type="unsignedInteger" value="1"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Lung-c1],Vector=Metabolites[dpg],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="3250"/>
            <Parameter name="Maximum" type="float" value="13000"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Values" type="string" value="7000"/>
            <Parameter name="Use Values" type="bool" value="1"/>
          </ParameterGroup>
        </ParameterGroup>
        <Parameter name="Subtask Output" type="string" value="subTaskDuring"/>
        <Parameter name="Adjust initial conditions" type="bool" value="0"/>
        <Parameter name="Continue on Error" type="bool" value="0"/>
      </Problem>
      <Method name="Scan Framework" type="ScanFramework">
      </Method>
    </Task>
    <Task key="Task_20" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_13" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_21" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_14" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_22" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="false">
      <Report reference="Report_15" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="0"/>
        <Parameter name="Calculate Statistics" type="bool" value="1"/>
        <ParameterGroup name="OptimizationItemList">
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R1],ParameterGroup=Parameters,Parameter=k1,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1e-06"/>
            <Parameter name="UpperBound" type="cn" value="100"/>
            <Parameter name="StartValue" type="float" value="0.013356325420000001"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R2],ParameterGroup=Parameters,Parameter=k1,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1e-06"/>
            <Parameter name="UpperBound" type="cn" value="100"/>
            <Parameter name="StartValue" type="float" value="0.022723267204302497"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R3],ParameterGroup=Parameters,Parameter=k1,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1e-06"/>
            <Parameter name="UpperBound" type="cn" value="100"/>
            <Parameter name="StartValue" type="float" value="0.016673750065794656"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Reactions[R4],ParameterGroup=Parameters,Parameter=k1,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1e-06"/>
            <Parameter name="UpperBound" type="cn" value="100"/>
            <Parameter name="StartValue" type="float" value="0.14387364687318016"/>
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
        <Parameter name="Create Parameter Sets" type="bool" value="1"/>
        <Parameter name="Use Time Sens" type="bool" value="0"/>
        <Parameter name="Time-Sens" type="cn" value=""/>
        <ParameterGroup name="Experiment Set">
          <ParameterGroup name="Experiment">
            <Parameter name="Key" type="key" value="Experiment_0"/>
            <Parameter name="File Name" type="file" value="Commonly_accepted_PO2_and_SO2_data_points_at_normal_physiologic_conditions.csv"/>
            <Parameter name="First Row" type="unsignedInteger" value="2"/>
            <Parameter name="Last Row" type="unsignedInteger" value="17"/>
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
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[PO2],Reference=InitialValue"/>
              </ParameterGroup>
              <ParameterGroup name="1">
                <Parameter name="Role" type="unsignedInteger" value="2"/>
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[Saturation_O2_abcd],Reference=Value"/>
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
        <Parameter name="Population Size" type="unsignedInteger" value="20"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
        <Parameter name="Stop after # Stalled Generations" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_23" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_16" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_17"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Use Reder" type="bool" value="1"/>
        <Parameter name="Use Smallbone" type="bool" value="1"/>
      </Method>
    </Task>
    <Task key="Task_24" name="Lyapunov Exponents" type="lyapunovExponents" scheduled="false" updateModel="false">
      <Report reference="Report_17" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_25" name="Time Scale Separation Analysis" type="timeScaleSeparationAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_18" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_26" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_19" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_27" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Report reference="Report_20" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
    <Task key="Task_28" name="Cross Section" type="crosssection" scheduled="false" updateModel="false">
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
    <Task key="Task_29" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_21" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_17"/>
      </Problem>
      <Method name="Linear Noise Approximation" type="LinearNoiseApproximation">
      </Method>
    </Task>
    <Task key="Task_30" name="Time-Course Sensitivities" type="timeSensitivities" scheduled="false" updateModel="false">
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
    <Report key="Report_11" name="Steady-State" taskType="steadyState" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Steady-State]"/>
      </Footer>
    </Report>
    <Report key="Report_12" name="Time-Course" taskType="timeCourse" separator="&#x09;" precision="6">
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
    <Report key="Report_13" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_14" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
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
    <Report key="Report_15" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
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
    <Report key="Report_16" name="Metabolic Control Analysis" taskType="metabolicControlAnalysis" separator="&#x09;" precision="6">
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
    <Report key="Report_17" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#x09;" precision="6">
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
    <Report key="Report_18" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#x09;" precision="6">
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
    <Report key="Report_19" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
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
    <Report key="Report_20" name="Moieties" taskType="moieties" separator="&#x09;" precision="6">
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
    <Report key="Report_21" name="Linear Noise Approximation" taskType="linearNoiseApproximation" separator="&#x09;" precision="6">
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
    <PlotSpecification name="Concentrations, Volumes, and Global Quantity Values" type="Plot2D" active="0" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <Parameter name="plot engine" type="string" value="QCustomPlot"/>
      <Parameter name="x axis" type="string" value=""/>
      <Parameter name="y axis" type="string" value=""/>
      <Parameter name="z axis" type="string" value=""/>
      <ListOfPlotItems>
        <PlotItem name="[Hb]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Lung-c1],Vector=Metabolites[Hb],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[HbO2]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Lung-c1],Vector=Metabolites[HbO2],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[HbO22]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Lung-c1],Vector=Metabolites[HbO22],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[HbO23]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Lung-c1],Vector=Metabolites[HbO23],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[HbO24]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Lung-c1],Vector=Metabolites[HbO24],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[Relative_Saturation_calculate]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[Relative_Saturation_calculate],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[Relative_Saturation_hill]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[Relative_Saturation_hill_KA],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[Saturation_O2_abcd]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[Saturation_O2_abcd],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Saturation_Hb_O2" type="Plot2D" active="0" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <Parameter name="x axis" type="string" value=""/>
      <Parameter name="y axis" type="string" value=""/>
      <Parameter name="z axis" type="string" value=""/>
      <Parameter name="plot engine" type="string" value="QWT"/>
      <ListOfPlotItems>
        <PlotItem name="Values[Relative_Saturation_hill_KA]|[O2]_0" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="1"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Lung-c1],Vector=Metabolites[O2],Reference=InitialConcentration"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[Relative_Saturation_hill_KA],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[Relative_Saturation_hill_Kd]|[O2]_0" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="1"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Lung-c1],Vector=Metabolites[O2],Reference=InitialConcentration"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[Relative_Saturation_hill_Kd],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Scan of Concentrations, Volumes, and Global Quantity Values 1" type="Plot2D" active="0" taskTypes="Scan">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <Parameter name="plot engine" type="string" value="QCustomPlot"/>
      <Parameter name="x axis" type="string" value=""/>
      <Parameter name="y axis" type="string" value=""/>
      <Parameter name="z axis" type="string" value=""/>
      <ListOfPlotItems>
        <PlotItem name="[Hb]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[PO2],Reference=InitialValue"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Lung-c1],Vector=Metabolites[Hb],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[HbO2]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[PO2],Reference=InitialValue"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Lung-c1],Vector=Metabolites[HbO2],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[HbO22]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[PO2],Reference=InitialValue"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Lung-c1],Vector=Metabolites[HbO22],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[HbO23]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[PO2],Reference=InitialValue"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Lung-c1],Vector=Metabolites[HbO23],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[HbO24]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[PO2],Reference=InitialValue"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Lung-c1],Vector=Metabolites[HbO24],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[O2]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[PO2],Reference=InitialValue"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Lung-c1],Vector=Metabolites[O2],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[Relative_Saturation_calculate]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[PO2],Reference=InitialValue"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[Relative_Saturation_calculate],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[Relative_Saturation_hill_KA]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[PO2],Reference=InitialValue"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[Relative_Saturation_hill_KA],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[Kd_hemoglobin_oxygen]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[PO2],Reference=InitialValue"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[Kd_hemoglobin_oxygen],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[Relative_Saturation_hill_Kd]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[PO2],Reference=InitialValue"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[Relative_Saturation_hill_Kd],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[a]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[PO2],Reference=InitialValue"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[a],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[b]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[PO2],Reference=InitialValue"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[b],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[c]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[PO2],Reference=InitialValue"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[c],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[d]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[PO2],Reference=InitialValue"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[d],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[Saturation_O2_abcd]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[PO2],Reference=InitialValue"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[Saturation_O2_abcd],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Sigmoid_PO2_SO2_abcd" type="Plot2D" active="0" taskTypes="">
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
            <ChannelSpec cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[Saturation_O2_abcd],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="PO2_Distribution_Hb_Species" type="Plot2D" active="0" taskTypes="">
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
            <ChannelSpec cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[Saturation_O2_abcd],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Compartments[Lung-c1],Vector=Metabolites[Hb],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Saturation_Hb_O2_dpg" type="Plot2D" active="1" taskTypes="">
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
          <Parameter name="Color" type="string" value="#FF0000"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[PO2],Reference=InitialValue"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[Saturation_O2_abcd],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[Saturation_O2_bpg_hill]|Values[PO2].InitialValue" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="1"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#0000FF"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[PO2],Reference=InitialValue"/>
            <ChannelSpec cn="CN=Root,Model=Oxygen Binding to Hemoglobin,Vector=Values[Saturation_O2_bpg_hill],Reference=Value"/>
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
  </ListOfUnitDefinitions>
</COPASI>
