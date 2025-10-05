# Functional Description of the Process – Common Parts

The following items of the functional description of the process are common to all listed use cases.  
If a specific use case differs in any of the points, the differences are specified for that particular use case.

## 1. Authorized requester places an order for laboratory examinations

In the case of a directed order, the ordering system allows selection of the target laboratory and individual tests or groups of tests according to the offer of the target laboratory.  
In the case of non-directed orders, no laboratory is selected and only examinations are ordered.

The requester can choose from a palette of tests either without specifying the measurement method or including the option to specify the measurement method (physical principle of measurement).  
The ordering system should allow choosing how the names of laboratory tests are displayed. That is, it should allow displaying both standard test names according to the national code list (NČLP) and, in the case of a directed order, the conventional test names used by the selected laboratory.

The requester specifies in the order the time range in which the order is to be carried out.  
Optionally, the ordering system can display the test’s repetitorium, e.g. by a link to the corresponding Laboratory Manual.

If needed, the ordering system should allow entering with which other entity(ies) the test results are to be shared (for example, a general practitioner shares results with a specialist center that regularly cares for the patient, and vice versa).

The electronic order created based on the ordered examinations is stored in the electronic orders system.

## 2. The electronic order system assigns a unique identifier to the order

The order identifier must be globally unique; it may be generated, for example, as a UUID (globally unique 128-bit identifier).  
The requester is responsible for the uniqueness of the identifier.  
The assigned order ID will be inseparably linked to the order and will be used when communicating results as well as when handling acceptances or other actions.

For non-directed orders, the electronic order is stored in the requester’s electronic orders system and also in an external central repository of orders.

## 3. The requester determines the method and place of sample collection

The course of the process differs depending on whether the sample is collected directly on the requester’s premises or at a collection site.  
These differences are described directly in the individual use cases.

In all cases, the patient must be informed about the conditions of sample collection: e.g. the need to arrive fasting, stop selected medications on the day of collection, refrain from sexual intercourse, physical exertion, adhere to a prescribed diet, etc.  
If the sample is collected by the patient himself/herself, he/she is informed about the method of collection.

## 4. The patient arrives at the collection site

In the case of a directed order and collection at the requester’s premises, but where the collection is performed at a different time or place than immediately at the point of order creation, the patient arrives at the specified collection site at the appointed time and sufficiently proves his/her identity.

If the collection is carried out at the point of order creation, step 5 does not take place and steps 6 and 7 are carried out at the requester’s site immediately after the electronic order is issued.

In the case of a directed order with collection at a collection site, and in the case of a non-directed order, the patient arrives at the site at the appointed time, presents the unique order identifier and sufficiently proves his/her identity.

In both cases, the patient may hand over self-collected samples (e.g. urine, stool, etc.) according to the requester’s instructions.

## 5. The collection site retrieves the electronic order

Based on the patient’s identity / unique identifier of the person or order, the staff at the collection site retrieves the relevant order from the electronic orders system, checks that the patient identification details match the person to be collected, and, if applicable, accepts the sample(s) from the patient.

The system then records the retrieval of the order by the performing facility and informs the order sender of this status according to the agreed rules.

In case of a problem (incomplete or incorrect order, not retrieved within the set time), the requester is informed and resolves the further handling of the order.

## 6. The healthcare worker at the collection site labels the collection containers with an identifier

The information system of the collection site assigns a unique identifier to each collection container with biological material and attaches this identifier to the container.

The identifier must be unique at least within the collection site’s information system, but it is recommended that it be globally unique.

Identification labels may be attached to collection containers as machine-readable barcodes, 2D codes or RFID tags, always together with human-readable labeling.

See *Section 2.4.6 Identification of Collected Tubes.*

## 7. The healthcare worker at the collection site performs the sample collection

The healthcare worker collects the sample according to the requested laboratory examinations, using a method appropriate to the material being collected and the conditions of the so-called pre-analytical phase for the given type of material and requested examinations (using the prescribed collection procedure, suitable collection containers, storage and transport methods, etc.).

The healthcare worker updates the time of collection of biological materials in the electronic order system and enters other necessary data depending on the nature of the ordered examinations (position during collection, urine collection duration, drug dosage, menstrual cycle phase, location of microbiological collection, etc.).

Information about the updated order is transmitted either electronically via a secure communication channel to the target laboratory or via the central repository system.

At least for a transitional period, a paper form should also be sent to the laboratory together with the material (to enable verification or facilitate handling of problematic situations).

## 8. The collection site informs the requester and, if applicable, the central repository of orders about the collection

When the collection takes place at the collection site, the site sends the requester a secure electronic message about the performed collection, collected biological materials and their identifiers, and, if applicable, about the start of transport to the laboratory.

When the central repository is used (especially for non-directed orders), the information about the collection is also sent to the central repository.

## 9. The laboratory sample and the order are handed over to the target laboratory

The staff at the collection site records in the electronic order system the time the transport to the laboratory starts.  
The transport conditions according to the laboratory’s recommendations, usually stated in the Laboratory Manual, must be adhered to.  
It is necessary to pay attention in particular to:

- transport time of unstable analytes  
- compliance with the prescribed transport temperature depending on the nature of the analyte(s)  
- possible monitoring of temperature during long-distance transport  
- exclusion of samples from transport via pneumatic mail  
- exclusion of cooling of samples during transport  
- protection from light  

## 10. The laboratory receives the sample and, based on the electronic order, performs the requested examinations

The laboratory receives the sample and, electronically via a secure communication channel or the central repository system, also the electronic order.

Upon receipt of the samples, the laboratory checks whether all containers of delivered biological materials are properly labeled. Unlabeled or biologically contaminated containers are not accepted.  
It also checks sufficient material quantity, correct collection systems, and adherence to transport conditions.  
It records the delivery time.

It is recommended that the acceptance procedure also include an electronic confirmation of receipt / receipt with possible indication of discrepancies / rejection of material to the requester (acceptance).

If the collection site was an independent entity, the same confirmation message (acceptance) should also be sent there.

## 11. The electronic order system should also provide, among other things:

- **The ability to order additional tests from the collected material.**  
  The requester then sends the target laboratory the identification of the original order, the identification of the additionally ordered examination, and, if applicable, the identification of the collection container from which the examination is to be performed.  
  The laboratory must have a system for detecting additional orders.  
  Based on internal rules (stability and amount of biological material), it evaluates the possibility to fulfill the additional order and notifies the requester electronically.

- **The ability to cancel the order**, provided that the cancellation is requested at the appropriate processing stage.

- **The ability to handle various types of discrepancies, in particular:**
  - incorrect, missing or insufficiently specified information (about the sample, patient, etc.)
  - errors during collection and transport (incorrect collection, excessive transport time, transport at non-compliant temperature, etc.)
  - failure to deliver or delivery of insufficient material quantity, delivery of material of inadequate quality (coagulated, etc.)
  - impossibility of analysis in the laboratory (the laboratory temporarily or permanently does not perform the given analyte, or does not perform it in the required mode – STAT, etc.)
  - errors during handling and processing of the sample in the laboratory (contamination, breakage or spillage of the sample, etc.)

- **The ordering system** should be able to provide various types of acknowledgements (requests, cancellations, additions, etc.).
