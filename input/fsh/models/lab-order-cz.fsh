// -------------------------------------------------------------------------------				
//  Logical Model				lab-order-cz.fsh
// -------------------------------------------------------------------------------				
Logical: LabOrderCz				
Id: LabOrder				
Title: "A - Laboratory Order"				
Description:  """Laboratory Order."""		

* insert SetFmmandStatusRule( 1, draft)	

* header 1..1 LabOrderHeader "A.1 Laboratory order header data elements" """A.1 Laboratory Order header data elements"""				
* bodyCommon 1..1 LabOrderBodyCommon "A.2 Laboratory order body data elements" """A.2 Laboratory Order body data elements"""				
* bodySpecific 1..1 LabOrderBodySpecific "A.3 Laboratory order body data elements" """A.2 Laboratory Order body data elements"""	

//--- END				
//--- END				
//--- END				