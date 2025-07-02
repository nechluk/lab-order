The electronic laboratory test request form primarily serves healthcare professionals who need to order laboratory tests for patients as a replacement for the traditional paper request form. It is typically used by general practitioners, specialists, hospital physicians, outpatient healthcare facilities, and other healthcare providers. However, it can also be used by any individual acting as a self-payer and test requester.

### Common Actors

#### **Patient**
- A person receiving healthcare services for the purpose of diagnosis, treatment, prevention, or monitoring of their health condition.

#### **Requester**
- A person or institution submitting a request for laboratory testing from a patient’s biological material. The requester is responsible for the accuracy and completeness of the request. Typically, this is a physician or a healthcare facility that needs the lab results for diagnosis, treatment, or monitoring. The quality and precision of the provided information impact not only the lab analysis but also the interpretation of results and subsequent patient care. A requester may also be a self-paying individual who independently seeks lab testing services available on a commercial basis.

#### **Collection Site**
- A location where the biological sample is taken from the patient or where the patient delivers the collected material (as instructed by the requester). A collection site can be an independent entity handling only sampling and transportation to the lab or an integral part of the laboratory.

In both cases, the collection site must correctly manage tasks related to the collection process (proper sampling, labeling each collection container with a unique ID, filling in and updating the request form, etc.).

#### **Electronic Order System**
- An information system within healthcare IT infrastructure that enables the electronic creation, transmission, and management of lab or other diagnostic test requests. It replaces traditional paper forms and significantly supports healthcare digitalization and communication between healthcare providers and labs. In hospitals, it is usually a module within the Hospital Information System (HIS); for GPs, it is part of their Practice Management System (PMS); and for those lacking such systems, some laboratories offer web-based applications. It may also refer to a central system like the eOrder platform.

#### **Collection Site Information System**
- A specialized IT system used in sample collection centers of healthcare providers or laboratory chains, aimed at supporting and streamlining the processes associated with collecting biological material for lab testing. These include order management, generation of unique identifiers for collection containers, sample tracking, logistics, and planning. Often integrated into the HIS.

#### **GP Information System**
- Software tailored for general practitioners, aimed at digitizing and streamlining administrative and clinical workflows in medical practices, improving patient management and supporting diagnosis and treatment. It includes features for order management and lab communication.

#### **Laboratory Information System (LIS)**
- Specialized software managing and controlling processes within clinical, diagnostic, and other labs. It handles complete data processing (from request intake to result reporting), streamlines sample-related activities, communicates with pre-analytical devices and analyzers, supports various control levels, minimizes errors, and improves communication between labs and healthcare providers.

#### **Hospital Information System (HIS)**
- Software that supports and records all medical processes and workflows in a hospital, ensuring interdisciplinary communication and collaboration. It typically includes a module for creating electronic lab requests to facilitate lab communication.

#### **Central Order Repository**
- A component of the eOrder system responsible for storing requests and providing services related to their further processing. When orders are sent to the repository, it should:

- Accept both targeted (addressed to a specific facility) and untargeted requests (where the patient or authorized entity selects the facility); if only untargeted orders are sent to the repository, this point is irrelevant.
- Accept both enumerated requests (specific tests according to NČLP, with patient/sample info) and problem-oriented requests (clinical questions or problems with detailed clinical information).
- Assign a unique repository ID to each request and securely return it to the sender (used solely for repository communication, not as the order or clinical event ID).
- Store the request for the necessary period based on the nature of the order (e.g., delayed execution).
- Allow assigning IDs to collection sites for identifying individual tubes (see section 2.4.6); include the option to pre-generate tube identifiers for use during service outages.

_Cyclic repetitions of a request (e.g., recurring tests) should be managed by the requester’s system to ensure correct assignment of order IDs and proper linking. Recycling of requests in the repository is discouraged._

- Track whether the request was retrieved by the performing facility and notify the sender accordingly (e.g., if marked as problematic, incomplete, incorrect, or not retrieved by the deadline).
- Indicate in the request if it is sent to the repository (fully or as a copy) and specify a deadline for execution (deadline for pickup and processing initiation).

Note: Cooperation with master and potentially other central registries is assumed.

### Common Assumptions

All use-cases described assume the following prerequisites:

- The requester must have access to the electronic ordering system (via HIS, mobile or web app) to create a request delivered to the lab or central repository.
- A list of laboratories supporting electronic ordering must be available.
- A list of laboratory services (tests) available for electronic ordering must be agreed upon and accessible.
- Especially for untargeted requests, there must be a way to search for a lab capable of fulfilling the order.
- A secure communication channel between requester, collection site, lab (or repository) must exist.
- If used, the central repository must handle all necessary aspects (ID assignment, retrieval tracking, request storage, etc.).

For on-site collection:

- The lab must have access to the order system or central repository.
- A list of suitable collection sites must be available.

### Use-Case Descriptions

#### **UC-01: Targeted Lab Order with Sample Collection at Requester's Site**

<table><tbody>
<tr><th><p>Title</p></th><th><p>UC-01 Laboratory Test Order for a Specific Laboratory (Directed) with Specimen Collection at the Requester's Site</p></th></tr>
<tr><td><p>Purpose</p></td><td><p>Healthcare providers, patients, and other healthcare clients request laboratory services by creating a laboratory test order specifying the laboratory service to be provided. This use case describes the process of directed electronic ordering of laboratory tests (the ordering party knows which laboratory will provide the service) with specimen collection at the requester's premises.</p></td></tr>
<tr><td><p>Significance</p></td><td><p>Directed laboratory test orders are used in agreement with the patient (so as not to restrict the patient's right to freely choose a healthcare provider) in cases where the patient cannot decide on the choice of laboratory. This applies particularly when a random choice by the patient could lead to reduced quality of care or harm (e.g., due to insufficient comparability of results).</p></td></tr>
<tr><td><p>Domain</p></td><td><p>Laboratories</p></td></tr>
<tr><td><p>Scope</p></td><td><p>National/Regional/Local</p></td></tr>
<tr><td><p>Context</p></td><td><p>Currently, a significant portion of laboratory test orders is still processed through paper-based ordering systems.</p><p>Some hospital and outpatient laboratories allow electronic laboratory test ordering, in addition to paper requests, based on the DASTA data standard. Electronic ordering systems are integrated into many hospital information systems and some general practitioner systems. Some laboratories also enable ordering via specialized web applications. All existing ordering systems are currently designed for directed orders – users place orders only for a specific laboratory.</p></td></tr>
<tr><td><p>Information</p></td><td><p>Laboratory Order</p></td></tr>
<tr><td><p>Actors</p></td><td><ul><li>See section Common Actors</li></ul></td></tr>
<tr><td><p>Assumptions</p></td><td><ul><li>See section Common Assumptions</li></ul></td></tr>
<tr><td><p>Functional Process Description</p></td><td><ul><li>See section Functional Process Description – Common Part</li></ul><p>Elements differing from the common part are listed below the table in the section Functional Process Description – Specific Part for this Use Case.</p></td></tr>
</tbody></table>

##### Functional process description – use-case specific part:

Differs from the general functional description as follows:

3. **Requester determines method and location of sample collection.**

The requester selects an internal collection site and informs the patient of the time and location. Common scenarios:

- Immediate collection at the point of request – outpatient clinic or inpatient ward
- Scheduled outpatient check-up
- Scheduled inpatient collection

The healthcare facility uses the HIS or specialized systems during collection.

#### **UC-02: Targeted Lab Order with Sample Collection at Collection Site**

<table><tbody>
<tr><th><p>Title</p></th><th><p>UC-02 Laboratory Test Order for a Specific Laboratory (Directed) with Specimen Collection at a Collection Site</p></th></tr>
<tr><td><p>Purpose</p></td><td><p>Healthcare providers, patients, and other healthcare clients request laboratory services by creating a laboratory test order specifying the laboratory service to be provided. This use case describes the process of directed electronic ordering of laboratory tests (the ordering party knows which laboratory will provide the service) with specimen collection at a collection site outside the requester's premises.</p></td></tr>
<tr><td><p>Significance</p></td><td><p>Directed laboratory test orders are used in agreement with the patient (so as not to restrict the patient's right to freely choose a healthcare provider) in cases where the patient cannot decide on the choice of laboratory. This applies particularly when a random choice by the patient could lead to reduced quality of care or harm (e.g., due to insufficient comparability of results).</p></td></tr>
<tr><td><p>Domain</p></td><td><p>Laboratories</p></td></tr>
<tr><td><p>Scope</p></td><td><p>National/Regional/Local</p></td></tr>
<tr><td><p>Context</p></td><td><p>Currently, a significant portion of laboratory test orders is still processed through paper-based ordering systems.</p><p>Some hospital and outpatient laboratories allow electronic laboratory test ordering, in addition to paper requests, based on the DASTA data standard. Electronic ordering systems are integrated into many hospital information systems and some general practitioner systems. Some laboratories also enable ordering via specialized web applications. All existing ordering systems are currently designed for directed orders – users place orders only for a specific laboratory.</p></td></tr>
<tr><td><p>Information</p></td><td><p>Laboratory Order</p></td></tr>
<tr><td><p>Actors</p></td><td><ul><li>See section Common Actors</li></ul></td></tr>
<tr><td><p>Assumptions</p></td><td><ul><li>See section Common Assumptions</li></ul></td></tr>
<tr><td><p>Functional Process Description</p></td><td><ul><li>See section Functional Process Description – Common Part</li></ul><p>Elements differing from the common part are listed below the table in the section Functional Process Description – Specific Part for this Use Case.</p></td></tr>
</tbody></table>

##### Functional process description – use-case specific part:

3. **Requester determines method and location of sample collection.**

Upon agreement with the patient, the requester chooses a suitable external collection site. The choice depends on the availability of sites able to collect and transport samples to the designated lab while maintaining quality. Patient preference should be considered.

The patient receives an electronic order ID (paper or digital, ideally via a mobile app connected to the central repository).

#### **UC-03: Untargeted Lab Order with Collection at Laboratory**


<table><tbody>
<tr><th><p>Title</p></th><th><p>UC-03 Electronic Laboratory Test Order without Specified Laboratory (Undirected) with Specimen Collection at the Laboratory</p></th></tr>
<tr><td><p>Purpose</p></td><td><p>Healthcare providers, patients, and other healthcare clients request laboratory services by creating a laboratory test order specifying the laboratory service to be provided. This use case describes the process of undirected electronic ordering of laboratory tests (the laboratory will be selected later in the workflow by the ordering party or by the patient/client) with specimen collection at the laboratory premises.</p></td></tr>
<tr><td><p>Significance</p></td><td><p>Undirected laboratory test orders make use of the patient’s right to freely choose a healthcare provider, allowing the patient to choose the laboratory that will perform the tests. This is suitable for tests where there is no significant risk from a lack of standardization across laboratories and where result comparability is not problematic. This choice should always be preceded by consultation with a physician.</p><p>The “laboratory with collection point” setup is suitable for unstable analytes, where it is necessary to minimize the time between collection and laboratory analysis. This option is used when the patient insists on undirected collection and processing and there is a facility capable of ensuring the process meets the required quality.</p></td></tr>
<tr><td><p>Domain</p></td><td><p>Laboratories</p></td></tr>
<tr><td><p>Scope</p></td><td><p>National/Regional/Local</p></td></tr>
<tr><td><p>Context</p></td><td><p>Currently, a significant portion of laboratory test orders is still processed through paper-based ordering systems.</p><p>Some hospital and outpatient laboratories allow electronic laboratory test ordering, in addition to paper requests, based on the DASTA data standard. Electronic ordering systems are integrated into many hospital information systems and some general practitioner systems. Some laboratories also enable ordering via specialized web applications. All existing ordering systems are currently designed for directed orders – users place orders only for a specific laboratory.</p><p>None of these systems currently support undirected ordering, mainly due to the lack of infrastructure for retrieving an electronic order from any collection site chosen by the patient.</p></td></tr>
<tr><td><p>Information</p></td><td><p>Laboratory Order</p></td></tr>
<tr><td><p>Actors</p></td><td><ul><li>See section Common Actors</li></ul></td></tr>
<tr><td><p>Assumptions</p></td><td><ul><li>See section Common Assumptions</li></ul></td></tr>
<tr><td><p>Functional Process Description</p></td><td><ul><li>See section Functional Process Description – Common Part</li></ul><p>Elements differing from the common part are listed below the table in the section Functional Process Description – Specific Part for this Use Case.</p></td></tr>
</tbody></table>

##### Functional process description – use-case specific part:

3. **Patient finds a suitable collection site.**

Using the central repository or a linked mobile app, the patient searches for a lab with a collection site nearby capable of performing all necessary tests and sampling.

The lab must publish its electronic service catalog to the repository, enabling filtering by criteria (distance, hours, speed) to show only capable facilities.

#### **UC-04: Untargeted Lab Order with Collection at Collection Site**
<table><tbody>
<tr><th><p>Title</p></th><th><p>UC-04 Electronic Laboratory Test Order without Specified Laboratory (Undirected) with Specimen Collection at a Collection Site</p></th></tr>
<tr><td><p>Purpose</p></td><td><p>Healthcare providers, patients, and other healthcare clients request laboratory services by creating a laboratory test order specifying the laboratory service to be provided. This use case describes the process of undirected electronic ordering of laboratory tests (the laboratory will be selected later in the workflow by the ordering party or by the patient/client) with specimen collection at a collection site outside the requester’s premises.</p></td></tr>
<tr><td><p>Significance</p></td><td><p>Undirected laboratory test orders make use of the patient’s right to freely choose a healthcare provider, allowing the patient to choose the laboratory that will perform the tests. This is suitable for tests where there is no significant risk from a lack of standardization across laboratories and where result comparability is not problematic. This choice should always be preceded by consultation with a physician.</p></td></tr>
<tr><td><p>Domain</p></td><td><p>Laboratories</p></td></tr>
<tr><td><p>Scope</p></td><td><p>National/Regional/Local</p></td></tr>
<tr><td><p>Context</p></td><td><p>Currently, a significant portion of laboratory test orders is still processed through paper-based ordering systems.</p><p>Some hospital and outpatient laboratories allow electronic laboratory test ordering, in addition to paper requests, based on the DASTA data standard. Electronic ordering systems are integrated into many hospital information systems and some general practitioner systems. Some laboratories also enable ordering via specialized web applications. All existing ordering systems are currently designed for directed orders – users place orders only for a specific laboratory.</p><p>None of these systems currently support undirected ordering, mainly due to the lack of infrastructure for retrieving an electronic order from any collection site chosen by the patient.</p></td></tr>
<tr><td><p>Information</p></td><td><p>Laboratory Order</p></td></tr>
<tr><td><p>Actors</p></td><td><ul><li>See section Common Actors</li></ul></td></tr>
<tr><td><p>Assumptions</p></td><td><ul><li>See section Common Assumptions</li></ul></td></tr>
<tr><td><p>Functional Process Description</p></td><td><ul><li>See section Functional Process Description – Common Part</li></ul><p>Elements differing from the common part are listed below the table in the section Functional Process Description – Specific Part for this Use Case.</p></td></tr>
</tbody></table>


##### Functional process description – use-case specific part:

3. **Patient finds a suitable collection site.**

Using the central repository or mobile app, the patient finds a collection site that collaborates with labs and meets the requirements for sample collection and subsequent analysis.

Two scenarios:

- The site is an independent entity handling only collection and transport
- The site is part of the analytical laboratory

In both cases, the site must publish a catalog of services to the repository to allow filtering by user criteria.

**Addendum to UC**

In practice, many other situations and combinations arise not covered by UC‑01 to UC‑04, e.g.:

- A stone collected by the patient sent by post to a specialized lab
- Weekend collections stored in a fridge and sent later
- Follow-up tests on previously collected samples
- Part of the tests performed by a reference lab

Special cases include:

- Transfusion medicine, where test orders include blood product requests
- Microbiology orders with informal additional conditions and information, requiring dialog between lab and requester and follow-up orders based on intermediate results or clinical updates

These must be resolved operationally based on the situation and are not part of this document.
