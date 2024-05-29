cwlVersion: v1.0
steps:
  read-potential-cases-omop:
    run: read-potential-cases-omop.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  moderate-or-severe-liver-disease-charlson-primary-care-bleeding---primary:
    run: moderate-or-severe-liver-disease-charlson-primary-care-bleeding---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-omop/output
  hepatorenal-moderate-or-severe-liver-disease-charlson-primary-care---primary:
    run: hepatorenal-moderate-or-severe-liver-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: moderate-or-severe-liver-disease-charlson-primary-care-bleeding---primary/output
  moderate-or-severe-liver-disease-charlson-primary-care-hepatitis---primary:
    run: moderate-or-severe-liver-disease-charlson-primary-care-hepatitis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: hepatorenal-moderate-or-severe-liver-disease-charlson-primary-care---primary/output
  moderate-or-severe-liver-disease-charlson-primary-care-sequelae---primary:
    run: moderate-or-severe-liver-disease-charlson-primary-care-sequelae---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: moderate-or-severe-liver-disease-charlson-primary-care-hepatitis---primary/output
  moderate-or-severe-liver-disease-charlson-primary-care-sclerotherapy---primary:
    run: moderate-or-severe-liver-disease-charlson-primary-care-sclerotherapy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: moderate-or-severe-liver-disease-charlson-primary-care-sequelae---primary/output
  moderate-or-severe-liver-disease-charlson-primary-care-hypertension---primary:
    run: moderate-or-severe-liver-disease-charlson-primary-care-hypertension---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: moderate-or-severe-liver-disease-charlson-primary-care-sclerotherapy---primary/output
  moderate-or-severe-liver-disease-charlson-primary-care-banding---primary:
    run: moderate-or-severe-liver-disease-charlson-primary-care-banding---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: moderate-or-severe-liver-disease-charlson-primary-care-hypertension---primary/output
  moderate-or-severe-liver-disease-charlson-primary-care-operation---primary:
    run: moderate-or-severe-liver-disease-charlson-primary-care-operation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: moderate-or-severe-liver-disease-charlson-primary-care-banding---primary/output
  moderate-or-severe-liver-disease-charlson-primary-care-specified---primary:
    run: moderate-or-severe-liver-disease-charlson-primary-care-specified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: moderate-or-severe-liver-disease-charlson-primary-care-operation---primary/output
  oesophageal-moderate-or-severe-liver-disease-charlson-primary-care---primary:
    run: oesophageal-moderate-or-severe-liver-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: moderate-or-severe-liver-disease-charlson-primary-care-specified---primary/output
  endoscopic-moderate-or-severe-liver-disease-charlson-primary-care---primary:
    run: endoscopic-moderate-or-severe-liver-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: oesophageal-moderate-or-severe-liver-disease-charlson-primary-care---primary/output
  moderate-or-severe-liver-disease-charlson-primary-care-cirrhosis---primary:
    run: moderate-or-severe-liver-disease-charlson-primary-care-cirrhosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: endoscopic-moderate-or-severe-liver-disease-charlson-primary-care---primary/output
  moderate-or-severe-liver-disease-charlson-primary-care---primary:
    run: moderate-or-severe-liver-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: moderate-or-severe-liver-disease-charlson-primary-care-cirrhosis---primary/output
  hepatic-moderate-or-severe-liver-disease-charlson-primary-care---primary:
    run: hepatic-moderate-or-severe-liver-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: moderate-or-severe-liver-disease-charlson-primary-care---primary/output
  oesophagoscopic-moderate-or-severe-liver-disease-charlson-primary-care---primary:
    run: oesophagoscopic-moderate-or-severe-liver-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: hepatic-moderate-or-severe-liver-disease-charlson-primary-care---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: oesophagoscopic-moderate-or-severe-liver-disease-charlson-primary-care---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
