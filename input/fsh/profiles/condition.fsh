Profile: CZ_ConditionLab
Parent: Condition
Id: cz-conditionLab
Title: "Condition: Lab Order (CZ)"
Description: "Condition for Lab Order for the scope of the Czech national interoperability project."

* identifier
* subject
* category from $hl7-condition-category
* code MS
* code.coding ^slicing.discriminator[0].type = #value
* code.coding ^slicing.discriminator[0].path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains 
    diagnosis 0..1 and 
    reason 0..1 
* code.coding[diagnosis] from CZ_DiagnosisConditionVs
* code.coding[reason] from $sct-condition-code
* code.coding[reason].system = "http://snomed.info/sct" (exactly)

