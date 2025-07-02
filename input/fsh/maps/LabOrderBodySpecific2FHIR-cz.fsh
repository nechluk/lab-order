Instance: LabOrderBodySpecific2FHIR-cz
InstanceOf: ConceptMap
Usage: #definition
* url = "https://hl7.cz/fhir/lab-order/ConceptMap/LabOrderBodySpecific2FHIR-cz"
* name = "LabOrderBodySpecific2FHIRcz"
* title = "CZ laboratory specific body Model to this guide Map"
* status = #draft
* experimental = true
* description = """CZ laboratory specific body Model to this guide Map"""

* group[+].source = "https://hl7.cz/fhir/lab-order/StructureDefinition/ClinicalInformationCz"
* group[=].target = "https://hl7.cz/fhir/core/StructureDefinition/cz-serviceRequest"
* group[=].element[+].code = #Body.clinicalInformation
* group[=].element[=].display = "A.2.7 - Clinical information (anamnesis)"
* group[=].element[=].target.code = #Composition.section:OrderInformation.supportingInfo.ofType(Condition)
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[+].code = #clinicalInformation.clinicalInfoText
* group[=].element[=].display = "A.2.7.1 - Clinical information in free text"
* group[=].element[=].target.code = #Condition.code.text
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #clinicalInformation.clclinicalInfoFormalized
* group[=].element[=].display = "A.2.7.2 - Clinical information (medical history) formalized"
* group[=].element[=].target.code = #Condition.code.coding
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[+].code = #clinicalInformation.description
* group[=].element[=].display = "A.2.7.3 - Description of the problem/diagnosis/condition"
* group[=].element[=].target.code = #Condition.code.coding
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[+].source = "https://hl7.cz/fhir/lab-order/StructureDefinition/ClinicalInformationCz"
* group[=].target = "https://hl7.cz/fhir/core/StructureDefinition/cz-MedicationStatement"
* group[=].element[+].code = #clinicalInformation.medication
* group[=].element[=].display = "A.2.7.4 - Medications"
* group[=].element[=].target.code = #Composition.section:OrderInformation.supportingInfo.ofType(CZ_MedicationStatement)
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[+].code = #clinicalInformation.vaccination
* group[=].element[=].display = "A.2.7.5 - Vaccinations"
* group[=].element[=].target.code = #Composition.section:OrderInformation.supportingInfo.ofType(CZ_MedicationStatement)
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto	
* group[+].source = "https://hl7.cz/fhir/lab-order/StructureDefinition/ClinicalInformationCz"
* group[=].target = "https://hl7.cz/fhir/core/StructureDefinition/cz-observation"
* group[=].element[+].code = #clinicalInformation.finding
* group[=].element[=].display = "A.2.7.6 - Physical findings"
* group[=].element[=].target.code = #Composition.section:OrderInformation.supportingInfo.ofType(CZ_ObservationLab)
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto	
* group[+].source = "https://hl7.cz/fhir/lab-order/StructureDefinition/ClinicalInformationCz"
* group[=].target = "https://hl7.cz/fhir/core/StructureDefinition/cz-allergyIntolerance"
* group[=].element[+].code = #clinicalInformation.urgentInformation
* group[=].element[=].display = "A.2.7.7 - Urgent information"
* group[=].element[=].target.code = #Composition.section:OrderInformation.supportingInfo.ofType(CZ_AllergyIntolerance)	
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[+].code = #clinicalInformation.urgentInformation.allergies
* group[=].element[=].display = "A.2.7.7.1 - Allergies and intolerances"
* group[=].element[=].target.code = #Composition.section:OrderInformation.supportingInfo.ofType(CZ_AllergyIntolerance)	
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[+].code = #clinicalInformation.urgentInformation.warnings
* group[=].element[=].display = "A.2.7.7.2 - Warnings"
* group[=].element[=].target.code = #clinicalInformations.urgentInformation.warnings
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[+].source = "https://hl7.cz/fhir/lab-order/StructureDefinition/ClinicalInformationCz"
* group[=].target = "https://hl7.cz/fhir/core/StructureDefinition/cz-observation"
* group[=].element[+].code = #clinicalInformation.additionalData
* group[=].element[=].display = "A.2.7.8 - Additional formalised data"
* group[=].element[=].target.code = #Composition.section:OrderInformation.supportingInfo.ofType(CZ_ObservationLab)
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #clinicalInformation.additionalData.date
* group[=].element[=].display = "A.2.7.8.1 - Date"
* group[=].element[=].target.code = #CZ_ObservationLab.dateTime
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #clinicalInformation.additionalData.code
* group[=].element[=].display = "A.2.7.8.2 - Code"
* group[=].element[=].target.code = #CZ_ObservationLab.code
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #clinicalInformation.additionalData.value 
* group[=].element[=].display = "A.2.7.8.3 - Data value"
* group[=].element[=].target.code = #CZ_ObservationLab.value
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					

* group[+].source = "https://hl7.cz/fhir/lab-order/StructureDefinition/LabOrderBodySpecificCz"
* group[=].target = "https://hl7.cz/fhir/lab-order/StructureDefinition/cz-service-request"
* group[=].element[+].code = #Body.examination
* group[=].element[=].display = "A.2.8 - Laboratory order data elements"
* group[=].element[=].target.code = #Composition.section:serviceRequest
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #examination.code
* group[=].element[=].display = "A.2.8.1 - Required examinations"
* group[=].element[=].target.code = #CZ_ServiceRequest.code.coding
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #examination.name
* group[=].element[=].display = "A.2.8.1.2 - Name of examination"
* group[=].element[=].target.code = #CZ_ServiceRequest.code.text
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #examination.procedure
* group[=].element[=].display = "A.2.8.1.3 - Examination procedure"
* group[=].element[=].target.code = #CZ_ServiceRequest
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #examination.accreditation
* group[=].element[=].display = "A.2.8.1.4 - Accreditation"
* group[=].element[=].target.code = #CZ_ServiceRequest.extension[requiresAccreditation]
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #examination.urgency
* group[=].element[=].display = "A.2.8.1.5 - Urgency"
* group[=].element[=].target.code = #CZ_ServiceRequest.priority
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #examination.note
* group[=].element[=].display = "A.2.8.1.6 - Note"
* group[=].element[=].target.code = #CZ_ServiceRequest.note
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #examination.clinicalEvent
* group[=].element[=].display = "A.2.8.1.7 - Clinical event (encounter)"
* group[=].element[=].target.code = #CZ_ServiceRequest.encounter
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
