# Book skeleton

## 1A - Reproducibility, Transparency and Credibility
This chapter includes content that needs to be thought about and set up before a project starts

### Protecting confidence in development research
- Why development researchers should care about TRC

### Research reproducibility
- What is reproducibility
- Open data is necessary for reproducibility
- Reproducible research is a public good
  - Code can be reused

### Research transparency
- What is transparency and how it makes research better
- PAP, Pre-registration and registered reports are tools for transparency
- Why to do a pre-analysis plan
- Documenting a project carefully makes it more transparent
- Tools for transparency: GitHub, OSF

### Research credibility
This subsection brings a lot of important ideas, but they are a bit confusing and it's not always clear how they relate to credibility
- PAP vs pre-registration
- Pre-registration platforms
- Ex-ante and ex-post transparency policies
- Contradictory paragraph

## 1B - Handling data securely
This still reads like very much focused on primary data. Give examples of admin and big data that are still identifying

### Ensuring privacy and security in research data
Before data acquisition
- What is PII
- PII regulation: IRB, consent, data security, participant privacy
- Data ownership and confidentiality
- What is an IRB
- Privacy and consent
- When to get IRB approval

### Transmitting and storing data securely
Need to be set up before data acquisition
- Password protection and need for encryption of confidential information
- Encryption in transit and at rest: how to deal with confidential data in practice
- Prefer not using PII data
- Tools for data security

### De-identifying data
Comes after data acquisitions
- Human subject certificates are usually required for people handling PII
- Options for dealing with PII data: only collect it if extremely necessary, don't create multiple copies, encrypt it, restrict access, de-identify it
- De-identification vs anonymization
- Initial de-identification: remove direct identifiers
- final de-identification: evaluate risk of disclosure before publishing

## 2 - Collaborating on code and data
The contents of this chapter need to be set

### Preparing a collaborative work environment
- Section overview and objective
- List of common workflow issues that can be solved across projects

#### Setting up your computer
- Personal computer security: password protection, disk encryption
- 3-2-1 rule
- Finding file paths, naming files
- File sharing: file syncing, version control and server storage

#### Documenting decisions and tasks
- communication vs documentation
- task management and documentation tools
- GitHub and DropBox paper for task documentation

#### Choosing software
- why it is important to make a conscious decision about software
- setting stable code environments
- choosing a code editor

### Organizing code and data
- Why we write code
- Why to think about folder structure

#### Organizing files and folder structures
the part on version control is a bit confusing
- what is iefolder and why it's useful
- iefolder structure
- create a separate folder for data work
  - so the data work folder can be version-controlled
  - What files can be version-controlled
- why version control is useful
- why git is the best way to version control code
- file naming conventions for file used with code and files not used with code

#### Documenting and organizing code
- introduction: why organizing code is important
- code documentation: header
- code documentation: commenting
- code organization: short scripts, broken in sections

#### Working with a master script
- what is a master script
- running code through the master script
- use globals to link code and folder structure
- plan for code review

#### Managing outputs
- why output management should be discussed before outputs are created
- Where to store outputs: plaintext files in git, binary files in DropBox
- tracking scripts and their outputs
- What is LaTeX
- Why LaTeX is a good option
- markdown and when to use it

## 5 - Acquiring development data

### Acquiring data
- Different data sources and their ownership status

#### Data ownership
- How to ascertain who owns the data
- How to ascertain data usage rights given the data ownership

#### Data licensing agreements
- what is data licensing
- balancing privacy and transparency
- What to include in a data licensing agreement to receive data from partners
- What to include in a contract when hiring a vendor to collect novel data
- What to include in licensing agreements when licensing data you own during publication

#### Receiving data from development partners
- Transfer data securely
- How to document the data
- Processing data into publishable datasets

### Collecting data using electronic surveys
- Summary and overview of the section

#### Developing a data collection instrument
- questionnaire design vs questionnaire programming
- why to create a paper questionnaire
- first step of questionnaire design: list key outcomes of interest
- Outline modules, content-focused pilot, measure attrition and contamination
- content-focused pilot

#### Designing surveys for electronic deployment
- intro: this section discusses practices, not software
- using pre-coded response options
- naming variables

#### Programming electronic questionnaires
- writing questionnaire pseudocode
- constraints, checks and other features that help data quality
- debugging and using ietestform
- data-focused pilot

### Data quality assurance

#### Implementing high frequency quality checks
- why to monitor data quality in real time
- how to set up hfcs
- important checks: cross-reference with the sample, look for duplicates, track survey completion, compare clusters and enumerators
- consistency checks
- communicating issues in real time

#### Conducting back-checks and data validation
- what are back-checks and audtis, and why they are needed
- comparing validation data to survey data

#### Finalizing data collection
- what to include in data collection reports

### Collecting and sharing data securely
- what makes data confidential
- what is data encryption
- keeping passwords safe
- don't trust encryption that you did not set up (this paragraph is a bit confusing)

#### Collecting data securely
- survey data is typically encrypted in transit
- use encryption at rest for confidential data
- asymmetric encryption must be implemented in survey collection servers
- store key files safely

#### Storing data securely
- what is symmetric encryption
- how to implement symmetric encryption
- apply 3-2-1 rule to raw data

#### Sharing data securely
- raw data containing confidential information can be safely shared if encrypted
- raw data stripped from identifying variables can be shared without using encryption
- the same standards apply when sharing data with field teams
- confidential data can be shared with field teams using symmetric encryption or a data collection server that uses asymmetric encryption
- link to next chapter


## 7 - Publishing collaborative researcher

### Collaborating on technical writing
- collaborating is easier with dynamic documents

#### Preparing dynamic documents
- what exactly is a dynamic document
- static documents get inefficient quickly
-  LaTeX  is one type of dynamic document
-  markdown is also useful for short or informal documents
- other dynamic documents: dropbox paper

#### Technical writing with LaTeX
- advantages of LaTeX
- managing references in LaTeX
- using pandoc to convert LaTeX into word
- disadvantages of LaTeX: installation, learning the mark-up

### Getting started with LaTeX in the cloud
Can probably be condensed into a short paragraph, I suggest moving the detailed content to the wiki
- cloud-based implementations are a good place to start
- Advantages of cloud-based implementations
- Disadvantages of cloud-based implementations

### Preparing a complete replication package
- what are replication packages and what they must contain

#### Publishing data for replication
- options for when the data cannot be published
- platforms for publishing data
- check what you can and cannot publish
- licensing published data
- content of data publication: data files, meta data and dcumentation

#### De-identifying data for publication
- what is final de identification
- tools for final de-identification: pii_detection, pii-scan, sdcMicro
- trade-off between accuracy and privacy
- restricting access of confidential for reproducibility check

#### Publishing code for replication
- published code must be understandable
- code licenses
- ensuring code reproducibility
- tracking code and outputs

### Releasing a replication package
- finding a place to publish the package
- pros and cons of releasing packages on GitHub
- Other options: data verse, osf, research gate. what to look for before deciding on a home for your project
- one-sentence paragraph about codeocean
- releasing pre-prints
