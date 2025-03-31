Instance: LabOrderBodySpecific2FHIR-cz
InstanceOf: ConceptMap
Usage: #definition
* url = "https://hl7.cz/fhir/lab-order/ConceptMap/LabOrderBodySpecific2FHIR-cz"
* name = "LabOrderBodySpecific2FHIRcz"
* title = "CZ laboratory specific body Model to this guide Map"
* status = #draft
* experimental = true
* description = """CZ laboratory specific body Model to this guide Map"""

* group[+].source = "https://hl7.cz/fhir/lab-order/StructureDefinition/LabOrderBodySpecificCz"
* group[=].target = "https://hl7.cz/fhir/core/StructureDefinition/ServiceRequestCz"
* group[=].element[+].code = #Body.clinicalInformation
* group[=].element[=].display = "A.3.1 - Clinical information (anamnesis)"
* group[=].element[=].target.code = #clinicalInformations
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "Information and data communicated to the laboratory affecting the execution of the order or the interpretation of the results"
* group[=].element[+].code = #Header.clinicalInformation.clinicalInfoText
* group[=].element[=].display = "A.3.1.1 - Clinical information in free text"
* group[=].element[=].target.code = #clinicalInformations.clinicalInformationsText
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "Clinical information necessary for proper ordering or interpretation of results."
* group[=].element[+].code = #Header.clinicalInformation.clclinicalInfoFormalized
* group[=].element[=].display = "A.3.1.2 - Clinical information (medical history) formalized"
* group[=].element[=].target.code = #clinicalInformations.clinicalInformationsFormalized
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "Clinical information (medical history) formalized"
* group[=].element[+].code = #Header.clinicalInformation.description
* group[=].element[=].display = "A.3.1.3 - Description of the problem/diagnosis/condition"
* group[=].element[=].target.code = #clinicalInformations.description
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "Diagnosis and other clinical information affecting the course or outcome of the examination.
- Preferred system(s): MKN-10
- Preferred system(s): Orphacode"
* group[=].element[+].code = #Header.clinicalInformation.medication
* group[=].element[=].display = "A.3.1.4 - Medications"
* group[=].element[=].target.code = #clinicalInformations.medication
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "A medication block containing information about medications that affect the course or result of the test or its interpretation.
- Preferred system(s): DLP
- Preferred system(s): ATC"
* group[=].element[+].code = #Header.clinicalInformation.vaccination
* group[=].element[=].display = "A.3.1.5 - Vaccinations"
* group[=].element[=].target.code = #clinicalInformations.vaccination
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "Vaccinations"
* group[=].element[+].code = #Header.clinicalInformation.finding
* group[=].element[=].display = "A.3.1.6 - Physical findings"
* group[=].element[=].target.code = #clinicalInformations.finding
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "Physical examination of the patient (systolic and diastolic blood pressure, heart rate, saturation, respiratory rate, current body temperature)"
* group[=].element[+].code = #Header.clinicalInformation.urgentInformation
* group[=].element[=].display = "A.3.1.7 - Urgent information"
* group[=].element[=].target.code = #clinicalInformations.urgentInformation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "Urgent information block in the same structure as other document types (discharge report, patient summary)"
* group[=].element[+].code = #Header.clinicalInformation.urgentInformation.allergies
* group[=].element[=].display = "A.3.1.7.1 - Allergies and intolerances"
* group[=].element[=].target.code = #clinicalInformations.urgentInformation.allergies
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "Allergies and intolerances that may affect order execution or interpretation of results"
* group[=].element[+].code = #Header.clinicalInformation.urgentInformation.warnings
* group[=].element[=].display = "A.3.1.7.2 - Warnings"
* group[=].element[=].target.code = #clinicalInformations.urgentInformation.warnings
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "Warnings and cautions that may affect order execution or interpretation of results"

* group[=].element[+].code = #Header.clinicalInformation.additionalData
* group[=].element[=].display = "A.3.1.8 - Additional formalised data"
* group[=].element[=].target.code = #clinicalInformations.additionalData
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = ""
* group[=].element[+].code = #Header.clinicalInformation.additionalData.date
* group[=].element[=].display = "A.3.1.8.1 - Date"
* group[=].element[=].target.code = #clinicalInformations.additionalData.date
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "Date of discovery of the data, to be indicated if different from the date of the order."
* group[=].element[+].code = #Header.clinicalInformation.additionalData.code
* group[=].element[=].display = "A.3.1.8.2 - Code"
* group[=].element[=].target.code = #clinicalInformations.additionalData.code
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "Observation code identifying the significance of the data (height, weight, week of gestation, etc.)
- Preferred system(s): NČLP
- Preferred system(s): SNOMED CT"
* group[=].element[+].code = #Header.clinicalInformation.additionalData.value 
* group[=].element[=].display = "A.3.1.8.3 - Data value"
* group[=].element[=].target.code = #clinicalInformations.additionalData.value 
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "Data value including unit of measurement."	

* group[=].element[+].code = #Body.orderData
* group[=].element[=].display = "A.3.2 - Laboratory order data elements"
* group[=].element[=].target.code = #orderData
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "Laboratory order data elements"
* group[=].element[+].code = #Header.orderData.requiredExamination
* group[=].element[=].display = "A.3.2.1 - Required examinations"
* group[=].element[=].target.code = #orderData.requiredExamination
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "A code representing an examination within an agreed codebook.
- Preffered system(s): NČLP"
* group[=].element[+].code = #Body.required.nameExamination
* group[=].element[=].display = "A.3.2.1.2 - Name of examination"
* group[=].element[=].target.code = #required.nameExamination
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "Full name of the examination according to the codebook used.
- Preffered system(s): NČLP"
* group[=].element[+].code = #Header.required.SystemSpecification
* group[=].element[=].display = "A.3.2.1.3 - System and specifications"
* group[=].element[=].target.code = #.required.SystemSpecification
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "Name the system and its specification (especially for microbiology).
- Preffered system(s): NČLP - NCMPSPM"
* group[=].element[+].code = #Header.required.additionalSubspecification
* group[=].element[=].display = "A.3.2.1.4 - Additional subspecification"
* group[=].element[=].target.code = #required.additionalSubspecification
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "Additional / clarifying information for the sub-specification"
* group[=].element[+].code = #Header.required.examinationProcedure
* group[=].element[=].display = "A.3.2.1.5 - Examination procedure"
* group[=].element[=].target.code = #required.examinationProcedure
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "Required examination procedure (measurement principle).
- Preffered system(s): SNOMED CT
- Preffered system(s): NČLP - NCLPPROC"
* group[=].element[+].code = #Header.required.ProcedureSpecification
* group[=].element[=].display = "A.3.2.1.6 - Procedure specification"
* group[=].element[=].target.code = #.required.ProcedureSpecification
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "Name the system and its specification (especially for microbiology).
- Preffered system(s): NČLP - NCMPSPM"
* group[=].element[+].code = #Header.required.additionalSubspecification
* group[=].element[=].display = "A.3.2.1.4 - Additional subspecification"
* group[=].element[=].target.code = #required.additionalSubspecification
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "Specification of the examination procedure (in case of a proxy procedure).
- Preffered system(s): NČLP - NCLPPROC"
* group[=].element[+].code = #Header.required.examinationProcedure
* group[=].element[=].display = "A.3.2.1.5 - Examination procedure"
* group[=].element[=].target.code = #required.examinationProcedure
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "Required examination procedure (measurement principle).
- Preffered system(s): SNOMED CT
- Preffered system(s): NČLP - NCLPPROC"
* group[=].element[+].code = #Header.required.Accreditation
* group[=].element[=].display = "A.3.2.1.7 - Accreditation"
* group[=].element[=].target.code = #required.Accreditation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "Requirement that only laboratories accredited for the test be able to perform the test."
* group[=].element[+].code = #Header.required.urgency
* group[=].element[=].display = "A.3.2.1.8 - Urgency"
* group[=].element[=].target.code = #required.urgency
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "The urgency of the requested examination (vital indication, statim, priority (fast track), routine) if different from the urgency of the entire order.
- Preffered system(s): HL7:RequestPriority
- Preffered system(s): LOUP"
* group[=].element[+].code = #Header.required.note
* group[=].element[=].display = "A.3.2.1.9 - Note"
* group[=].element[=].target.code = #required.note
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "Client's note on the requested examination"
* group[=].element[+].code = #Header.required.encounter
* group[=].element[=].display = "A.3.2.1.10 - Clinical event (encounter)"
* group[=].element[=].target.code = #required.encounter
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "Information about the clinical event to which the ordered examination relates"
