Instance: LabOrderHeader2FHIRcz-cz
InstanceOf: ConceptMap
Usage: #definition
* url = "https://hl7.cz/fhir/lab-order/ConceptMap/LabOrderHeader2FHIRcz-cz"
* name = "LabOrderHeader2FHIRcz"
* title = "CZ Header Model to this guide Map"
* status = #draft
* experimental = true
* description = """CZ Laboratory Order Header Model to this guide mapping"""
				
* group[+].source = "https://hl7.cz/fhir/lab-order/StructureDefinition/SubjectCz"
* group[=].target = "https://hl7.cz/fhir/core/StructureDefinition/cz-patient-core"
* group[=].element[+].code = #Header.subject
* group[=].element[=].display = "A.1.1 - Identification and A.1.2 - related contact information of the Patient/subject"
* group[=].element[=].target.code = #Patient
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "Composition.subject.ofType(CZ_PatientCore) or Composition.subject.ofType(CZ_PatientAnimal)"
* group[=].element[+].code = #Header.payer.insuranceNumber
* group[=].element[=].display = "A.1.3.3 - Health insurance number"
* group[=].element[=].target.code = #Patient.identifier
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "If treated as one of the Patient identifiers; this applies in some jurisdictions."
* group[+].source = "https://hl7.cz/fhir/lab-order/StructureDefinition/PayerCz"
* group[=].target = "https://hl7.cz/fhir/core/StructureDefinition/cz-coverage"
* group[=].element[+].code = #Header.payer
* group[=].element[=].display = "A.1.3 - Health insurance and payment information - Health insurance information is not always required, however, in some jurisdictions, the insurance number is also used as the patient identifier. It is necessary not just for identification but also forms access to funding for care."
* group[=].element[=].target.code = #Composition.section:Coverage			
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "Composition.section:Coverage.entry.ofType(CZ_Coverage)"
* group[=].element[+].code = #Header.payer.insuranceCode
* group[=].element[=].display = "A.1.3.1 - Health insurance code"
* group[=].element[=].target.code = #CZ_Coverage.payor.identifier
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #Header.payer.insuranceName
* group[=].element[=].display = "A.1.3.2 - Health insurance name"
* group[=].element[=].target.code = #CZ_Coverage.payor.name
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[+].source = "https://hl7.cz/fhir/lab-order/StructureDefinition/CoverageOrderCz"
* group[=].target = "https://hl7.cz/fhir/core/StructureDefinition/cz-coverage"
* group[=].element[+].code = #Header.coverage
* group[=].element[=].display = "A.1.4 - Information about coverage"
* group[=].element[=].target.code = #Composition.section:Coverage						
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "Composition.section:Coverage.entry.ofType(CZ_Coverage)"
* group[=].element[+].code = #Header.coverage.method
* group[=].element[=].display = "A.1.4.1 - Coverage method"
* group[=].element[=].target.code = #CZ_Coverage.type				
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #Header.coverage.informationPayor
* group[=].element[=].display = "A.1.4.2 - Information about Payor"
* group[=].element[=].target.code = #CZ_Coverage.payor					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[+].source = "https://hl7.cz/fhir/lab-order/StructureDefinition/AuthorCz"
* group[=].target = "https://hl7.cz/fhir/core/StructureDefinition/cz-practitionerrole-core"
* group[=].element[+].code = #Header.author
* group[=].element[=].display = "A.1.5 - Author (by whom the Laboratory Order was/were authored)"
* group[=].element[=].target.code = #Composition.author
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "Composition.author.resolve().ofType(CZ_PractitionerRoleCore)"
* group[=].element[+].code = #Header.author.identifier
* group[=].element[=].display = "A.1.5.1 - Author identifier"
* group[=].element[=].target.code = #CZ_PractitionerRoleCore.identifier						
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #Header.author.name
* group[=].element[=].display = "A.1.5.2 - Author name"
* group[=].element[=].target.code = #CZ_PractitionerRoleCore.practictioner.name					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #Header.author.organizationID
* group[=].element[=].display = "A.1.5.3 - Author organisation ID"
* group[=].element[=].target.code = #CZ_PractitionerRoleCore.organization.identifier					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #Header.author.organization
* group[=].element[=].display = "A.1.5.4 - Author organisation"
* group[=].element[=].target.code = #CZ_PractitionerRoleCore.organization					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[+].source = "https://hl7.cz/fhir/lab-order/StructureDefinition/RequestedPerformerCz"
* group[=].target = "https://hl7.cz/fhir/core/StructureDefinition/cz-practitionerrole-core"					
* group[=].element[+].code = #Header.requestedPerformer
* group[=].element[=].display = "A.1.6 - Requested Performer"
* group[=].element[=].target.code = #Composition.requestedPerformer
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "where requestedPerformer.mode = 'professional' AND Composition.requestedPerformer.party.resolve().ofType(PractitionerRole)"
* group[=].element[+].code = #Header.requestedPerformer.identifier
* group[=].element[=].display = "A.1.6.1 - Requested Performer identifier"
* group[=].element[=].target.code = #CZ_PractitionerRoleCore.identifier					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #Header.requestedPerformer.name
* group[=].element[=].display = "A.1.6.2 - Requested Performer name"
* group[=].element[=].target.code = #CZ_PractitionerRoleCore.name					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #Header.requestedPerformer.organizationID
* group[=].element[=].display = "A.1.6.3 - Requested Performer organisation ID"
* group[=].element[=].target.code = #CZ_PractitionerRoleCore.organization.identifier					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #Header.requestedPerformer.organization
* group[=].element[=].display = "A.1.6.4 - Requested Performer organisation"
* group[=].element[=].target.code = #CZ_PractitionerRoleCore.organization					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #Header.requestedPerformer.dateTime
* group[=].element[=].display = "A.1.6.5 - Requested date and time"
* group[=].element[=].target.code = #CZ_PractitionerRoleCore.time					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equal
* group[+].source = "https://hl7.cz/fhir/lab-order/StructureDefinition/AdditionalRecipientCz"
* group[=].target = "https://hl7.cz/fhir/core/StructureDefinition/cz-practitionerrole-core"				
* group[=].element[+].code = #Header.additionalRecipient
* group[=].element[=].display = "A.1.7 - Additional Recipient"
* group[=].element[=].target.code = #Composition.additionalRecipient					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "where additionalRecipient.mode = 'legal' AND Composition.additionalRecipient.party.resolve().ofType(CZ_PractitionerRole)"
* group[=].element[+].code = #Header.additionalRecipient.identifier
* group[=].element[=].display = "A.1.7.1 - Additional Recipient identifier"
* group[=].element[=].target.code = #CZ_PractitionerRoleCore.identifier					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #Header.additionalRecipient.name
* group[=].element[=].display = "A.1.7.2 - Additional Recipient name"
* group[=].element[=].target.code = #CZ_PractitionerRoleCore.practictioner.name					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #Header.additionalRecipient.organizationID
* group[=].element[=].display = "A.1.7.3 - Additional Recipient organisation ID"
* group[=].element[=].target.code = #CZ_PractitionerRoleCore.organization.identifier					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #Header.additionalRecipient.organization
* group[=].element[=].display = "A.1.7.4 - Additional Recipient organisation"
* group[=].element[=].target.code = #CZ_PractitionerRoleCore.organization					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[+].source = "https://hl7.cz/fhir/lab-order/StructureDefinition/DocumentMetadataCz"
* group[=].target = "https://hl7.cz/fhir/lab-order/StructureDefinition/BundleLabOrderCz"
* group[=].element[+].code = #Header.documentMetadata.identifier
* group[=].element[=].display = "A.1.8.1 - Document ID"
* group[=].element[=].target.code = #Bundle.identifier					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "If it is the identifier of a particular order instance"
* group[=].element[+].code = #Header.documentMetadata.dateTime
* group[=].element[=].display = "A.1.8.4 - Order date and time"
* group[=].element[=].target.code = #Bundle.timeStamp
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "If it is when this particular version of  this order has been assembled into a Bundle."
* group[+].source = "https://hl7.cz/fhir/lab-order/StructureDefinition/LabOrderHeader"
* group[=].target = "https://hl7.cz/fhir/lab-order/StructureDefinition/CompositionLabOrderCz"
* group[=].element[+].code = #Header.subject
* group[=].element[=].display = "A.1.1 - Identification and A.1.2 - related contact information of the Patient/subject"
* group[=].element[=].target.code = #Composition.subject		
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #Header.author.dateTime
* group[=].element[=].display = "A.1.5.5 - Date Time"
* group[=].element[=].target.code = #Composition.date					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #Header.documentMetadata
* group[=].element[=].display = "A.1.8 - Document metadata"
* group[=].element[=].target.code = #Composition					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[+].code = #Header.documentMetadata.identifier
* group[=].element[=].display = "A.1.8.1 - Document ID"
* group[=].element[=].target.code = #Composition.identifier					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "If it is the identifer of the document (indipendently by its versions) and not of this particular document instance."
* group[=].element[+].code = #Header.documentMetadata.category
* group[=].element[=].display = "A.1.8.2 - Document category"
* group[=].element[=].target.code = #Composition.category					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #Header.documentMetadata.status
* group[=].element[=].display = "A.1.8.3 - Document status"
* group[=].element[=].target.code = #Composition.status					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #Header.documentMetadata.dateTime
* group[=].element[=].display = "A.1.8.4 - Order date and time"
* group[=].element[=].target.code = #Composition.date					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "If it is when this document has been created (indipendently by its version)"
* group[=].element[+].code = #Header.documentMetadata.title
* group[=].element[=].display = "A.1.8.5 - Document title"
* group[=].element[=].target.code = #Composition.title					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #Header.documentMetadata.custodian
* group[=].element[=].display = "A.1.8.6 - Order custodian"
* group[=].element[=].target.code = #Composition.custodian					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #Header.documentMetadata.confidentiality
* group[=].element[=].display = "A.1.8.7 - Confidentiality"
* group[=].element[=].target.code = #Composition.confidentiality					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #Header.documentMetadata.language
* group[=].element[=].display = "A.1.8.8 - Language"
* group[=].element[=].target.code = #Composition.language		
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[+].code = #Header.documentMetadata.version
* group[=].element[=].display = "A.1.8.9 - Version"
* group[=].element[=].target.code = #Composition.extension:versionNumber.valueString					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "As business version, not as resource version"
