// -------------------------------------------------------------------------------				
//  Logical Model				lab-order-header-cz.fsh
// -------------------------------------------------------------------------------				
Logical: LabOrderHeaderCz				
Id: LabOrderHeader			
Title: "A.1 Laboratory Order header data elements"				
Description:  """Laboratory Order header data elements"""		

* insert SetFmmandStatusRule( 1, draft)	

* subject 1..1 SubjectCz "A.1.1 - Identification and A.1.2 - related contact information of the Patient/subject" """Identification of the patient/subject and Patient/subject related contact information"""
* payer 1..1 PayerCz "A.1.3 - Health insurance and payment information - Health insurance information is not always required, however, in some jurisdictions, the insurance number is also used as the patient identifier. It is necessary not just for identification but also forms access to funding for care." """Health insurance and payment information - Health insurance information is not always required, however, in some jurisdictions, the insurance number is also used as the patient identifier. It is necessary not just for identification but also forms access to funding for care."""
* coverage 1..1 CoverageOrderCz "A.1.4 - Information about coverage - the default value will be the patient's insurance company" """Coverage information - Information about method of coverage, payer identification data and additional information"""
* author 1..* AuthorCz "A.1.5 - Author (who requested the order). Multiple authors could be provided." """Author (who requested the order). Multiple authors could be provided."""
* attester 0..1 AttesterCz "A.1.6 - Attester (processing person)" """Person who processed document."""
* legalAuthenticator 0..* LegalAuthenticatorCz "A.1.7 - Legal authenticator (The person taking responsibility for the medical content of the document)" """Legal authenticator (The person taking responsibility for the medical content of the document)"""
* documentMetadata 1..1 DocumentMetadataCz "A.1.8 - Document metadata" """Document metadata"""
* digitalSignature 0..1 DigitalSignatureCz "A.1.9 - Digital signature" """Digital signature"""
		
//--- END				
//--- END				
//--- END				