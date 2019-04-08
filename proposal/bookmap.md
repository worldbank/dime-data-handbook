# Data for Development Impact: Chapter map

## Introduction: Data for Development Impact

1. Disclaimer at the beginning of who we are, where these recommendations are coming from (DIME experience), but keep content broad/general
1. The public of this book are...
	  * RAs
	  * Graduate students working on applied econ
1. Why data science in now a core skill for development economics researchers
1. Why reproducibility is important ([refs](https://www.dropbox.com/s/p5gkkt6dyg1l0ub/AAE_737_2017.pdf?dl=0))


## Before you begin: Research ethics, security, and certification
1. Research with human subjects
	* [NIH's Protecting Human Research Participants](https://phrptraining.com/)
	* [CITI program](https://about.citiprogram.org/en/series/human-subjects-research-hsr/)
	* [Research ethics on the Wiki](https://dimewiki.worldbank.org/wiki/Research_Ethics)
	* [Summer School Presentation](https://www.dropbox.com/home/wb/analytics/RwandaKnowsIE_materials/RwandaknowsIE%20-%20Public%20material/Aug%2020?preview=Research_ethics.pptx#)
1. PII
	* What is PII
		* [Wiki](https://dimewiki.worldbank.org/wiki/De-identification)
		* [Data confidentiality: A review of methods for statistical disclosure limitation and methods for assessing privacy](https://projecteuclid.org/download/pdfview_1/euclid.ssu/1296828958)
	* Data Encryption
	* Password Management
	* [Responsible Data](https://paper.dropbox.com/doc/Responsible-Data-Hackpad--AXCzZ3VRA4RzSFD5TGk~StU0Ag-SA6kouQ4PL3SOVa8GnMEY)
1. Transparency in Research Design
  * designs
    * [Running Randomized Evaluations](http://runningres.com)
    * [Impact Evaluation in Practice](http://www.worldbank.org/en/programs/sief-trust-fund/publication/impact-evaluation-in-practice)
	* Pre-Analysis Plan
		* [Pre-Analysis Plans on the wiki](https://dimewiki.worldbank.org/wiki/Pre*Analysis_Plan)
		* [Promises and Perils of Pre-analysis Plans](https://www.aeaweb.org/articles?id=10.1257/jep.29.3.61)
		* [Presentation version](http://cega.berkeley.edu/assets/cega_events/45/Olken__PAP.pdf)
		* [DeclareDesign R package](https://declaredesign.org/)
		* [Development Impact post](https://blogs.worldbank.org/impactevaluations/a-pre-analysis-plan-checklist)
		* [Pre-Analysis Plan template](https://www.bitss.org/wp-content/uploads/2015/12/Pre-Analysis-Plan-Template.pdf)
		* [Pre-Analysis Plan example](http://perseus.iies.su.se/~ialm/assets/papers/cutthroat_pre.pdf)
		* [Running Randomized Evaluations](https://www.dropbox.com/s/ejsolpqahudjwp2/Module%2B8.3.pptx?dl=0)
		* [IPA's material](https://www.dropbox.com/s/ejsolpqahudjwp2/Module%2B8.3.pptx?dl=0)
	* RCT registration
		* [Social Science Registry](https://www.socialscienceregistry.org)
		* [RIDIE/3ie](http://ridie.3ieimpact.org/)
		* [AEA](https://www.socialscienceregistry.org/)
		* [OSF](https://osf.io/registries)


## Planning Data Work: what should be done before any data activities are launched in the field
1. Create a data map of your project
	* Plan which data sets that you need
		* [Administrative and Monitoring Data](https://dimewiki.worldbank.org/wiki/Administrative_and_Monitoring_Data)
	* Plan what you need in order to get those data sets
	* Plan what you need in order to correctly merge observations across data sections
	* Plan how to make IDs for your observations
	* It is ok to update this data map as you go, but this will help FCs and RAs that are coming and going to understand what bigger picture they are contributing to.
	* This is like pseudocode for the whole project.
1. How different research designs affect the data you need
	* Data format
	* Planning for different designs: examples using DIME project
1. How to prepare for collaboration and replication
	* Why it is important to think about reproducibility from day 1
	* Text editor
		* [Roshni's presentation](https://www.dropbox.com/s/g0upj8g9thjwoib/Text%20editors.pptx?dl=0)
	* GitHub and gitflow
		*[Getting started with GitHub] (https://dimewiki.worldbank.org/wiki/Getting_started_with_GitHub)
		* [gitflow](https://nvie.com/posts/a-successful-git-branching-model/)
		* [Onboarding material](https://www.dropbox.com/preview/WB/Analytics/DIME%20Analytics/Data%20Coordinator/Workflow%20Guide/GitHub%20workflow%20guide.pdf?role=personal)
	* What else needs to be version controlled: outputs
	* [Git](https://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1004668)
	* Code organization: master scripts, modularity, generalizability, and anti-repetition
1. Data Management
	* [Unit of observation](https://dimewiki.worldbank.org/wiki/Unit_of_Observation) and [unique ID](https://dimewiki.worldbank.org/wiki/ID_Variable_Properties)
	* [Master data sets](https://dimewiki.worldbank.org/wiki/Master_Data_Set)
	* [Naming conventions](https://dimewiki.worldbank.org/wiki/Naming_Conventions)
	* Folder structure
		* [Continuing education](https://showcase.dropbox.com/s/DIME-Research-Assistant-Training-Materials-VKuivyxUNY812HXofgr5t)
		* [Onboarding material](https://www.dropbox.com/home/WB/Analytics/DIME%20Analytics/onboarding?preview=DIME+Data+Management+Guide.pdf)
		* [Other version of onboarding material](https://www.dropbox.com/preview/WB/Analytics/DIME%20Analytics/Data%20Coordinator/Workflow%20Guide/Data%20Management.pdf?role=personal)
		* [IPA's best practices](https://www.poverty-action.org/publication/ipas-best-practices-data-and-code-management)
		* [Wiki page](https://dimewiki.worldbank.org/wiki/Data_Management#Organitzation_of_Project_folder)
	* iefolder
		* [DataWork folder](https://dimewiki.worldbank.org/wiki/DataWork_Folder)
		* [Wiki](https://dimewiki.worldbank.org/wiki/Iefolder)
		* [Helpfile](https://github.com/worldbank/ietoolkit/blob/master/src/help_files/iefolder.sthlp)
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
	* Wiki package
	* [Onboarding material](https://www.dropbox.com/preview/WB/Analytics/DIME%20Analytics/Data%20Coordinator/Workflow%20Guide/Data%20Cleaning.pdf?role=personal)
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
	* [Style](https://style.tidyverse.org/_main.pdf)
1. What to do?
  * [R for Data Science](https://r4ds.had.co.nz/)
  * [A Practical Introduction to Stata](https://scholar.harvard.edu/files/mcgovern/files/practical_introduction_to_stata.pdf)
  * [Mostly Harmless Econometrics](https://www.researchgate.net/publication/51992844_Mostly_Harmless_Econometrics_An_Empiricist's_Companion)
  * [The Econometrics of Randomized Experiments ](https://www.povertyactionlab.org/sites/default/files/publications/athey_imbens_june19.pdf)
  * [Causal Inference: The Mixtape](http://scunning.com/mixtape.html)
  * [Data Analysis For Politics And Policy](https://www.edwardtufte.com/tufte/ebooks)
  * Econometric Methods for Program Evaluation

1. Output organization
	* documenting results
	* organizing folders
	* basic syntax
  	- [presentation](https://www.dropbox.com/s/hcwfsm95rnighxd/slides.pdf?dl=0)
1. Analyzing data and exporting outputs
	* [`sumstats`](https://bbdaniels.github.io/stata-code/sumstats/): summary statistics
	* `iebaltab`
	* `ieddtab`
	* `estout`
	* [causal inference 1](https://www.hsph.harvard.edu/miguel-hernan/causal-inference-book/)
	* [program evaluation](https://www.annualreviews.org/doi/pdf/10.1146/annurev-economics-080217-053402)
	* checklist for tables
  	- [logs](http://marcfbellemare.com/wordpress/12856)
	* [stats review](https://seeing-theory.brown.edu)
1. Data visualization
  * [Uncluttered graphs](https://graykimbrough.github.io/uncluttered-stata-graphs/)
	* [guidelines](https://serialmentor.com/dataviz/)
  	- [cheatsheets](https://policyviz.com/2018/08/07/dataviz-cheatsheet/)
  	- [colors](https://blog.datawrapper.de/colorguide/)
	* exporting to different formats
	* visual library
	* [tapestry](https://www.youtube.com/playlist?list=PLb0GkPPcZCVE9EAm9qhlg5eXMgLrrfMRq)

## Publication
1. Publishing primary data
1. Publishing replication packages
2. [Writing](http://trophiccascades.forestry.oregonstate.edu/sites/trophic/files/Lafferty_WritingScientificPaper.pdf)
1. Using LaTeX
	* Working on GitHub
	* [Working on Overleaf](https://www.overleaf.com/learn/latex/Free_online_introduction_to_LaTeX_(part_1))
	* BibTeX
	* Templates
	* Checklists for outputs
  	- [Submission](https://docs.google.com/document/d/1JwwmOgRhd2p-Bl_RFEMnp04P0I2nNhOHW7JHdaLcyGs/edit)
	* Converting TeX files to .docs
