![](./img/dime.png)

# Data for Development Impact: Table of Contents

### Four thematic sections in the DIME Wiki

![](./img/dime-wiki.png)

### Introduction: Data for Development Impact

This section motivates the guide. Drawing from sources like [Best Practices for Scientific Computing](https://journals.plos.org/plosbiology/article?id=10.1371/journal.pbio.1001745), [How To Make A Pie: Reproducible Research for Empirical Economics & Econometrics](https://www.tse-fr.eu/sites/default/files/TSE/documents/doc/wp/2018/wp_tse_933.pdf), and [Code and Data for the Social Sciences](https://web.stanford.edu/~gentzkow/research/CodeAndData.pdf), the introduction describes why [data science](https://drewconway.com/zia/2013/3/26/the-data-science-venn-diagram) in now a core skill for development economics researchers.

The introduction emphasizes that these are "hard problems" – they are not solved simply by using the right software. They require at least a functional understanding of the problem that is being solved and, in some cases, *coordinating* on a solution with other people. The codes that follow are generalized examples, designed to show a clear way to accomplish each task while avoiding common pitfalls. They are also designed to showcase the effort that has been put into finding these solutions by many people already, so that new researchers can avoid reinventing the wheel for their most common tasks.

### Research Design
#### Counterfactuals and treatment effects

This introductory section briefly reviews the core econometric concepts of [treatment effects](https://dimewiki.worldbank.org/wiki/Treatment_Effect) and [counterfactuals](https://dimewiki.worldbank.org/wiki/Counterfactual).

#### Experimental methods

This section reviews the most common experimental methods for impact evaluations, drawing on [Impact Evaluation in Practice](http://www.worldbank.org/en/programs/sief-trust-fund/publication/impact-evaluation-in-practice), [Causal Inference: The Mixtape](http://scunning.com/cunningham_mixtape.pdf), and [The Econometrics of Randomized Experiments](https://www.povertyactionlab.org/sites/default/files/publications/athey_imbens_june19.pdf). It covers the design of [RCTs](https://dimewiki.worldbank.org/wiki/Randomized_Control_Trials) for [cross-sectional](https://dimewiki.worldbank.org/wiki/Cross-sectional_Data),  [difference-in-difference](https://dimewiki.worldbank.org/wiki/Difference-in-Differences), and [regression discontinuity](https://dimewiki.worldbank.org/wiki/Regression_Discontinuity) designs.

#### Quasi-experimental methods

This section covers [instrumental variables](https://dimewiki.worldbank.org/wiki/Instrumental_Variables), [matching estimators](https://dimewiki.worldbank.org/wiki/Matching), and [synthetic control](https://dimewiki.worldbank.org/wiki/Synthetic_Controls) models.

#### Sampling, randomization, and power calculations

Building off the twin ideas of "sampling noise" and "randomization noise", this section introduces uses sampling and randomization as justifications for standard errors on effect size estimates – and, therefore, power calculations. The concept of [reproducible randomization](https://dimewiki.worldbank.org/wiki/Randomization_in_Stata) is introduced. Reproducibility using `version`, `set seed` and `isid, sort` is detailed. Basic (global) sampling is demonstrated using `xtile sample = rnormal() , n(.)` and `recode` ([code](https://github.com/bbdaniels/dime-msie-track2-solutions/blob/master/DataWork/Lab5/Dofiles/Analysis/lab5-randomization1.do)). The problems of clusters, strata, and misfits are introduced and solved using [`randtreat`](https://www.researchgate.net/publication/292091060_Dealing_with_misfits_in_random_treatment_assignment).

Power calculations are introduced by simulation. First, based on sampling error ([code](https://gist.github.com/bbdaniels/774d5e5e31f32b74ec91bcb914453ae1)), we provide code templates for power, minimum detectable effects, and sample size calculations. Then, [`ritest`](http://hesss.org/ritest.pdf) is introduced with the concept of "randomization inference". The problem of parameterization and the sharp null are briefly discussed as motivation here, and the empirical distribution of counterfactuals as hypothesis testing closes the chapter.


### Data Collection
#### Primary data collection with SurveyCTO

This section details the various ways in which a CAPI product – in this case, SurveyCTO  can be used for data entry, including both field use of tablets as well as web-based entry of paper forms. It details encryption of surveys and use of the Sync application to download data.

#### Questionnaire design with SurveyCTO

A basic overview of key SurveyCTO form options and conventions is given. It emphasizes conventions for section and variable naming, use of language labels (and `label:stata`) to improve data readability and importation, and quality controls such as bounds and logic checks that can be embedded directly into forms. The `iefieldkit` command `ietestform` is introduced here and used to check and correct a form.

Technical considerations about variable naming are introduced. For example, "section shortcodes" are suggested instead of section numbers, so that questionnaire sections are easily transferrable between instruments. Explicit numbering anywhere in the questionnaire is discouraged.

#### Field management and quality assurance

This section details the data quality checks which are commonly used throughout fieldwork. This includes enumerator checks, high-frequency checks, tests for outliers, and schedule/sample completion reports. Code for each of these is provided (using IPA's public [software](https://github.com/PovertyAction/high-frequency-checks/wiki/Background)). It emphasizes the RA's responsibility to spot, rather than solve, problems at this stage, and provides methods for organizing paper trails for issues and corrections in data.

#### Managing primary and secondary data sources

This section focuses on data storage, including cloud storage, sharing, and backup. Every dataset recieved must be retained in an "uneditable master" location. All raw data must be backed up according to the rule of three: (3) copies of the data; (2) different media; (1) offsite backup. Dropbox does not count. We recommend a secure cloud storage service with AWS or Azure, which have sufficiently-sized free tiers for small datasets; a locally mounted copy; and system backups using a software such as Backblaze or Time Machine.

Next, "raw deidentified" copies of these datasets can be created and moved into unsecure storage, such as Dropbox. These will typically become the base files for analysis. They should retain the unique IDs that are needed for merging onto resources like the randomization list and any secondary data sources that are collected. At this stage, the data is ready for cleaning and analysis.

### Data Analysis

#### Data and code management

This section outlines the function of the `iefolder` command and the folder structure that it creates. It describes what each folder should be used for and outlines the overall workflow in terms of this folder structure, from raw deidentified data to final outputs. This section outlines core principles from computer science for impact evaluation practitioners. It focuses on the ideas of modularity, generalizability, and anti-repetition. It suggests adopting a flexible and extensible text editor, using descriptive naming conventions for data and code work, and planning to routinize repetitive tasks.

This also section emphasizes that modern coding is typically collaborative, with multiple people usually needing to simultaneous work on or access code, and be sure of its functionality and location. This section first outlines some basic ideas for code organization and readability, then provides a short technical guide to setting up and working on a project in Git/GitHub using the Git Flow workflow model and emphasizing that, like `iefolder`, a good organization model is an mental tool rather than a technical solution.

#### Data cleaning and construction

This section moves through the process of cleaning "raw deidentified" survey data, beginning with a spreadsheet download from a source such as SurveyCTO. It emphasizes creation of Intermediate and then Constructed datasets, which can be kept in a shared folder for collaborative use.

For cleaning, tools from `iefieldkit`, namely `iecodebook`, are used here to automate and document the process of cleaning. For intermediate data, variable names corresponding to the questionnaire are encouraged. For panel data, variable names corresponding the to the most recent questionnaire are encouraged. Using the sample questionnaires from the previous section, data is imported from two rounds of survey collection from a hypothetical differences-in-differences IE.

For construction, each dataset recieves its own construction file. Constructed data should regularly have as many purpose-built datasets as needed. New (non-questionnaire) variables can now be created, and secondary data sources merged in. It focuses on conventions for variable naming at each stage and provides syntax and examples for common commands such as `reshape` and `merge`. Using an example list of villages, households, individuals, and a sampling roster created earlier, datasets are created for different units of observation.

#### Data analysis

This section reviews the common estimators for each of the methods outlined in the Experimenal Design section, with references to code packages that are provided in `ietoolkit` and elsewhere for implementing them. It emphasizes that data cleaning and construction should not be done in analysis dofiles, and suggests a modular approach to outputs that strengthens the link between the creation code and the product. It provides conventions and checklists for exporting results as tables, and for organizing and naming dofiles and outputs.

Using the final data, a simple analysis is constructed: summary statistics using [`sumstats`](http://bbdaniels.github.io/stata-code/sumstats); balance tables using `iebaltab`; diff-in-diff results using `ieddtab`.

#### Data visualization

This section presents some common styles of data visualization, key design elements, and a short guide to editing key graph elements in Stata.

### Publication
#### Doing research reproducibly

This section emphasizes that analysis code should be written with the idea that it is an output of the research as much as the completed paper is. Analysis code should be written primarily for others to read and run, and as a methodological investment for re-use in the future. This section suggests routinization of analysis tasks that are done repeatedly, with the goal of producing extremely short core dofiles.

#### Publishing data and code for replication

This section provides tools and guides to commenting code, setting up public-release repositories on OSF or GitHub.

#### Collaboration tools for academic writing

This section is a guide to using LaTeX for preparing research papers, with collaboration either via GitHub or Overleaf. It provides a guide to bibliography management with BibTeX; sources for document templates; checklists for outputs (page numbering, author affiliations, etc), and methods for converting TeX files into formats like .docx if needed.

#### Research ethics and requirements

This section covers ethical requirements for conducting research with human subjects, handling personally-identifying information, and transparency in research design. It includes links to [pre-analysis plans](https://dimewiki.worldbank.org/wiki/Pre-Analysis_Plan), the [NIH's Protecting Human Research Partipants](http://phrptraining.com) course ([old version](https://humansubjects.nih.gov/sites/hs/phrp/PHRP_Archived_Course_Materials.pdf)) and the [CITI program](https://about.citiprogram.org/en/series/human-subjects-research-hsr/), and information about encryption and transfer of sensitive data.
