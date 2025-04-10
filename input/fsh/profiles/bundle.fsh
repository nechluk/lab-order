//===================================
/// INVARIANTS
//===================================

Invariant: one-comp
Description: "A laboratory order bundle SHALL include one and only one Composition"
Expression: "entry.resource.ofType(Composition).count() = 1"
Severity:    #error

//==========================
// PROFILE
//==========================
Profile: BundleLabOrderCz
Parent: Bundle
Id: BundleLabOrderCz
Title: "Bundle: Laboratory Order (CZ)"
Description: "Clinical document used to represent a Laboratory Order for the scope of this guide."
* ^purpose = "Laboratory order bundle is an electronic health record extract containing order of laboratory examination for subject of care, comprising at least the required elements of the lab dataset."
* ^publisher = "HL7 CZ"
* ^copyright = "HL7 CZ"
* . ^short = "Laboratory Order Bundle"
* . ^definition = "Laboratory Order Bundle. \r\nA container for a collection of resources in the inmaging order document."

* insert SetFmmandStatusRule ( 0, draft )

//* obeys dr-comp-subj
* obeys one-comp
//* obeys one-dr

* identifier ^short = "Business identifier for this Laboratory order"
* identifier 1..
* type = #document
* timestamp 1..
* total ..0
* link ..0
* entry 1..
  * link ..0
  * fullUrl 1..1
  * resource 1..
  * search ..0
  * request ..0
  * response ..0
* signature ^short = "Digital Signature of this order"

* entry ^slicing.discriminator[0].type = #type
* entry ^slicing.discriminator[0].path = "resource"
// * entry ^slicing.ordered = true => changed on 2023-07-19  to be checked
* entry ^slicing.ordered = false
* entry ^slicing.rules = #open

* entry contains composition 1..1
* entry[composition].resource only CZ_CompositionLabOrder

* entry contains serviceRequest 0..*
* entry[serviceRequest].resource only ServiceRequestCz

* entry contains patient 0..1
* entry[patient].resource only CZ_PatientCore or CZ_PatientAnimal

* entry contains specimen 0..*
* entry[specimen].resource only SpecimenCz

* entry contains organization 0..*
* entry[organization].resource only CZ_OrganizationCore

* entry contains practitioner 0..*
* entry[practitioner].resource only CZ_PractitionerCore

* entry contains practitionerRole 0..*
* entry[practitionerRole].resource only CZ_PractitionerRoleCore

//* entry contains device 0..*
//* entry[device].resource only CZ_DeviceObserver

* entry contains coverage 0..*
* entry[coverage].resource only CoverageCz

//* entry contains medication 0..*
//* entry[medication].resource only CZ_Medication  

//* entry contains condition 0..*
//* entry[condition].resource only Condition

//* entry contains carePlan 0..*
//* entry[carePlan].resource only CarePlan
