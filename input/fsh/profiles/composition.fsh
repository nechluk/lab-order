//==========================
// PROFILE
//==========================
Profile: CZ_CompositionLabOrder
Parent: Composition
Id: CompositionLabOrderCz
Title: "Composition: Laboratory Order (CZ)"
Description: "Clinical document used to represent a Laboratory Order for the scope of this guide."
* ^purpose = "Laboratory order bundle is an electronic health record extract containing order of laboratory examination for subject of care, comprising at least the required elements of the lab dataset."
* ^publisher = "HL7 CZ"
* ^copyright = "HL7 CZ"
* . ^short = "Laboratory Order Composition"
* . ^definition = "Laboratory Order Composition. \r\n\r\n A composition is a set of healthcare-related information that is assembled together into a single logical document that provides a single coherent statement of meaning, establishes its own context and that has clinical attestation with regard to who is making the statement. \r\nWhile a Composition defines the structure, it does not actually contain the content: rather the full content of a document is contained in a Bundle, of which the Composition is the first resource contained."

* insert SetFmmandStatusRule ( 0, draft )

* meta
  * security 0..* MS

* identifier
  * ^short = "Order identifier"
  * ^definition = "Identifiers assigned to this Laboratory Order by the performer or other systems. It shall be common to several report versions"
  * ^comment = "Composition.identifier SHALL be equal to one of the OrderInformation.identifier, if at least one exists"

* status
  * ^short = "Status of the Order"
  * ^comment = ""

* subject 1..1 MS
* subject only Reference(Patient)

* custodian MS
* custodian only Reference(Organization)
  * ^short = "Organization that manages the Laboratory Order"

* encounter MS
* encounter only Reference(Encounter)
  * ^short = "Context that defines the Laboratory Order"
//  * insert SetPopulateIfKnown

* attester 0..* MS
//  * insert SetPopulateIfKnown
  * ^slicing.discriminator[+].type = #value
  * ^slicing.discriminator[=].path = "$this.mode"
  * ^slicing.rules = #open
  * ^slicing.ordered = false


* author MS
* author only Reference(PractitionerRole or Device)
  * ^short = "Who and/or what authored the composition"

* date MS
  * ^short = "Date the order was created."

* section MS
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "code"
  * ^slicing.rules = #open
  * ^slicing.ordered = false
* section.entry MS
* section.code 1..1 MS  // LOINC code for the section
* section.title MS
* section.text MS
* section contains
    orderInformation 0..* MS and
    supportingInformation 1..1 MS and
    specimen 1..1 MS and
    serviceRequest 1..1 MS and
    coverage 0..* MS and
    appointment 0..1 MS

///////////////////////////////// ORDER INFORMATION SECTION ///////////////////////////////////////
* section[orderInformation]
  * ^short = "Order Information"
  * ^definition = "This section holds information related to the order for the imaging study."
  * code = $loinc#100828-3 "Portable medical order administrative information"

  * entry MS
    * insert SliceElement( #profile, "$this" )
  * entry contains 
      order 0..* MS and 
      orderPlacer 0..1 MS and
      orderReason 1..1 MS 
  
  * entry[order]
    * ^short = "Order reference"
    * ^definition = "This entry holds a reference to the order for the Imaging Order."
  * entry[order] only Reference(ServiceRequest) 

  * entry[orderPlacer]
    * ^short = "Order Placer"
    * ^definition = "This entry holds a reference to order placer."
  * entry[orderPlacer] only Reference(PractitionerRole) 

  * entry[orderReason]
    * ^short = "Order Reason"
    * ^definition = "This entry holds a reference to order reason."
  * entry[orderReason] only Reference(Observation or Condition)

///////////////////////////// SUPPORTING INFORMATION SECTION ////////////////////////////////////
* section[supportingInformation]
  * ^short = "Supporting Information"
  * ^definition = "This section holds additional clinical information about the patient or specimen that may influence the services or their interpretations. This information includes diagnosis, clinical findings and other observations."
  * code = $loinc#104987-3 "Supporting clinical information"

  * entry MS
    * insert SliceElement( #profile, "$this" )
  * entry contains 
      medicationAdministration 0..* MS and
      urgentInformation 0..1 MS and
  // omezeni pohyblivosti pacienta    
      observation 0..* MS
 
  * entry[medicationAdministration]
    * ^short = "Medication Administration"
    * ^definition = "This entry holds a reference to the medication."
  * entry[medicationAdministration] only Reference(MedicationAdministration) 

  * entry[urgentInformation]
    * ^short = "Urgent information"
    * ^definition = "This entry holds a reference to the implant."
  * entry[urgentInformation] only Reference(AllergyIntolerance) 

  * entry[observation]
    * ^short = "Condition"
    * ^definition = "This entry holds a reference to the other observation."
  * entry[observation] only Reference(Observation) 

///////////////////////////////////// SPECIMEN SECTION //////////////////////////////////////////
* section[specimen]
  * ^short = "Specimen"
  * code = $loinc#31208-2 "Specimen"
  * entry MS
    * insert SliceElement( #profile, $this )
  * entry contains 
      Specimen 0..* MS
  * entry[Specimen] only Reference(Specimen)


//////////////////////////////// SERVICE REQUEST SECTION ////////////////////////////////////////
* section[serviceRequest]
  * ^short = "ServiceRequest"
  * code = $loinc#64286-8 "Diagnostic imaging order"
  * entry MS
    * insert SliceElement( #profile, $this )
  * entry only Reference(ServiceRequest)

/////////////////////////////////// COVERAGE SECTION ////////////////////////////////////////////
* section[coverage]
  * ^short = "ServiceRequest"
  * entry MS
    * insert SliceElement( #profile, $this )
  * entry only Reference(http://hl7.org/fhir/StructureDefinition/Coverage)

/////////////////////////////////// APPOINTMENT SECTION /////////////////////////////////////////
* section[appointment]
  * ^short = "Appointment"
  * entry MS
    * insert SliceElement( #profile, $this )
  * entry only Reference(http://hl7.org/fhir/StructureDefinition/Appointment)
