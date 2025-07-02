Instance: EncounterExample
InstanceOf: CZ_Encounter
Usage: #example
Title: "Example Encounter – Laboratory Visit"
Description: "Encounter related to laboratory order and specimen collection"

* identifier[0].system = "http://hospital.lab.cz/encounters"
* identifier[0].value = "ENC-LAB-20250703-001"

* status = #in-progress
* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* class.code = #AMB
* class.display = "ambulatory"

* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Ambulantní návštěva laboratoře kvůli odběru vzorku krve</div>"
