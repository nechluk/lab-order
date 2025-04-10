### Introduction 
This implementation guide is based on [FHIR version R4]. It defines the requirements for creating a structured electronic laboratory order in the Czech national context. It builds upon current Czech data standards, while also aligning with emerging processes that move toward a European format for the exchange of electronic health records.

Its primary goal is to specify the content elements and preferred structure of a digital laboratory order. By providing a core information model and dataset, it ensures consistency in how lab orders are represented and exchanged electronically in the Czech Republic.

This guide focuses on formalized, digital orders transmitted online and leverages recognized national standards (DS4 version 04.27 and higher) and HL7 FHIR. It does not address the technical details of infrastructure services such as central repositories, beyond listing essential requirements they must fulfill if implemented.

### Scope
- Defines how to represent and structure a laboratory order for electronic exchange.
- Covers online, digitally formatted lab requests sent to a specific laboratory or to a central repository.
- Reflects current Czech data standards with an eye toward compatibility with European health information exchange.

This guide does not:
- Cover offline or paper-based request forms.
- Describe how to implement a full order-management ecosystem (e.g., selecting providers, transmission methods, or repository administration).


This guide is divided into several pages which are listed at the top of each page in the menu bar.

- [Home](index.html): This page provides the introduction and scope for this guide.
- [Introduction](general-semantics.html): This page provides guidance on using the profile defined in this guide. 
- [Functional view](functional-view.html): These page contains information about actors and transactions. 
- [Artifacts](artifacts.html): This page provides a list of the FHIR artifacts defined as part of this implementation guide.
- [Downloads](downloads.html): This page provides links to downloadable artefacts.

#### Included Areas
- Implementation specification of the electronic lab order, including required data elements and structure.
- Use of DS4 and HL7 FHIR as the basis for formalizing the lab order content.
- Requirements for addressing the order to specific laboratories or repositories.
- High-level constraints for any central repository that may handle these orders.

#### Excluded Areas
- Paper-based or unstructured online forms.
- Central repository design or detailed operational processes (e.g., how repositories store or forward orders).
- Non-laboratory requests (e.g., imaging or other clinical services).

### Dependencies

{% include dependency-table.xhtml %}

### Cross Version Analysis

{% include cross-version-analysis.xhtml %}

### IP statements

{% include ip-statements.xhtml %}

