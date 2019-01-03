# Data for Development Impact: Chapter map

## Introduction: Data for Development Impact

1. Disclaimer at the beginning of who we are, where these recommendations are coming from (DIME experience), but keep content broad/general
1. The public of this book are...
	  * RAs
	  * Graduate students working on applied econ
1. Why data science in now a core skill for development economics researchers
1. Why reproducibility is important

	
## Before you begin: Research ethics, security, and certification
1. Research with human subjects
	* [NIH's Protecting Human Research Participants](https://phrptraining.com/)
	* [CITI program](https://about.citiprogram.org/en/series/human-subjects-research-hsr/)
1. PII
	* What is PII
	* Data Encryption
	* Password Management
1. Transparency in Research Design
	* [Pre-Analysis Plans](https://dimewiki.worldbank.org/wiki/Pre*Analysis_Plan)
	* [RCT registration](https://www.socialscienceregistry.org)

## Planning Data Work: what should be done before any data activities are launched in the field
1. Create a data map of your project
	* Plan which data sets that you need
	* Plan what you need in order to get those data sets
	* Plan what you need in order to correctly merge observations across data sections
	* Plan how to make IDs for your observations
	* It is ok to update this data map as you go, but this will help FCs and RAs that are coming and going to understand what bigger picture they are contributing to.
	* This is like pseudocode for the whole project.
1. How different research design affect the data you need
	* Data format
	* Planning for different designs: examples using DIME project
1. How to prepare for collaboration and replication
	* Why it is important to think about reproducibility from day 1
	* Text editor
	* GitHub and [gitflow](https://nvie.com/posts/a-successful-git-branching-model/)
	* What else needs to be version controlled: outputs
	* Code organization: master scripts, modularity, generalizability, and anti-repetition
1. Data Management 
	* Naming conventions
	* Folder structure and iefolder
1. Overview of workflow
	* Use folder structure, master scripts and reproducibility to discuss why the following sections are divided as they are
	
## Sampling, randomization and power calculations
1. Sampling
1. Reproducible randomization in Stata
	* [Guidelines](https://dimewiki.worldbank.org/wiki/Randomization_in_Stata)
	* [Code](https://github.com/bbdaniels/dime-msie-track2-solutions/blob/master/DataWork/Lab5/Dofiles/Analysis/lab5-randomization1.do)
	* [`randtreat`](https://www.researchgate.net/publication/292091060_Dealing_with_misfits_in_random_treatment_assignment): clusters, strata, misfits
1. Power calculation
	* Why it should be done by simulation
	* [Based on sampling error](https://gist.github.com/bbdaniels/774d5e5e31f32b74ec91bcb914453ae1)
	* [`ritest`](http://hesss.org/ritest.pdf): randomization inference
	
## Data Collection
1. Real-time Data Quality Checks
	* RAs need to spot, rather than solve, problems at this stage
	* How to document issues and corrections in the data
	* ietestform
	* HFCs
	* backchecks
	* completion reports
1. Managing primary data
	* All raw data must be backed up according to the rule of three: (3) copies of the data; (2) different media; (1) offsite backup
	* We recommend a secure cloud storage service with AWS or Azure, which have sufficiently-sized free tiers for small datasets; a locally mounted copy (not in a cloud folder); and system backups using a software such as Backblaze and/or Time Machine.
	* De-identification
1. Secondary data
	* Document sources and dates
	* Add code for data download if possible

## Data Processing
1. Data Cleaning
	* goal: make the data set(s) as self-explanatory as possible
	* use deidentified data
	* iecodebook
	* create variable names corresponding to survey names
1. Data construction
	* goal: create a data set of final variables to be used in analysis
	* creating new variables
	* merging data sets
	* reshaping/collapsing data sets

## Data Analysis
1. Code organization
	* no cleaning or construction
	* modularity
	* linkage to outputs
	* documenting different analyses that were tried
1. Output organization
	* documenting results
	* organizing folders
1. Analyzing data and exporting outputs
	* [`sumstats`](https://bbdaniels.github.io/stata-code/sumstats/): summary statistics
	* `iebaltab`
	* `ieddtab`
	* `estout`
	* checklist for tables
1. Data visualization
	* guidelines
	* exporting to different formats
	* visual library

## Publication
1. Publishing primary data
1. Publishing replication packages
1. Using LaTeX
	* Working on GitHub
	* Working on Overleaf
	* BibTeX
	* Templates
	* Checklists for outputs
	* Converting TeX files to .docs
