// -------------------------------------------------------------------------------				
//  Logical Model				ClinicalEvent.fsh
// -------------------------------------------------------------------------------				
Logical: LabOrderClinicalEventCz				
Id: ClinicalEvent
Title: "A.2.3 - Clinical event (Encounter)"				
Description:  """Information about the clinical event to which the order relates"""		

* insert SetFmmandStatusRule( 1, draft)	

* id 0..* Identifier "A.2.3.1 - Clinical evend identifier" """The unique, globally unique identifier of the clinical event to which the order relates."""
* type 0..1 CodeableConcept "A.2.3.2 - Clinical event type" """Type of clinical event according to the type codebook (e.g. hospitalization, outpatient visit, stress test, diabetic screening, etc.) including specification."""
* info 1..1 string "A.2.3.3 - Additional information about clinical event" """Type of services provided, period or duration of clinical event, link to other clinical events, etc."""
		
//--- END				
//--- END				
//--- END				