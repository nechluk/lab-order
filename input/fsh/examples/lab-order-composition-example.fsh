Instance: CZ-LabOrder-Composition-Example
InstanceOf: CZ_CompositionLabOrder
Usage: #example
Title: "CZ Lab Order Composition Example"
Description: "Czech Lab Order - example of a composition"


* status = #final
* type = $loinc#11502-2 "Laboratory report"
* date = "2025-04-22T10:00:00+01:00"
* author[0] = Reference(Practitioner-2) 
* title = "Laboratorní žádanka"

* subject = Reference(Mracena2)

* section[coverage].title = "Coverage"
* section[coverage].code = $loinc#48768-6 "Coverage"
* section[coverage].entry = Reference(CZ-Coverage-SelfPay)

* section[specimen].title = "Specimen"
* section[specimen].code = $loinc#31208-2 "Specimen"
* section[specimen].entry[Specimen] = Reference(CZ-LabOrder-Specimen-Example)

* section[serviceRequest].title = "Service Request"
* section[serviceRequest].code = $loinc#64286-8 "Diagnostic imaging order"
* section[serviceRequest].entry = Reference(CZ-LabOrder-ServiceRequest-Example)

