### Basic Principles of the Standard

The standard for the electronic laboratory order is based on the following principles:

- The main goal of the electronic laboratory order is to speed up and improve the accuracy of the entire laboratory test ordering process. Any additional objectives must be subordinate to this primary goal.
- The electronic laboratory order standard is highly structured, which enables error-free data transmission between the requester, the collection site, and the laboratory.
- Thanks to a high level of formalization, parts of the process can run automatically without operator intervention, thus eliminating human errors – assignment of identifiers, creation of unique identification labels, data completeness checks, automatic sample acceptance by the laboratory, etc.
- The high level of structuring allows the laboratory order to be tailored to different specialties, as it respects and addresses their specific needs.
- The interoperability of the electronic laboratory order also applies to the emerging European electronic laboratory order standard and the current Czech DS4 standard.
- Parts of the code lists and coding systems used in DS4 are mapped to internationally used code systems to ensure European and global interoperability.

### Terminology Selection

#### **Code list for test ordering and supplemental information sharing**

Formalized enumerative laboratory test orders and formalized transmission of basic patient and sample data are executed using code lists specified by the standard. In the Czech Republic, this is the National Laboratory Item Catalogue (NČLP), which has long been used with the DASTA standard and will continue to be used with the HL7 FHIR standard.

NČLP has been largely mapped to the international NPU coding system, and mapping to other global systems is ongoing. This allows for the “transformation” of foreign orders and results in both directions.

It is essential to use the current version of the NČLP correctly, with strict exclusion of non-NČLP items. Proper functioning of the electronic lab ordering system will therefore require rigorous version control of the data standard and all associated code systems.

**Sharing basic formalized patient information:**

For sharing formalized patient data in laboratory test orders, NČLP items classified in the ISLIP class (IS – patient information for lab orders) are used. These convey important information that may significantly affect test processing or interpretation (e.g., selection of reference ranges). Each NČLP item includes a detailed definition of its content.

**Sharing basic formalized information about the sample:**

To transmit formalized sample-related information, NČLP items classified in the ISLOD class (IS – sample information for lab orders) are used. Again, definitions explain what and how each item conveys information.

These basic formalized patient or sample details can accompany both enumerative and problem-oriented lab orders along with administrative data, and additional information may be sent either in structured form or as free text.

Enumerative, formalized laboratory test ordering uses NČLP items that differ in how they are executed. The following item types are used:

- Measured items (most common – routine test results)
- Calculated items (based on measured values)
- Calculated items specific to daily waste calculation (or other time periods)
- Group orders (e.g., multiplex panels like blood count, differential)
- Microbiological examinations (cultures, microscopy, etc. – excluding targeted agent detection)
- Functional tests monitored over time intervals

When ordering “measured” item types, the most frequently used NČLP items are those with unspecified procedure (marked by “*”). These indicate no specific procedural requirement. However, it is also possible to order items with a defined procedure by selecting a specific NČLP item accordingly.

### **Description of Basic Parts of the Electronic Lab Order**

This section outlines the basic contents of the main sections and parts of the electronic lab order. A full list of data elements is provided in Chapter 5.5.1 Data Set.

##### Header – Administrative Information

This section is mandatory and includes formal aspects of the electronic lab order as specified by law (Act 372/2011 on Health Services) and its implementing regulation (Decree 98/2012 on Medical Documentation), as well as other administrative elements aligned with the proposed European standard. These include:

- Patient identification and contact details
- Insurance provider and reimbursement method
- Requester identification and contact details (health professional or individual creating the e-order)
- Provider (the party that performed the service based on the order)
- Recipients of the findings resulting from the order
- Document metadata
- Electronic signature

##### Order Body (Common Section for All Orders)

This mandatory section includes:

- Test order information and reason for ordering
- Clinical event information
- Payment and reimbursement information
- Follow-up examination date
- Attachments

##### Order Body (Section Specific to Lab Orders)

This mandatory section includes:

- Sample information
- Clinical information
- Test order data elements

### **Time Data Considerations**

Relevant timestamps that must or should be recorded can be grouped into three categories:

**Order, collection, and sample delivery to the lab:**

- Time of test order creation _(in the patient record)_
- Planned sample collection time or end of collection _(specific time or interval)_
- Actual sample collection time or end of collection _(linked to the patient, mandatory; in DS4 referred to as “clinical event”)_
- Time of sample dispatch to the laboratory _(start of transport)_
- Time of sample delivery to the lab = start of sample processing _(end of transport)_

**Request transmission from the requester's IS to the lab:**

- Order creation in the requester’s IS
- Order submission _(logged by requester)_
- Order receipt _(logged by the lab, optionally confirmed)_
- Order acceptance and processing by the lab's IS _(logged by the lab)_

**Processing in the lab and result reporting** _(not part of the lab order)_
