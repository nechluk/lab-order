### Actors

**Patient**
A physical person who uses healthcare services and whose biological material is to be tested. This may include an insured patient under a healthcare provider or a self-paying individual (requesting the test at their own expense).

**Ordering Party (Ordering Physician)**
An individual or institution (typically a physician or healthcare facility) that issues the laboratory test request. Responsible for ensuring the request is justified, complete, and appropriate for the patient’s needs.

**Collection Site**
A location (an independent facility or part of a healthcare provider) where biological materials are collected from the patient. May also accept samples pre-collected by the patient (e.g., urine, stool). Ensures proper labeling and recordkeeping of the samples.

**Electronic Requisition System**
An information system that enables the creation, submission, and management of lab test orders in electronic form. Replaces traditional paper requests and improves communication between ordering parties, collection sites, and laboratories. Can be part of a hospital information system (NIS), GP software, or a web portal provided by the laboratory.

**Collection Site Information System**
Software used in collection centers (or embedded within healthcare providers) to manage received orders (search by identifier), assign unique IDs to samples, and handle logistics and transport of samples.

**General Practitioner Information System**
Software used in GP offices, typically featuring a module for creating electronic lab orders and receiving lab results, either directly from labs or via a central repository.

**Laboratory Information System (LIS)**
Specialized system in laboratories that manages the full range of lab processes: from receiving orders and samples, through processing, to reporting results. Also integrates with pre-analytical lines or analyzers.

**Hospital Information System (NIS)**
A comprehensive system managing patient records and administrative processes in a hospital. Usually contains multiple modules (e.g., lab requisitions, radiology requests, medication management). Often the source for creating electronic requests to various departments, including the laboratory.

**Central Requisition Repository**
A service that stores electronic lab requests, making them available for retrieval by authorized facilities. It can track whether a request has been picked up and by whom, whether there are errors, or whether the request wasn’t used within a certain time. It may also assign globally unique identifiers to requests.

### Use Cases
Below are four main scenarios covering “directed” vs. “undirected” lab requests and whether sample collection occurs at the ordering site, at an external collection site, or within the laboratory itself.

#### Directed Lab Order With On-Site Collection (at the Ordering Party)
**Scenario:**

The ordering party (e.g., a physician in a clinic or hospital ward) creates an electronic lab request in their system (NIS, GP system, etc.) and chooses a specific laboratory.

The patient’s sample is collected immediately on-site (e.g., in an outpatient clinic or ward).

Collection containers are labeled with a unique identifier right away.

The request is sent electronically to the lab, and the samples (with a paper guide for backup) are sent via transport.

The lab processes the samples and returns results to the ordering party. Any add-on tests or cancellations are handled via the same information system.

If issues arise (e.g., sample quality, insufficient volume), the lab informs the ordering party to resolve them.

#### Directed Lab Order With External Collection Site
**Scenario:**

The ordering party (physician) creates an electronic request targeting a specific laboratory, but the collection is not done by the ordering party.

The patient receives a unique requisition ID and visits the designated (or contracted) collection site associated with that lab.

The collection site staff use their system to find the request, verify the patient’s identity, and collect the sample(s).

The collected samples are labeled with a unique ID (matching or supplementing the order ID).

The collection site sends the updated request information and samples to the lab.

The lab receives and confirms sample status, then performs the tests.

Results are sent back to the ordering party. The collection site is informed of any issues or subsequent actions as needed.

#### Undirected Electronic Lab Order With Collection at the Laboratory
**Scenario:**

The ordering party creates an electronic requisition without specifying a particular lab (an “undirected” request) and uploads it to the central repository.

The patient selects a laboratory that offers both sample collection and the required testing (e.g., based on location, hours, or test availability).

The patient arrives at the lab with the unique requisition ID (or equivalent confirmation).

The lab retrieves the order from the central repository, verifies the patient, and performs the collection.

The samples are labeled, the lab itself performs the analysis, and results are returned electronically to the ordering party.

If problems occur (insufficient data on the request, unsuitable sample), the lab contacts the ordering party for resolution.

#### Undirected Electronic Lab Order With Collection at an External Collection Site
**Scenario:**

The ordering party creates an undirected requisition and stores it in the central repository.

The patient locates a collection site capable of handling the required tests (based on their location, preferences, etc.).

At the collection site, staff retrieve the requisition by its unique ID, verify the patient, and collect the sample(s).

The collection site updates the order (collection time, type of sample) and forwards the samples to whichever laboratory the patient or the site chooses (as long as it is capable of performing the tests).

The lab retrieves the matching request from the repository, verifies it against the sample, processes it, and sends results to the ordering party.

Any complications or add-on orders are managed through the system’s electronic processes (acceptance, collision/error handling, cancellation, etc.).