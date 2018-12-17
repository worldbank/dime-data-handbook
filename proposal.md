![](./img/dime.png)

# Data for Development Impact: Proposal

## Introduction

An [empirical revolution](https://www.bloomberg.com/opinion/articles/2018-08-02/how-economics-went-from-philosophy-to-science) has been changing the face of research economics rapidly over the last decade. Economics graduate students of the 2000s expected to work with primarily "clean" data from secondhand sources. Today, especially in the development subfield, working with primary data is a key skill for researchers and their staff. However, most graduates have little or no experience working with real data when they are recruited as research assistants. Therefore they tend to have a large "skills gap" when they join a research team, and require rapid onboarding on how to carry out the practical tasks of development economics research. This means that RAs who want to do their job efficiently currently have very little in the way of mentorship or guides to their work and the conventions, standards, and best practices that are fast becoming a necessity for impact evaluation projects.

This proposal is for a short practical publication titled **"Data for Development Impact: The DIME Analytics Resource Guide"**. The publication's primary purpose is to be a workflow guide for DEC & DIME research assistants (RAs). It will be specific enough for RAs to immediately implement key tasks in Stata – from sampling & randomization to data management & reproducible analysis, using the standard tools and processes that [DIME Analytics](http://worldbank.github.io/dimeanalytics) has worked to put together. The book should also be general enough to serve as a desk reference for people of all experience levels who use primary data as part of their research workflow, with a motivating introduction to each practical section designed to get the reader thinking about *how* the practice descibed correctly addresses the core questions of the method.

## Why is this needed?

There are a variety of existing resources out there on impact evaluations. A few are listed below:

-   [Impact Evaluation in Practice](https://siteresources.worldbank.org/EXTHDOFFICE/Resources/5485726-1295455628620/Impact_Evaluation_in_Practice.pdf)
-   [Handbook on impact evaluation: quantitative methods and practices](https://openknowledge.worldbank.org/bitstream/handle/10986/2693/520990PUB0EPI1101Official0Use0Only1.pdf)
-   [JPAL research resources](https://www.povertyactionlab.org/research-resources)
-   [IPA research resources](https://www.poverty-action.org/researchers/research-resources)
-   [Resources and Tools for Impact Evaluation](https://www.poverty-action.org/sites/default/files/publications/Resources%20and%20Tools%20for%20Impact%20Evaluation.pdf)
-   [Impact Evaluation Toolkit (Results Based Financing)](https://www.rbfhealth.org/resource/impact-evaluation-toolkit-provides-hands-guidance)
-   [Unicef: Data Collection and Analysis Methods in Impact Evaluation](https://www.unicef-irc.org/publications/pdf/brief_10_data_collection_analysis_eng.pdf)
-   [Code and Data for the Social Sciences: A Practitioner's Guide](https://web.stanford.edu/~gentzkow/research/CodeAndData.xhtml)
-   [Best Practices for Scientific Computing](https://journals.plos.org/plosbiology/article?id=10.1371/journal.pbio.1001745),
-   [How To Make A Pie: Reproducible Research for Empirical Economics & Econometrics](https://www.tse-fr.eu/sites/default/files/TSE/documents/doc/wp/2018/wp_tse_933.pdf)

However, none of these resources compile, from start to finish, the level of practical detail needed for a research assistant to do their job on Day One. Most fall into three categories – operational (that is, for running the program); theoretical (dealing with advanced econometrics); or referential (that is, unstructured). This makes them unsuitable for the rapid training of new personnel on impact evaluation projects.

The most comprehensive and structured materials are available from the [DIME annual training](https://osf.io/cyekq/) and other [DIME Analytics resources](https://worldbank.github.io/dimeanalytics/training/), which have been developed over several years. Between unstructured trainings, continuing education sessions, and formal public trainings, DIME Analytics has compiled state-of-the-art best practices for nearly every step of the impact evaluation process. However, these have not been compiled into a single organized introductory resource for either DIME project reference or for public consumption.

**Data for Development Impact** will also serve as a companion to the [DIME Wiki](dimewiki@worldbank.org). Compared to the Guide, the Wiki can be thought of more as a "reference manual": it contains all the relevant information for each topic, but a user needs to know broadly what they are looking for in order to find it. By contrast, the "guide" is for new users: in a structured way, it introduces readers to the ideas and language they need to effectively utilize the Wiki and other more detailed resources.

The guide's original content therefore primarily comes from the addition of task-specific *workflows*. These are how-tos that illustrate specific tasks with specific software and operational code examples. Where the Wiki seeks to explain *why* things are done in a manner that improves the readers' understanding of topics, the Guide explains *what* is being done and *how*, leading readers through specific tasks. In further contrast to a *theoretical* toolkit like [Using Randomization in Development Economics Research](http://economics.mit.edu/files/806), it is envisioned as a *practical* toolkit – each short section should allow the reader to implement the most basic version of the task using code snippets and purpose-built or simulated data.

The goal would be to have a working draft that could potentially be debuted at the 2019 Manage Successful Impact Evaluations training. Many of the code materials would be very similar and would therefore also be used for the Stata Track 2 sessions in that training.

![](/img/experimental-econ.png)

## Resources Required

It is unlikely that an external person will be able to successfully pull together the resources needed to create this, or to understand the best practices sufficiently well to write them out. Therefore we plan to primarily devote staff time to the creation of the guide. Over six months we estimate 1.5 days per week devoted to writing, as well as intern effort for reviewing as required.

The timeline goal will be to be able to use code, exercises, and text as a basis for the 2019 Manage Successful Impact Evaluations training in June. Some of the key sections already exist for that training in draft form (https://osf.io/cyekq/), particularly in the Labs, and need to be cleaned up and edited for length, content, and clarity. Others need significant new investment in terms of agreeing on and coding up best practices and explanatory language.

## Structure

The guide will be structured according to the four thematic sections of the DIME Wiki: Research Design, Data Collection, Analysis, and Publication. However, the content will be distinct: the guide should serve as a readable and practical guide to core tasks of each of these project steps. Research Design includes tools like sampling and power calculations. Data Collection includes basic SurveyCTO programming and principles of questionnaire design. Analysis, the largest section, includes principles of data management, code management, data cleaning, and analysis and visualization. Finally, the Publication section contains basic information on preparing a finished project for code review and public release, including sample tools and workflows for writing and revising, and a discussion of ethical handling of data at project completion. Each section will include concrete guides to tools and processes used at DIME, and will also incorporate `code snippets` as a handy reference where applicable. It will also have an online version, similar to the structure of Kieran Healy's [Data Visualization](http://socviz.co).

However, to become a full reference, the process will require updating significant portions of the Wiki to incorporate materials from the [DIME Onboarding and Continuing Education](https://showcase.dropbox.com/s/DIME-Research-Assistant-Training-Materials-VKuivyxUNY812HXofgr5t), the [Manage Successful Impact Evaluations](https://osf.io/cyekq/) training, and materials from the DIME Analytics [GitHub repositories](https://worldbank.github.io/dimeanalytics/#github-repositories). It would be therefore desirable to hire a full-time STC for curating, cataloguing, and updating these resources as necessary to complete the guide.

For example, the first part of the "Sampling and Power Calculations" Wiki page reads:

> Sample Size
> Calculations are a statistical tool to help determine Sample Size. This is important, a sample that is too small means that you will not be able to detect a statistically significant effect, and a sample size that is too large can be a waste of limited resources.
>
> You can estimate either sample size or minimum detectable effect. Which you should estimate depends on the research design and constraints of a specific impact evaluation. The types of questions you can answer through power calculations include:
> *   Given that I want to be able to statistically distinguish program impact of a 10% change in my outcome of interest, what is the minimum sample size needed?
> *   Given that I only have budget to sample 1,000 households, what is the minimum effect size that I will be able to distinguish from a null effect? (this is known as Minimum Detectable Effect)
>
> Power calculations should be done at Impact Evaluation Design stage. They are mostly typically done using Stata or Optimal Design (See Power Calculations in Optimal Design, Power Calculations in Stata). Power calculations can be used to determine either sample size (using standard assumption of 80% power) or power (if sample size is constrained).

The linked page, "Power Calculations in Stata", has a long list of options and comparisons between power calculation options. By contrast, this guide's section on "Sampling and Power Calculations" would:

1.  Motivate power calculations with a short introduction, referencing and linking one or two preeminent publications on the topic (["The Dismal Science Remains Dismal, Say Scientists"](https://www.wired.com/story/econ-statbias-study/), ["Why most published resesarch findings are false"](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC1182327/)).
2.  Use Stata to (a) sample and (b) randomize from a universe dataset. Describe what is needed to make these processes reproducible, and provide best-practice commands for them. ([Code](https://github.com/bbdaniels/dime-msie-track2-solutions/blob/master/DataWork/Lab5/Dofiles/Analysis/lab5-randomization1.do))
3.  Use a simulation approach to repeat (2) many times with simulated outcomes, illustrating the dispersion of the regression coefficients due to each part of the data generating process conditional on fixed true parameters.
4.  Show that the power of an experimental design is a function of sampling and randomization parameters by varying those parameters and recording power. ([Code](https://gist.github.com/bbdaniels/774d5e5e31f32b74ec91bcb914453ae1))
5.  Show that the power of an experimental design further varies with the hypothesized effect size, and provide a final simulation doing so. ([Code](https://gist.github.com/bbdaniels/774d5e5e31f32b74ec91bcb914453ae1))

The total written text for this would be only a few short pages, with the primary resource being commented code and illustrations. These will be linked in a GitHub repository or similar public resource where the code can be copied and run.
