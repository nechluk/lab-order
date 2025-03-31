Instance: LabOrderBodyCommon2FHIR-cz
InstanceOf: ConceptMap
Usage: #definition
* url = "https://hl7.cz/fhir/lab-order/ConceptMap/LabOrderBodyCommon2FHIR-cz"
* name = "LabOrderBodyCommon2FHIRcz"
* title = "CZ Body Common Model to this guide Map"
* status = #draft
* experimental = true
* description = """CZ Imaging Order Body Model to this guide mapping"""

* group[+].source = "https://hl7.cz/fhir/lab-order/StructureDefinition/LabOrderInformationCz"
* group[=].target = "https://hl7.cz/fhir/lab-order/StructureDefinition/ServiceRequestCz"
* group[=].element[+].code = #Body.OrderInformation
* group[=].element[=].display = "A.2.1 and A.2.2 - Information about order"
* group[=].element[=].target.code = #Composition.sectionOrderInformation					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto	
* group[=].element[+].code = #OrderInformation.orderDetail
* group[=].element[=].display = "A.2.1 - Order detail"
* group[=].element[=].target.code = #Composition.sectionOrderInformation.entry.ofType(order)
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #OrderInformation.orderDetail.identifier
* group[=].element[=].display = "A.2.1.1 - Identifier of order detail"
* group[=].element[=].target.code = #Composition.sectionOrderInformation.order.identifier
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #OrderInformation.orderDetail.dateTime
* group[=].element[=].display = "A.2.1.2 - Date and time of the order placement"
* group[=].element[=].target.code = #Composition.sectionOrderInformation.order.authoredOn
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #OrderInformation.orderDetail.requestedExecdateTime
* group[=].element[=].display = "A.2.1.3 - Date and time of requested execution"
* group[=].element[=].target.code = #Composition.sectionOrderInformation.order.occurrenceDateTime
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #OrderInformation.orderDetail.urgency
* group[=].element[=].display = "A.2.1.4 - Urgency of the order"
* group[=].element[=].target.code = #Composition.sectionOrderInformation.order.priority
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #OrderInformation.orderDetail.orderText
* group[=].element[=].display = "A.2.1.5 - Order text"
* group[=].element[=].target.code = #Composition.sectionOrderInformation.order.note
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #OrderInformation.orderDetail.orderText
* group[=].element[=].display = "A.2.1.5 - Information for the patient"
* group[=].element[=].target.code = #Composition.sectionOrderInformation.order.patientInstruction
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].display = "A.2.2 - Order reason"
* group[=].element[=].target.code = #Composition.sectionOrderInformation.entry.ofType(orderReason)
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #OrderInformation.orderReason.identifier
* group[=].element[=].display = "A.2.2.1 - Identifier of order detail"
* group[=].element[=].target.code = #Composition.sectionOrderInformation.orderReason.identifier
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #OrderInformation.orderReason.problem
* group[=].element[=].display = "A.2.2.2 - Date and time of the order placement"
* group[=].element[=].target.code = #Composition.sectionOrderInformation.orderReason.codeDescription.coding
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #OrderInformation.orderDetail.questionCode
* group[=].element[=].display = "A.2.2.3 - Date and time of requested execution"
* group[=].element[=].target.code = #Composition.sectionOrderInformation.orderReason.clinicalQuestion.coding
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #OrderInformation.orderDetail.questionText
* group[=].element[=].display = "A.2.2.4 - Urgency of the order"
* group[=].element[=].target.code = #Composition.sectionOrderInformation.orderReason.clinicalQuestion.text
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #OrderInformation.orderDetail.reasonCode
* group[=].element[=].display = "A.2.2.5 - Order text"
* group[=].element[=].target.code = #Composition.sectionOrderInformation.orderReason.reason.coding
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #OrderInformation.orderDetail.reasonText
* group[=].element[=].display = "A.2.2.6 - Information for the patient"
* group[=].element[=].target.code = #Composition.sectionOrderInformation.orderReason.reason.text
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[+].source = "https://hl7.cz/fhir/lab-order/StructureDefinition/ClinicalEventCz"
* group[=].target = "https://hl7.cz/fhir/lab-order/StructureDefinition/EncounterCz"
* group[=].element[+].code = #Body.ClinicalEvent
* group[=].element[=].display = "A.2.3 - Information about clinical event"
* group[=].element[=].target.code = #Composition.extension:basedOn:order					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto	
* group[=].element[=].target.comment = "Composition.section:sectionEncounter.entry.ofType(Encounter)"	
* group[=].element[+].code = #Encounter.identifier
* group[=].element[=].display = "A.2.3.1 - Identifier of clinical event"
* group[=].element[=].target.code = #Composition.encounter.identifier
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #Encounter.type
* group[=].element[=].display = "A.2.3.2 - Type of clinical event"
* group[=].element[=].target.code = #Composition.encounter.identifier
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #Encounter.otherInformation
* group[=].element[=].display = "A.2.3.3 - Other information about clinical event"
* group[=].element[=].target.code = #Composition.encounter.text
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[+].source = "https://hl7.cz/fhir/lab-order/StructureDefinition/CoverageBodyCz"
* group[=].target = "https://hl7.cz/fhir/lab-order/StructureDefinition/CoverageCz"
* group[=].element[+].code = #Body.coverage
* group[=].element[=].display = "A.2.4 - Information about additional coverage"
* group[=].element[=].target.code = #Composition.extension:basedOn:order					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "Composition.section:sectionPayers.entry.ofType(Coverage)"
* group[=].element[+].code = #Body.coverage.method
* group[=].element[=].display = "A.2.4.1 - Coverage method"
* group[=].element[=].target.code = #Coverage.type					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #Body.coverage.informationPayor
* group[=].element[=].display = "A.2.4.2 - Information about Payor"
* group[=].element[=].target.code = #Coverage.payor					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[=].display = "A.2.4.3 - Coverage comment"
* group[=].element[=].target.code = #Coverage.comment					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #Body.coverage.comment
* group[+].source = "https://hl7.cz/fhir/lab-order/StructureDefinition/LabOrderAppointmentCz"
* group[=].target = "https://hl7.cz/fhir/lab-order/StructureDefinition/AppointmentCz"
* group[=].element[+].code = #Body.Appointment
* group[=].element[=].display = "A.2.5 - Information about appointment"
* group[=].element[=].target.code = #Composition.extension:basedOn:order					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto	
* group[=].element[=].target.comment = "Composition.section:sectionAppointment.entry.ofType(Appointment)"	
* group[=].element[+].code = #Appointment.identifier
* group[=].element[=].display = "A.2.5.1 - Identifier of appointment"
* group[=].element[=].target.code = #Composition.appointment.identifier
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #Appointment.status
* group[=].element[=].display = "A.2.5.2 - Status of appointment"
* group[=].element[=].target.code = #Composition.appointment.status
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #Appointment.description
* group[=].element[=].display = "A.2.5.3 - Description of appointment"
* group[=].element[=].target.code = #Composition.appointment.description
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #Appointment.dateTime
* group[=].element[=].display = "A.2.5.4 - Date Time"
* group[=].element[=].target.code = #Composition.appointment.created					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #Appointment.examDuration
* group[=].element[=].display = "A.2.5.5 - Duration of appointment"
* group[=].element[=].target.code = #Composition.appointment.minutesDuration					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Appointment.comment
* group[=].element[=].display = "A.2.5.6 - Comment about appointment"
* group[=].element[=].target.code = #Composition.appointment.comment					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Appointment.patientInstruction
* group[=].element[=].display = "A.2.5.7 - Instructions for the patient"
* group[=].element[=].target.code = #Composition.appointment.patientInstruction					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Appointment.address
* group[=].element[=].display = "A.2.5.7 - Address of the workplace "
* group[=].element[=].target.code = #Composition.appointment.Location.address					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[+].source = "https://hl7.cz/fhir/lab-order/StructureDefinition/SpecimenInformationCz"
* group[=].target = "https://hl7.cz/fhir/lab-order/StructureDefinition/SpecimenImageCz"
* group[=].element[+].code = #Body.SpecimenInformation
* group[=].element[=].display = "A.2.6 - Speciment information"
* group[=].element[=].target.code = #Composition.extension:basedOn:order					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto	
* group[=].element[=].target.comment = "Composition.section:sectionSpecimen.entry.ofType(Specimen)"
* group[=].element[+].code = #Specimen.identifier
* group[=].element[=].display = "A.2.6.1 - Identifier of specimen"
* group[=].element[=].target.code = #Composition.specimen.identifier
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
//* group[=].element[+].code = #Specimen.species	
//* group[=].element[=].display = "A.2.7.2 - Species of animal patient"
//* group[=].element[=].target.code = #Composition.specimen.subject.species
//* group[=].element[=].target.display = ""
//* group[=].element[=].target.equivalence = #equivalent
//* group[=].element[+].code = #Specimen.material	
//* group[=].element[=].display = "A.2.7. -"
//* group[=].element[=].target.code = #Composition.specimen.
//* group[=].element[=].target.display = ""
//* group[=].element[=].target.equivalence = #equivalent
//* group[=].element[+].code = #Specimen.	
//* group[=].element[=].display = "A.2.7. -"
//* group[=].element[=].target.code = #Composition.specimen.
//* group[=].element[=].target.display = ""
//* group[=].element[=].target.equivalence = #equivalent
