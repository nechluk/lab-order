Profile: CZ_Attachment
Parent: Media
Id: cz-attachment
Title: "Attachment Laboratory Order (CZ)"
Description: "Czech profile for attachment. "

* insert SetFmmandStatusRule ( 0, draft )

* content
* content.contentType MS
* content.language MS
* content.url MS
* content.title MS
* content.creation MS

* basedOn only Reference(CZ_ServiceRequest or CarePlan)

* subject only Reference(CZ_PatientCore or CZ_PractitionerCore or CZ_PractitionerRoleCore or Group or Device or CZ_SpecimenLab or CZ_LocationCore)

* operator only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_OrganizationCore or CareTeam or CZ_PatientCore or Device or CZ_RelatedPersonCore)