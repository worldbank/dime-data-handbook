![](./images/dime.png)

# Data for Development Impact: Table of Contents

### Four thematic sections in the DIME Wiki

![](./images/dime-wiki.png)

### Introduction: Data for Development Impact

This section motivates the guide. Drawing from sources like [Best Practices for Scientific Computing](https://journals.plos.org/plosbiology/article?id=10.1371/journal.pbio.1001745) and [Code and Data for the Social Sciences](https://web.stanford.edu/~gentzkow/research/CodeAndData.pdf), the introduction describes what [Data Science](https://drewconway.com/zia/2013/3/26/the-data-science-venn-diagram) has to bring to development economics. Broadly, it is our idea that technical computing skills and paradigms are underinvested in, compared to mathematics and topical expertise in economics research. This means that RAs who want to do their job efficiently currently have very little in the way of mentorship or guides to their work and the conventions, standards, and best practices that are fast becoming a necessity for impact evaluation projects.

### Research Design
#### Experimental methods for impact evaluation

This section reviews the most common experimental methods for impact evaluations, drawing on [Impact Evaluation in Practice](http://www.worldbank.org/en/programs/sief-trust-fund/publication/impact-evaluation-in-practice), [Causal Inference: The Mixtape](http://scunning.com/cunningham_mixtape.pdf), and [The Econometrics of Randomized Experiments](https://www.povertyactionlab.org/sites/default/files/publications/athey_imbens_june19.pdf). It covers the design of RCTs for difference-in-difference and regression discontinuity designs, and points to [randomization code](https://dimewiki.worldbank.org/wiki/Randomization_in_Stata) for treatment assignments.

#### Quasi-experimental methods

This section covers instrumental variables, matching estimators, and synthetic control models.

#### Sampling and power calculations

Building off the twin ideas that "a regression is a random variable" and that "a randomization is a random variable", this section introduces the ideas of sampling noise and randomization noise as justifications for standard errors on effect size estimates. It suggests simulations based on both, providing templates for power, minimum detectable effects, and sample size calculations based on asymptotic inference and on randomization inference. It provides guides to reproducibly sampling and randomizing using `sample`.


### Data Collection with `iefieldkit`
#### Primary data collection with SurveyCTO

This section details the various ways in which a product like SurveyCTO can be used for data entry, including both field use of tablets as well as Web-based entry of paper forms. It details encryption of surveys and use of the Sync application to download data.

#### Questionnaire design with SurveyCTO

This section provides a basic overview of key SurveyCTO form options and conventions. It emphasizes conventions for section and variable naming, use of language labels to improve data readability, and quality controls such as bounds and logic checks that can be embedded directly into forms.

#### Field management and quality assurance

This section details the data quality checks which are commonly used throughout fieldwork. This includes enumerator checks, high-frequency checks, tests for outliers, and schedule/sample completion reports. It emphasizes the RA's responsibility to spot, rather than solve, problems at this stage, and provides methods for organizing paper trails for issues and corrections in data.

#### Managing primary and secondary data sources

This section focuses on data storage, including cloud storage, sharing, and backup.

### Data Analysis with `ietoolkit`

#### Data and code management

This section outlines the function of the `iefolder` command and the folder structure that it creates. It describes what each folder should be used for and outlines the overall workflow in terms of this folder structure, from raw PII data to final outputs. This section outlines core principles from computer science for impact evaluation practitioners. It focuses on the ideas of modularity, generalizability, and anti-repetition. It suggests adopting a flexible and extensible text editor, using descriptive naming conventions for data and code work, and planning to routinize repetitive tasks.

This also section emphasizes that modern coding is typically collaborative, with multiple people usually needing to simultaneous work on or access code, and be sure of its functionality and location. This section first outlines some basic ideas for code organization and readability, then provides a short technical guide to setting up and working on a project in Git/GitHub using the Git Flow workflow model and emphasizing that, like `iefolder`, a good organization model is an mental tool rather than a technical solution.

#### Data cleaning

This section takes the reader through the process of cleaning and deidentifying raw survey data, beginning with a spreadsheet download from a source such as SurveyCTO. It emphasizes creation of a Raw-Deidentified dataset, followed by Intermediate and Constructed datasets, which can be kept in a shared folder for collaborative use. It focuses on conventions for variable naming at each stage and provides syntax and examples for common commands such as `reshape` and `merge`, and suggests that Constructed data should regularly have as many purpose-built datasets as needed.

#### Data analysis

This section reviews the common estimators for each of the methods outlined in the Experimenal Design section, with references to code packages that are provided in `ietoolkit` and elsewhere for implementing them. It emphasizes that data cleaning and construction should not be done in analysis dofiles, and suggests a modular approach to outputs that strengthens the link between the creation code and the product. It provides conventions and checklists for exporting results as tables, and for organizing and naming dofiles and outputs.

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
