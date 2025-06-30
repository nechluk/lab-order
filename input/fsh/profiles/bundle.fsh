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
* signature only CZ_Signature

* identifier ^short = "Business identifier for this Imaging order"
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
* signature only CZ_Signature

* entry 1..
* entry ^slicing.discriminator[0].type = #type
* entry ^slicing.discriminator[=].path = "resource"
* entry ^slicing.discriminator[+].type = #profile
* entry ^slicing.discriminator[=].path = "resource"
* entry ^slicing.ordered = false
* entry ^slicing.rules = #open
* entry ^short = "Entry resource in the Laboratory order bundle"
* entry ^definition = "An entry resource included in the Laboratory order document bundle resource."
* entry ^comment = "Must contain the Laboratory Order Composition as the first entry (only a single Composition resource instance may be included).  Additional constraints are specified in the Laboratory Order Composition profile."
* entry contains
    composition 1..1 and
    patient 1..1 and
    serviceRequest 0..* and
    clinicalQuestion 1..* and
    appointment 0..1 and
    specimen 0..* and
    practitioner 0..* and
    practitionerRole 0..* and
    coverage 0..* and
    medication 0..* and
    condition 0..* and
    allergyIntolerance 0..* and
    observation 0..* and
    organization 0..* and
    attachment 0..*

* entry[composition].resource only CZ_CompositionLabOrder
* entry[patient].resource only CZ_PatientCore or CZ_PatientAnimal
* entry[serviceRequest].resource only CZ_ServiceRequest
* entry[clinicalQuestion].resource only CZ_ClinicalQuestion
* entry[appointment].resource only CZ_Appointment
* entry[specimen].resource only CZ_Specimen
* entry[practitioner].resource only CZ_PractitionerCore
* entry[practitionerRole].resource only CZ_PractitionerRoleCore
* entry[organization].resource only CZ_OrganizationCore
* entry[coverage].resource only CZ_Coverage
* entry[medication].resource only CZ_MedicationStatement  
* entry[condition].resource only CZ_ConditionLab
* entry[allergyIntolerance].resource only CZ_AllergyIntolerance
* entry[observation].resource only CZ_ObservationLab
* entry[attachment].resource only CZ_Attachment

* signature ^short = "Report Digital Signature"
  * type ^short = "Digital Signature Purposes"
  * when ^short = "When was signed"
  * who ^short = "Who signed."
  * data ^short = "Signature content"