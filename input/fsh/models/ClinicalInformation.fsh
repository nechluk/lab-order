// -------------------------------------------------------------------------------				
//  Logical Model				ClinicalInformation.fsh
// -------------------------------------------------------------------------------				
Logical: LabOrderClinicalInformationCz				
Id: ClinicalInformation
Title: "A.2.8 - Clinical information (anamnesis)"				
Description:  """Information and data communicated to the laboratory affecting the execution of the order or the interpretation of the results"""		

* insert SetFmmandStatusRule( 1, draft)	

//* header 0..* OrderInformation "A.2.1 - Order information and A.2.2 - Order reason" """The laboratory report may correspond to multiple orders"""
		
//--- END				
//--- END				
//--- END				