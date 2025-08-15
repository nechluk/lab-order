// -------------------------------------------------------------------------------				
//  Logical Model				lab-order-cz.fsh
// -------------------------------------------------------------------------------				
Logical: LogCzLabOrderCz				
Id: LogLabOrderCz			
Title: "A - Laboratory Order"				
Description:  """Laboratory Order."""		

* insert SetFmmandStatusRule( 1, draft)	

* header 1..1 LogLabOrderHeaderCz "A.1 Laboratory order header data elements" """A.1 Laboratory Order header data elements"""				
* body 0..1 LogLabOrderBodyCz "A.2 Laboratory order body data elements" """A.2 Laboratory Order body data elements"""		
* presentedForm 1..* LogPresentedFormCz "A.3 - Human-readable Form" """Entire order as issued. Various formats could be provided,  pdf format is prefered."""
* attachment 0..* LogAttachmentsCz "A.4 - Additional Attachment" """Additional media attachment"""

//--- END				
//--- END				
//--- END				