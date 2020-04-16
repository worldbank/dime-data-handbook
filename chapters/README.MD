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
