// -------------------------------------------------------------------------------				
//  Logical Model				lab-order-cz.fsh
// -------------------------------------------------------------------------------				
Logical: LabOrderCz				
Id: LabOrder				
Title: "A - Laboratory Order"				
Description:  """Laboratory Order."""		

* insert SetFmmandStatusRule( 1, draft)	

* header 1..1 LabOrderHeader "A.1 Laboratory Order header data elements" """A.1 Laboratory Order header data elements"""				
* body 1..1 LabOrderBody "A.2 Laboratory order body data elements" """A.2 Laboratory Order body data elements"""				
		
//--- END				
//--- END				
//--- END				