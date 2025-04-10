Logical: DocumentMetadataOrderCz
Id: DocumentMetadataCz
Title: "A.1.8 - Document metadata"
Description: """Document metadata"""

* identifier 1..1 Identifier "A.1.8.1 - Document ID" """Unique identifier of the document"""
* type 1..1 CodeableConcept "A.1.8.2 - Document type" """Identifies the type of document at hand, e.g. Imaging order."""
* status 1..1 CodeableConcept "A.1.8.3 - Document status" """The status of the Imaging order. E.g., preliminary, final."""
* dateTime 1..1 dateTime "A.1.8.4 - Order date and time" """Date and time of the Imaging order creation."""
* title 1..1 string "A.1.8.5 - Document title" """Document title of the Imaging order."""
* custodian 1..1 BackboneElement "A.1.8.6 - Order custodian" """Organisation that is in charge of maintaining the order [this element will include organisation ID, name, address etc., as other elements describing organisations]."""
* confidentiality 1..1 CodeableConcept "A.1.8.7 - Confidentiality" """Level of confidentiality of the document. Implicit value is normal."""
* language 1..1 CodeableConcept "A.1.8.8 - Language" """Language in which the document is written. Language is expressed by the ISO language code."""
* version 0..1 string "A.1.8.9 - Version" """Version of the document"""