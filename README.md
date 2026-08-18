# AI-Assisted Enterprise Data Extraction

## Overview

An enterprise data extraction automation project demonstrating how I identified a manual data extraction problem, designed a more efficient approach, and used AI-assisted development to build an automation component.

The solution was designed to move data from an ERP source system into Microsoft SQL Server so that the data could be used for analytics.

The approach introduced automated, chunk-based processing for large datasets and logging to make extraction failures easier to understand.

> **Portfolio note:** This repository is a sanitized recreation of the solution. Company names, production data, credentials, infrastructure details and confidential implementation details are intentionally excluded.

---

## Business Problem

The original process required data to be extracted manually from an enterprise ERP system.

This created significant manual work, time and effort, particularly when large datasets were required for analytics.

The objective was to automate the extraction process and make large volumes of data available in SQL Server much faster.

---

## Solution

The solution used the following high-level approach:

```text
ERP / SAP
    |
    v
Xtract Universal
    |
    v
AI-assisted VB Script
    |
    v
Chunk-based extraction
    |
    v
Microsoft SQL Server
    |
    v
Analytics
```

For large datasets, the extraction was divided into smaller chunks rather than attempting to process everything as one large extraction job.

---

## Why Chunking?

Very large extraction jobs could take a long time and were subject to an execution limit.

The solution therefore divided large datasets into manageable chunks.

```text
Large Dataset
      |
      v
+-------------+
| Chunk 1     |
+-------------+
      |
+-------------+
| Chunk 2     |
+-------------+
      |
+-------------+
| Chunk 3     |
+-------------+
      |
     ...
      |
      v
SQL Server
      |
      v
Analytics
```

This approach made large-volume extraction more manageable and significantly reduced the time and manual effort required.

---

## AI-Assisted Development

I did not have prior VB scripting expertise.

I used AI as a development assistant to help create the VB Script required for the automation.

My process was:

```text
Understand the business problem
          ↓
Define the required logic
          ↓
Explain the requirements to AI
          ↓
Generate an initial script
          ↓
Review and understand the output
          ↓
Test the script
          ↓
Refine the solution
          ↓
Validate the result
```

AI helped bridge a technical skill gap, but the requirements, solution logic, testing and validation remained human-led.

---

## Logging

The VB Script included logging using simple English messages.

The purpose was to make it easier to understand what was happening during extraction.

For example:

```text
Extraction started.

Reading table details.

Starting chunk 1.

Chunk 1 completed successfully.

Starting chunk 2.

Chunk 2 failed.

Please check the extraction configuration.

Extraction stopped.
```

If an extraction failed, the logger helped identify where the process stopped and provided an understandable message for investigation.

---

## Business Impact

The solution:

* Reduced manual data extraction work
* Reduced repetitive time and effort
* Automated a previously manual process
* Made very large datasets available in SQL Server within minutes in the implemented environment
* Supported downstream analytics
* Made extraction failures easier to identify
* Created a more repeatable extraction process

Exact production data volumes and company-specific performance measurements are intentionally not disclosed.

---

## My Contribution

My contribution included:

* Understanding the existing manual extraction process
* Identifying the main problem
* Understanding the requirement for analytics data
* Designing the automated extraction approach
* Designing the chunk-based approach for large datasets
* Using AI to assist with VB Script development
* Testing and refining the script
* Adding understandable logging
* Validating the extracted data
* Considering scalability and failure scenarios

---

## Product Thinking

This project demonstrates my approach to solving an enterprise problem:

**Problem → Requirement → Solution → AI-assisted Development → Testing → Validation → Business Value**

The technical implementation was only one part of the work.

The main focus was solving a real operational problem and reducing unnecessary manual effort.

---

## Technology

* SAP / ERP
* Xtract Universal
* VB Script
* Microsoft SQL Server
* AI-assisted development
* Analytics / Business Intelligence

---

## Portfolio Disclaimer

This repository does not contain production company data, credentials, internal documents, production server information or confidential business information.

The public demonstration uses anonymized or recreated examples to demonstrate the underlying problem-solving and product approach.

The original enterprise implementation remains confidential.
