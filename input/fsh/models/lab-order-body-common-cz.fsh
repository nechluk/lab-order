// -------------------------------------------------------------------------------				
//  Logical Model				lab-order-body-common-cz.fsh
// -------------------------------------------------------------------------------				
Logical: LabOrderBodyCommonCz				
Id: LabOrderBodyCommon
Title: "A.2 Laboratory Order body data elements"				
Description:  """Laboratory Order body data elements"""		

* insert SetFmmandStatusRule( 1, draft)	

* order 0..* OrderInformation "A.2.1 - Order information and A.2.2 - Order reason" """The laboratory report may correspond to multiple orders"""
* clinicalEvent 0..1 ClinicalEvent "A.2.3 - Clinical event (encounter)" """Information about the clinical event to which the order relates"""
* coverage 1..1 Coverage "A.2.4 - Coverage" """Information on how to pay for an examination order"""
* appointment 0..1 Appointment "A.2.5 - Appointment" """Information about the appointment (if booked)"""
* specimen 0..* SpecimenInformation "A.2.6 - Specimen information" """Information about speciments"""
		
//--- END				
//--- END				
//--- END				