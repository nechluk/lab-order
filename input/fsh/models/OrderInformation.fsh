// -------------------------------------------------------------------------------				
//  Logical Model				OrderInformation.fsh
// -------------------------------------------------------------------------------				
Logical: LabOrderInformationCz				
Id: OrderInformation
Title: "A.2.1 - Order information and A.2.2 - Order reason"				
Description:  """The laboratory report may correspond to multiple orders"""		

* insert SetFmmandStatusRule( 1, draft)	

* orderDetails 0..* BackboneElement "A.2.1 - Order information" """Order information (Laboratory Result Report could respond to multiple test orders) """				
* orderDetails.identifier 1..* Identifier "A.2.1.1 - Order Id" """An identifier of the laboratory test order."""				
* orderDetails.dateTime 1..1 dateTime "A.2.1.2 - Order date and time" """Date and time of the order placement. - Preferred system(s): ISO 8601"""		 		
* orderDetails.requestedExecdateTime 0..1 dateTime "A.2.1.3 - Date and time of requested execution" """Date and time of requested execution"""				
* orderDetails.urgency 0..1 CodeableConcept "A.2.1.4 - Urgency of the order" """Urgency of the order (routine, urgent, statim). 
- Preferred system(s): HL7:RequestPriority"""				
* orderDetails.orderText 0..1 string "A.2.1.5 - Order text" """A textual description of the order or additional requirements, specific to each type of order, if they cannot be expressed formally."""				
* orderDetails.infoForPatient 0..1 string "A.2.1.6 - Information for the patient" """Patient instructions related to the order. E.g. fasting collection, etc."""	

* orderReason 0..1 BackboneElement "A.2.2 Order reason" """Order reason (Laboratory Result Report could respond to multiple reasons) """				
* orderReason.problem 1..* CodeableConcept "A.2.2.1 Problem / diagnosis / condition description" """The reason for issuing an examination order expressed in structured text and/or code.
- Preferred system(s): MKN-10
- Preferred system(s): Orphacode"""	
* orderReason.questionCode 0..* CodeableConcept "A.2.2.2 - Clinical question by code" """Coded information from 2.2.3, if entered
- Preferred system(s): SNOMED CT"""
* orderReason.questionText 1..1 string "A.2.2.3 - Clinical question by text" """The clinical question to be answered by imaging. Example: Does the patient have a lung tumour ?"""
* orderReason.reasonCode 0..* CodeableConcept "A.2.2.4 - Reason for ordering by code" """Coded information from 2.2.5, if entered
- Preferred system(s): SNOMED CT ReasonCodelist 243796009 (Situation with explicit context (situation)"""
* orderReason.reasonText 0..1 string "A.2.2.5 - Reason for order by text" """Reason for the examination order expressed in free text (e.g. 3 weeks of persistent cough)"""
		
//--- END				
//--- END				
//--- END				