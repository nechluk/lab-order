Instance: CZ-LabOrder-Bundle-Example
InstanceOf: BundleLabOrderCz
Usage: #example
Title: "CZ Lab Order Bundle Example"
Description: "Czech Lab Order - example of a bundle"

* identifier.system = "http://hospital.example.org/lab-orders"
* identifier.value = "LO123456"
* type = #document
* timestamp = "2025-04-24T10:00:00+01:00"

* entry[composition].fullUrl = "urn:uuid:composition1"
* entry[composition].resource = CZ-LabOrder-Composition-Example
* entry[patient].fullUrl = "urn:uuid:patient1"
* entry[patient].resource = Mracena2
* entry[coverage].fullUrl = "urn:uuid:coverage1"
* entry[coverage].resource = CZ-Coverage-SelfPay
* entry[practitioner].fullUrl = "urn:uuid:practitioner1"
* entry[practitioner].resource = Practitioner-2
* entry[specimen].fullUrl = "urn:uuid:specimen1"
* entry[specimen].resource = CZ-LabOrder-Specimen-Example
* entry[serviceRequest].fullUrl = "urn:uuid:serviceRequest1"
* entry[serviceRequest].resource = CZ-LabOrder-ServiceRequest-Example