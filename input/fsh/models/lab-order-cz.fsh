// -------------------------------------------------------------------------------				
//  Logical Model				lab-order-cz.fsh
// -------------------------------------------------------------------------------				
Logical: LabOrderCz				
Id: LabOrder				
Title: "A - Laboratory Order"				
Description:  """Laboratory Order."""		

* insert SetFmmandStatusRule( 1, draft)	

* header 1..1 LabOrderHeader "A.1 Laboratory order header data elements" """A.1 Laboratory Order header data elements"""				
* body 0..1 LabOrderBody "A.2 Laboratory order body data elements" """A.2 Laboratory Order body data elements"""		
* presentedForm 1..* PresentedFormCz "A.3 - Human-readable Form" """Entire order as issued. Various formats could be provided,  pdf format is prefered."""
* attachment 0..* LabOrderAttachmentsCz "A.4 - Additional Attachment" """Additional media attachment"""

//--- END				
//--- END				
//--- END				