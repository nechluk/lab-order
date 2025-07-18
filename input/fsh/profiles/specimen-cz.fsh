Profile: CZ_SpecimenLab
Parent: CZ_Specimen
Id: cz-specimen
Title: "Specimen: Laboratory Order (CZ)"
Description: "Czech profile for a specimen in a laboratory order. In some laboratory order, specimen information is allowed to be minimal as many informations concerning the specimen are implied by the observations done."

* insert SetFmmandStatusRule ( 0, draft )

* collection MS

* container MS
* container.identifier MS
* container.type MS

* request only Reference(CZ_ServiceRequest)