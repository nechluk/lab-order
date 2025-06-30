/*Instance: CZ-LabOrder-ServiceRequest-Example
InstanceOf: ServiceRequestCz
Usage: #example
Title: "CZ Lab Order Service Request Example"
Description: "Czech Lab Order - example of a service request"

* identifier.system = "http://hospital.example.org/lab-requests"
* identifier.value = "REQ-123456"

* status = #active
* intent = #order
* category = $sct#108252007 "Laboratory procedure (procedure)"
* code = $nclppol#B0001 "Glukóza; látková koncentrace; plazma"
* code.text = "Glukóza v plazmě"

* subject = Reference(Zyrgana)
* requester = Reference(practitionerRoleVycichlo)
* specimen[+] = Reference(CZ-LabOrder-Specimen-Example)
* authoredOn = "2025-04-24"

* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Žádanka o laboratorní vyšetření</div>"

* note.text = "Pacient je nalačno."
*/