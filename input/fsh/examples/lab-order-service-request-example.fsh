Instance: CZ-Lab-ServiceRequest-Example
InstanceOf: CZ_ServiceRequest
Title: "Example Laboratory Order"
Description: "Example instance of CZ_ServiceRequest for a blood test"
Usage: #example

* status = #active
* intent = #order
* identifier.system = "https://example.org/lab-orders"
* identifier.value = "ORD-20250623-1234"
* category[0] = $sct#108252007 "Laboratory procedure" 
* code = $nclp#02505 "Na" 
* subject = Reference(Zyrgana)
* specimen[0] = Reference(CZ-Lab-Specimen-Example)
* insurance[0] = Reference(CZ-Lab-Coverage-Example)
* requisition.system = "https://example.org/composite-id"
* requisition.value = "REQ-20250623-4567"
* authoredOn = "2025-06-23"
* requester = Reference(practitionerRoleVycichlo)
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Vyšetření sodíku v séru</div>"


Instance: CZ-Lab-Coverage-Example
InstanceOf: CZ_Coverage
Description: "Příklad pojištění"
Usage: #example
Title: "Příklad pojištění zdravotní pojišťovnou"

* status = #active
* identifier[+].system = "https://ncez.mzcr.cz/fhir/sid/rc"
* identifier[=].value = "8203171234"
* identifier[=].use = #official

* beneficiary = Reference(Zyrgana)
* payor = Reference(CZ-Lab-Payor-Example)

Instance: CZ-Lab-Payor-Example
InstanceOf: CZ_OrganizationCore
Usage: #example
Description: "Example of insurance organisation"
Title: "Organization - Healthcare insurance company"

* name = "Všeobecná zdravotní pojišťovna ČR"
* identifier[KP].system =  "https://ncez.mzcr.cz/fhir/sid/kp"
* identifier[KP].value = "111"