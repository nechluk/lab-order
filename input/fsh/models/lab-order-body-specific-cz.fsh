// -------------------------------------------------------------------------------				
//  Logical Model				lab-order-body-common-cz.fsh
// -------------------------------------------------------------------------------				
Logical: LabOrderBodySpecificCz				
Id: LabOrderBodySpecific
Title: "A.3 Laboratory Order body data elements"				
Description:  """Laboratory Order body data elements"""		

* insert SetFmmandStatusRule( 1, draft)	

* clinicalInformation 0..1 ClinicalInformationCz "A.2.7 - Clinical information (anamnesis)" """Information and data communicated to the laboratory affecting the execution of the order or the interpretation of the results"""
* dataElements 1..1 LabOrderDataElementsCz "A.2.8 - Laboratory order data elements" """Laboratory order data elements"""

		
//--- END				
//--- END				
//--- END				