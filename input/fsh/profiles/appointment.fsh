Profile: CZ_Appointment
Parent: http://hl7.org/fhir/StructureDefinition/Appointment
Id: cz-appointment
Title: "Appointment (CZ)"
Description: "Czech profile for appointment. "

* insert SetFmmandStatusRule ( 0, draft )

* identifier 0..1
* status from $hl7AppointmentStatus
* description 1..1
* created 0..1
* minutesDuration 0..1
* comment 0..1
* patientInstruction 0..1
* participant.actor only Reference(CZ_LocationCore)