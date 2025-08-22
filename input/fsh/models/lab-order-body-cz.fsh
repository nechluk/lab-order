// -------------------------------------------------------------------------------				
//  Logical Model				lab-order-body-cz.fsh
// -------------------------------------------------------------------------------				
Logical: LabOrderBodyCz				
Id: LabOrderBody
Title: "A.2 Laboratory Order body data elements"				
Description:  """Laboratory Order body data elements"""		

* insert SetFmmandStatusRule( 1, draft)	

// common
* order 0..* LabOrderInformationCz "A.2.1 - Order information and A.2.2 - Order reason" """The laboratory report may correspond to multiple orders"""
* clinicalEvent 0..1 ClinicalEventCz "A.2.3 - Clinical event (encounter)" """Information about the clinical event to which the order relates"""
* coverage 1..1 CoverageOrderCz "A.2.4 - Coverage" """Information on how to pay for an examination order"""
* appointment 0..1 LabAppointmentCz "A.2.5 - Appointment" """Information about the appointment (if booked)"""
* specimen 0..* SpecimenInformationCz "A.2.6 - Specimen information" """Information about speciments"""

// specific
* clinicalInformation 0..1 ClinicalInformationCz "A.2.7 - Clinical information (anamnesis)" """Information and data communicated to the laboratory affecting the execution of the order or the interpretation of the results"""
* dataElements 1..1 LabOrderDataElementsCz "A.2.8 - Laboratory order data elements" """Laboratory order data elements"""
		
//--- END				
//--- END				
//--- END				