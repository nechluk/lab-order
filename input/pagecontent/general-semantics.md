
In the field of medical imaging, the Digital Imaging and Communications in Medicine (DICOM) protocol and format are standardly used for data archiving and exchange. This defines, for example, individual imaging modalities and is used for data archiving in the Picture Archiving and Communication System (PACS).

DICOM is linked to the SNOMED-CT clinical terminology system. Other standards and nomenclatures are shared by imaging methods with other patient documentation documents: MKN-10 (national representation of international: ICD-10), HL7, and the like.

### General Semantics

#### Entities

---

**Patient**

Information about the individual receiving healthcare services. This profile defines the structure of the patient, localizing fundamental concepts, including identifiers and terminology, for use in the Czech context.

**Healthcare Provider**

Information about the individual providing healthcare services. The profile identifies the healthcare provider within an organization, and it is possible to assign a role to the person delivering the healthcare service, which can be defined through one of two coding systems: KRZP or SNOMED.

**Healthcare Service Provider**

This profile defines the way organizations are represented in the context of the Czech national interoperability project. In this document, it is abbreviated as healthcare facility.

#### Objects

---

**Medical Device**

This profile includes constraints applied to the Device within the context of the Czech national interoperability project. It describes the device in the role of "observer" or "performer." This profile specifies the requirements for the Device used during examinations.

**Medical Product**

This profile presents the requirements for the Device within the context of the Czech national interoperability project. The type of medical product is preferably specified using a SNOMED CT code. The absence of information or the absence of a medical product is explicitly indicated using codes from the following registry: https://fhir.org/guides/stats2/codesystem-hl7.fhir.uv.ips-absent-unknown-uv-ips.html.

**Components**

In the context of this document, a component refers to a part of the data structure that is common to multiple objects. 

### Content

#### Order Form Header

##### Order Information
This mandatory section includes the required order identifier (A.1.10.1) and the date and time of its creation (A.1.10.2) — if the information section is established, it must contain these details. Optional items include the urgency of the order (from the perspective of Indicating Physician) expressed by an international code from the HL7 system (https://hl7.org/fhir/valueset-request-priority.html), which can have values such as routine (normal priority), urgent (urgent), asap (as soon as possible), and stat (immediate, STATIM) (A.1.10.3). Another optional item is the requested date and time of the examination (A.1.10.4, which does not refer to the actual booking date but opens the possibility, for example, to send an order form with a request for scheduling on the day when the patient has an outpatient clinical check-up).

The final optional item is information for the patient, such as fasting requirements, medication discontinuation etc.

##### Examination Appointment (Visit)
This mandatory section includes confirmed information from the examining healthcare facility about the appointment, such as when the patient is scheduled, where they need to go, and may include free text comments. The use of these structures assumes that it will be possible, after the order has been received by the examining healthcare facility, to "supplement" this information or create an updated version of the order form that includes this information.

#### Body of the Order Form

##### Clinical Information (Anamnesis)
This required section includes biometric data (weight and height), other clinically relevant information in free text or optionally with an MKN-10 code (e.g. claustrophobia in an MRI order) or Orphacode, medication information (relevant, for example, before a contrast examination on CT), implant information (for MRI), and urgent information (allergies, intolerances, or any other warnings in free text). The urgent information module is a component common to other models. Additional formalized data can help convey any information about the patient (e.g., week of gestation before a gynecological ultrasound examination). Additionally, clinical information should include any patient limitations (e.g. wheelchair-bound, bedridden, blind, hearing impaired).

##### Justification for Examination (Reason for Order)
This required section includes the indicative diagnosis (A.2.2.1), which is required by health insurance companies for service reimbursement. Additional items include the clinical question (an interrogative sentence that should end with a question mark and should be answerable based on the imaging examination) which can also be assigned a SNOMED CT code, and the reason for the order (essentially a brief summary, again with the option to encode the information). The advantage of using a code in the future could be the integration with existing information in the Indicating Physician's system within the NIS (Nursing Information System), thereby eliminating the need to re-enter this information.

##### Order/Examination Data Elements

This required section includes the data elements of the requested examination, and it consists of the six most important items:

1) Test Code - A code (NČLP) for the requested test.
2) Test Name - Full name of the requested test, per chosen code list.
3) System & Specification - For microbiology or similar, indicating the sample system and subspecification.
4) Additional Sub-specification - Free-text clarification of the above system.
5) Examination Procedure - Measurement principle or method (SNOMED CT / NCLPPROC).
6) Additional Procedure Specification - Further detail if the procedure is general or requires precise instructions.
7) Accreditation - Indicates if the test must be performed in an accredited lab.
8) Urgency - Priority (stat, routine, etc.) if it differs from the overall order.
9) Note - Any text note for the lab about this test.

##### Examination Appointment (Visit)
This required section includes confirmed information from the examining Healthcare Facility about the appointment, such as when the patient is scheduled, where they should go, and may include free text comments (e.g., MRI on the 2nd floor of the main building). The use of these structures assumes that, after the examination request is received by the Healthcare Facility, it will be possible to "supplement" or update the order to include this information, thereby creating an updated version of the order form.

##### Attachments
This optional section allows for the inclusion of any additional sources of information, such as outpatient reports, discharge summaries (in digital form or even just a scan), data provided by the patient, etc. While this section is not mandatory, it provides the flexibility to attach various types of files or documents to supplement the order form with relevant information.

##### Sample Information (Specimen)
This required section is consistent with laboratory procedures. The term "container" refers to any kind of "packaging" for the sample and does not indicate a specific device. In radiology, it sometimes occurs that we image a biopsy sample (e.g., obtained from a breast biopsy or intraoperatively). Although most facilities do not formally create an order for this type of image, it is process-wise appropriate to account for this possibility. Therefore, we propose including this section in the standard, even though we anticipate it may not be widely used initially.

##### Payment
This section allows for specification if part of the examination is covered differently than the majority of it (e.g. special reconstructions not covered by insurance). While this section is required to be present, it is not mandatory to fill it out, meaning it can be left blank if not applicable.

A free text comment on payment can be used when there is a need to specify which part of the care is covered by a different payer. This allows for clarity and transparency regarding the financial responsibilities and arrangements associated with the provided healthcare services.

##### Clinical Encounter (Encounter)
This optional section allows for linking the order form to a specific clinical encounter, such as an outpatient visit during which the order was created. Although this information is not crucial for the examination itself, it provides a way to connect the order with outpatient or other reports that may contain relevant information not included on the order form by the clinician. This linkage can enhance the context and understanding of the patient's clinical situation and ensure all pertinent details are considered in the diagnostic or treatment process.

##### Appointment
This section contains references to scheduled care appointments that follow from this order form. Besides the ID, it should include the name of the appointment, with other details being automatically populated from the referenced order. For example, an entry may state "Consultation in Neurosurgery," and by using the ID, one can determine that it is scheduled at the Central Military Hospital on March 15, 2040, at 16:15. This facilitates efficient tracking and management of the patient’s care pathway.

##### Other Supporting Information
This section is intended for additional supportive information, such as specifying when the results will be needed (for subsequent care, surgery etc.). It is included to enable linking not only to follow-up appointments or outpatient examinations (as facilitated by the appointment section above) but also to other significant events, such as a scheduled surgery date. Similar to the previous example, necessary details should be retrieved based on an ID, allowing the user to see, for instance, "Gallbladder surgery on March 16, 2040, at VFN Prague." This helps ensure relevant scheduling and planning information is readily accessible to healthcare providers.