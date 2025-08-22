Profile: CZ_ObservationLab
Parent: Observation
Id: cz-observation
Title: "Observation: Laboratory Order (CZ)"
Description: "Observation for Laboratory Order for the scope of the Czech national interoperability project."

* identifier
* title
* category.coding.system
* category.coding.code
* code
* code.coding ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "system"
  * ^slicing.rules = #open
* code.coding contains
    LOINC 0..1 and
    SNOMEDCT 0..1 and
    NCLP 0..1
* code.coding[LOINC]
  * ^short = "LOINC code for the observation"
  * system 1..
  * system = "http://loinc.org" (exactly)
  * code 1..
* code.coding[SNOMEDCT]
  * ^short = "SNOMED CT code for the observation"
  * system 1..
  * system = "http://snomed.info/sct" (exactly)
  * code 1..
* code.coding[NCLP]
  * ^short = "NCLP code for the observation"
  * system 1..
  * system = $nclp (exactly)
  * code 1..
* valueQuantity
* valueCodeableConcept
* status
* effectiveDateTime
* performer
* performer.identifier
* performer.display
* note