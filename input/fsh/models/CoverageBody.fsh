// -------------------------------------------------------------------------------				
//  Logical Model				CoverageBody.fsh
// -------------------------------------------------------------------------------				
Logical: LabOrderCoverageCz				
Id: Coverage
Title: "A.2.4 - Coverage"				
Description:  """Information on how to pay for an examination order"""		

* insert SetFmmandStatusRule( 1, draft)	

* method 0..1 CodeableConcept "A.2.4.1 - Method of payment" """Order payment method (health insurance, patient paid, other)
Preffered system(s): http://hl7.org/fhir/ValueSet/coverage-kind"""
* payerInformation 0..1 string "A.2.4.2 - Information about the payer" """Identification details of the payer and additional information if it is a reimbursement other than from health insurance. The identification data shall include the identifier, the name of the organisation or name of the payer, the address of the payer and the telecommunications link."""

//--- END				
//--- END				
//--- END				