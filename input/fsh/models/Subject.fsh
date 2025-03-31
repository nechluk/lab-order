Logical: SubjectImagingOrderCz
Id: SubjectCz
Title: "A.1.1 - Identification and A.1.2 - related contact information of the Patient/subject"
Description: """Laboratory Order - Laboratory Order subject data element - A.1.1 and A.1.2"""

* insert SetFmmandStatusRule ( 1, draft )

* subjectIdentification 1..1 BackboneElement "A.1.1 - Identification of the patient/subject" """Identification of the patient/subject"""
* subjectIdentification.given 1..* string "A.1.1.1 - Given name" """The given name/first name of the patient (also known as forename or first name). This field can contain more than one element."""
* subjectIdentification.family 1..* string "A.1.1.2 - Family name/surname" """The family name/surname/last name of the patient. This field can contain more than one element or multiple fields could be present."""
* subjectIdentification.birthDate 1..1 dateTime "A.1.1.3 - Date of birth" """Complete date, following the ISO 8601."""
* subjectIdentification.identifier 1..* Identifier "A.1.1.4 - National healthcare patient ID" """An identifier of the patient that is unique within a defined scope. Example: National ID (birth number) for a Czech patient. Multiple identifiers could be provided"""
* subjectIdentification.nationality 0..* CodeableConcept "A.1.1.5 - Nationality" """Nationality of the patient."""
* subjectIdentification.gender 1..1 CodeableConcept "A.1.1.6 - Gender" """This field must contain a recognised valid value for administrative gender. If different, physiological gender should be communicated elsewhere in the relevant clinical information section."""
* subjectIdentification.countryOfAffiliation 0..1 CodeableConcept "A.1.1.7 - Country of affiliation" """Name of country of affiliation"""

* subjectContact 0..1 BackboneElement "A.1.2 - Patient/subject related contact information" """Patient/subject related contact information"""
* subjectContact.personalContact 0..1 BackboneElement "A.1.2.1 - Patient address" """Patient address"""
* subjectContact.personalContact.address 0..* Address "A.1.2.1.1 - Address" """Mailing and home or office addresses. The addresses are always sequences of address parts (e.g. street address line, country, postcode, city) even if postal address formats may vary depending on the country. An address may or may not include a specific use code; if this attribute is not present it is assumed to be the default address useful for any purpose."""
* subjectContact.personalContact.telecom 0..* ContactPoint "A.1.2.1.2 - Telecom" """Telecommunication contact information (addresses) associated with a person, such as phone number, email, or messaging service. Multiple telecommunication addresses might be provided."""

* subjectContact.preferredHP 0..* BackboneElement "A.1.2.2 - Preferred health professional (HP) - This section can be repeated and linked to any specific information in the document, for example a link between a rare disease problem and the rare disease specialist responsible for the care of the individual patient (this section)." """Preferred health professional (HP) - This section can be repeated and linked to any specific information in the document, for example a link between a rare disease problem and the rare disease specialist responsible for the care of the individual patient (this section)."""
* subjectContact.preferredHP.identifier 0..* Identifier "A.1.2.2.1 - Identifier of the HP" """An identifier of the health professional that is unique within a defined scope. Example: National health professional ID. Multiple identifiers could be provided."""
* subjectContact.preferredHP.name 1..1 HumanName "A.1.2.2.2 - Name of the HP" """Name of the health professional that has been treating or taking responsibility for the patient.[the structure of the name will be the same as for the patient (given name, family name / surname)]"""
* subjectContact.preferredHP.role 0..* CodeableConcept "A.1.2.2.3 - Role of the HP" """Health professional role. Multiple roles could be provided."""
* subjectContact.preferredHP.organization 0..1 BackboneElement "A.1.2.2.4 - HP Organisation" """Health professional organisation"""
* subjectContact.preferredHP.address 0..1 Address "A.1.2.2.5 - Address" """Mailing and home or office addresses. The addresses are always sequences of address parts (e.g. street address line, country, postcode, city) even if postal address formats may vary depending on the country. An address may or may not include a specific use code; if this attribute is not present it is assumed to be the default address useful for any purpose."""
* subjectContact.preferredHP.telecom 0..* ContactPoint "A.1.2.2.6 - Telecom" """Telecommunication contact information (addresses) associated with a person, such as phone number, email, or messaging service. Multiple telecommunication addresses might be provided."""

* subjectContact.contactPerson 0..* BackboneElement "A.1.2.3 - Contact person/ legal guardian (multiple contacts could be provided)" """Contact person/ legal guardian (multiple contacts could be provided)"""
* subjectContact.contactPerson.role 0..* CodeableConcept "A.1.2.3.1 - Role of that person" """Role of the contact person: legal guardian, next of kin, other person to contact."""
* subjectContact.contactPerson.relationship 0..1 CodeableConcept "A.1.2.3.2 - Relationship level" """Relationship type with the patient (e.g. father, wife, daughter)"""
* subjectContact.contactPerson.given 1..* string "A.1.2.3.4 - Given name" """Given name of the contact person/guardian . This field can contain more than one element."""
* subjectContact.contactPerson.family 1..* string "A.1.2.3.5 - Family name/surname" """Family name of the contact person. This field can contain more than one element [the structure of the name will be the same as for the patient (given name, family name / surname)].."""
* subjectContact.contactPerson.address 0..* Address "A.1.2.3.6 - Address" """Mailing, home or office addresses. The addresses are always sequences of address parts (e.g. street address line, country, postcode, city) even if postal address formats may vary depending on the country. An address may or may not include a specific use code; if this attribute is not present it is assumed to be the default address useful for any purpose."""
* subjectContact.contactPerson.telecom 0..* ContactPoint "A.1.2.3.7 - Telecom" """Telecommunication contact information (addresses) associated with a person, such as phone number, email, or messaging service. Multiple telecommunication addresses might be provided."""
* subjectContact.contactPerson.organization 0..1 BackboneElement "A.1.2.3.8 - Contact person organisation" """Contact person organisation information."""