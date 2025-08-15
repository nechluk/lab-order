// -------------------------------------------------------------------------------				
//  Logical Model				LabOrderDataElements.fsh
// -------------------------------------------------------------------------------				
Logical: LogCzLabOrderDataElementsCz				
Id: LogLabOrderDataElementsCz
Title: "A.2.8 - Laboratory order data elements"				
Description:  """Laboratory order data elements"""		

* insert SetFmmandStatusRule( 1, draft)	

* examination 0..* Base "A.2.8.1 - Required examinations" """"""
* examination.code 1..1 CodeableConcept "A.2.8.1.1 - Examination code" """A code representing an examination within an agreed codebook.
- Preffered system(s): NČLP"""
* examination.name 1..1 CodeableConcept "A.2.8.1.2 - Name of examination" """Full name of the examination according to the codebook used.
- Preffered system(s): NČLP"""
* examination.procedure 0..1 CodeableConcept "A.2.8.1.3 - Examination procedure" """Required examination procedure (measurement principle).
- Preffered system(s): SNOMED CT
- Preffered system(s): NČLP - NCLPPROC"""
* examination.accreditation 0..1 CodeableConcept "A.2.8.1.4 - Accreditation" """Requirement that only laboratories accredited for the test be able to perform the test."""
* examination.urgency 0..1 CodeableConcept "A.2.8.1.5 - Urgency" """The urgency of the requested examination (vital indication, statim, priority (fast track), routine) if different from the urgency of the entire order.
- Preffered system(s): HL7:RequestPriority
- Preffered system(s): LOUP"""
* examination.note 0..1 string "A.2.8.1.6 - Note" """Client's note on the requested examination"""
* examination.clinicalEvent 0..1 LogClinicalEventCz "A.2.8.1.7 - Clinical event (encounter)" """Information about the clinical event to which the ordered examination relates"""
		
//--- END				
//--- END				
//--- END				