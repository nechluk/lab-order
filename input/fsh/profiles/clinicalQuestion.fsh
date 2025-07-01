Profile: CZ_ClinicalQuestion
Parent: Condition
Id: cz-clinicalQuestion
Title: "Clinical question: Laboratory Order (CZ)"
Description: "Clinical question for Laboratory Order for the scope of the Czech national interoperability project."

* identifier
* subject
* category from $hl7-condition-category
* code 0..
* code.coding from $hl7-clinicalFindings
* code.coding.system = "http://snomed.info/sct" (exactly)
* code.text 1..1