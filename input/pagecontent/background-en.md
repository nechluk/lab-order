In the current state of electronic laboratory test ordering, we can observe the needs and capabilities of domestic information systems as well as the practices that have evolved continuously over the years.

**The future state must maintain compatibility with the current state while also addressing the needs of cross-border cooperation and interoperability projects within the EU and globally.**

**Therefore, the current state must be viewed in relation to the future state – ensuring the necessary compatibility and continuity.**

### Why use an electronic lab order?

One of the key processes in the pre-analytical phase is the creation of a test order and subsequent registration of laboratory samples into the laboratory information system (LIS), i.e., entering the necessary data – patient identification, sample types, requested analytes, etc. This process can be automated by introducing electronic lab orders.

The first use of electronic orders in Czech laboratories dates back to the second half of the 1990s. Nevertheless, even today, their adoption does not reflect the state of available technology. The implementation of electronic lab orders addresses major shortcomings of the manual process – it is faster and eliminates errors caused by manual data transcription from paper into the LIS. Moreover, a well-designed electronic ordering application can eliminate other errors already at the point of sample collection. It allows for validation of data completeness and accuracy, determination of required material volume, selection of collection tubes (containers), and warnings about special conditions for certain analytes. With proper NIS-LIS cooperation, sample registration can be reduced to a mere scanner beep, with automatic sample categorization, alerts for special analytes or timing inconsistencies, label printing for aliquots, routing of primary tubes, etc. Additionally, individual databases record who, when, and what – order creation, closure, and submission, sample collection time, transport, and reception at the lab.

### Description of the current state and resulting requirements for the electronic lab order

**Electronic laboratory test orders are currently implemented in various ways depending on several factors. The resulting electronic lab order must support these methods, particularly considering:**  

**Patient collection method:**

- The lab order may be sent along with collected samples. This includes the scenario where only the order is sent while the sample is already stored in the lab from a previous test, enabling additional ordering.
- The lab order may serve as a request for the laboratory to perform the sample collection itself. This includes stress tests carried out in the lab.
- The lab order may request bedside sample collection, typically for selected tests and inpatient facilities.

**Place of test performance:**

The requester does not need to distinguish whether the addressed laboratory performs the requested tests directly or uses subcontracted or reference labs. Although this relates to lab-to-lab communication, it is addressed through the structure of the electronic lab order:

- Some tests are performed by contracted laboratories.
- Some tests, for legal reasons, must be referred to reference laboratories.

The electronic order must provide sufficient data to allow correct linking of partial requests sent to other laboratories. Only this ensures safe identification of returned results, proper assignment, and further related interactions.

**Laboratory specialization:**

Orders may be directed either to a specific lab of appropriate specialty or to a “central intake” unit that handles incoming orders for multiple affiliated labs. The intake unit takes care of routing orders and samples accordingly.

Specializations currently in scope include: biochemistry, hematology, transfusion medicine, immunology and allergology, pharmacology, toxicology, microbiology (also including virology, mycology, parasitology), serology, genetics, cytology, and anthropometry.

**Enumerative vs. problem-oriented orders:**

The electronic order must support two basic types of requests:

- **Enumerative orders** contain explicit tests selected from a coding system (e.g., NČLP), typical for routine biochemistry or hematology.
- **Problem-oriented orders** describe a clinical question to be addressed with laboratory assistance (e.g., microbiology or cytology). A dialogue between the requester and the lab is anticipated.

Both order types may include structured administrative data and additional structured information about the patient or sample (see Chapter 3.6 on terminology choices).

**Specific requirements for additional accompanying information:**

The electronic lab order must also reflect the specific needs of various disciplines:

- **Microbiology**  
  Microbiology includes two distinct approaches to ordering, execution, and data structures. Detection of specific agents is done enumeratively like in other fields, but culture-based testing requires a problem-oriented approach. Subsequent tests depend on the agent identified and may involve decisions by microbiology specialists or consultation with the requester. All actions align with the patient’s current status rather than the original order or collection date.

- **Genetics**  
  Similarly to microbiology, standard somatic mutation testing is handled enumeratively, whereas germline genome investigations require a different approach and more detailed patient data (problem-oriented).

- **Transfusion medicine**  
  This includes not only orders for testing but also for transfusion products. The process must support transmission of structured data such as transfusion history, product specifications, and special testing requirements.

- **Cytology and pathology**  
  These specialties often require both enumerative and problem-oriented orders, along with unique information necessary to perform the examination.

Each discipline may demand specific information in addition to standard administrative data (e.g., age, sex, diagnosis, weight, height). Examples:

- Pharmacology requires detailed medication history.
- Microbiology needs sample site, information on antimicrobials and vaccinations, and collection methods.
- Some biochemistry tests require fluid volumes over time.
- Other tests require information about pregnancy, ovulation, or transfusions.

These requirements are documented in each lab’s Laboratory Handbook. Missing information may compromise test quality or even prevent testing. While many of these data elements are standardized in communication formats, others are still awaiting formalization.

A reliable electronic order system must accommodate all of these needs.

### Workflow of the current electronic lab order

In the ideal and simplest form, a lab order is sent, and test results are returned. In reality, various situations arise requiring a broader workflow approach.

The following phases may be considered – the diagram illustrates the complete current process, from ordering through processing to result delivery:

The electronic lab order must support all scenarios, such as:

- test order submission (test/procedure/service with parameters)
- additional test ordering after the original order (within a time window)
- order correction (within a time window)
- order cancellation (within a time window)


**Linking orders to incoming samples (materials):**

Test requests arrive electronically, and samples follow with variable time delay. If the lab performs the collection, it generates the samples. Orders must be linked to their samples.

Samples must be forwarded for processing with clear instructions on destination, processing steps, and measurements. Each sample must have a unique ID (see Chapter 2.4.6. Tube identification).

Electronic orders must support both targeted linking of tests to specific samples and letting the lab assign tests to samples. Both approaches can be combined in a single order.

Some tests require special handling of both samples and ordering process (e.g., microbiological cultures), governed by lab-specific SOPs.

**Addressability of lab orders:**

Currently, in the Czech Republic, it is not possible to create a non-addressed lab order – all orders are directed to specific facilities responsible for providing lab services. Patients thus have no real freedom in choosing their laboratory. This is compounded by the absence of a central order repository that could handle storage, retrieval, or validation.

An electronic lab order (together with a central repository system) must support both addressed and non-addressed order modes.

However, enabling non-addressed orders and patient choice introduces new challenges for quality assurance and communication (see Chapter 2.4 Discussion).
