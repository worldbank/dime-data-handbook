![](./images/dime.png)

# Data for Development Impact: Proposal

This proposal is for a short practical publication titled **"Data for Development Impact: The DIME Analytics Resource Guide"**. The guide's primary purpose is to be a workflow guide for DEC & DIME research assistants (RAs), and should serve as a desk reference for people of all experience levels who use data as part of their development workflow. It will also have an online version, similar to the structure of Kieran Healy's [Data Visualization](http://socviz.co).

**Data for Development Impact** will serve as a companion to the [DIME Wiki](dimewiki@worldbank.org), and heavily reference and link to appropriate Wiki pages. The guide's original content primarily comes from the addition of specific *workflows*: how-tos that illustrate specific tasks with specific software combinations and commands.  Where the Wiki seeks to explain *why* things are done in a manner that improves the readers' understanding of topics, the Guide provides a linear, narrative structure to the Wiki content, leading readers through specific tasks.

In this sense, the Wiki functions much like a "user manual": once someone knows what they want to know, they can explore in a rich and self-structured way the full available information on that topic. By contrast, this publication is a "user guide": it offers a very quick reference introduction to the topics that the user needs to know, key concepts they may need to research further, and specific instructions for getting through the simpelst version of the specific task at hand. In further contrast to a *theoretical* toolkit like [Using Randomization in Development Economics Research](http://economics.mit.edu/files/806), it is envisioned as a *practical* toolkit – each short section should allow the reader to implement the most basic version of the task using code snippets and available or simulated data.

The guide will be structured according to the four thematic sections of the DIME Wiki (pictured). However, the content will be distinct: the guide should serve as a readable and practical guide to core tasks of research design, data collection, data analysis, and publication. It will provide concrete guides to tools and processes used at DIME, and will also incorporate `code snippets` as a handy reference. It will have a practical guide to code collaboration and version control with Git; and include a guide to the importance of quality code and integration with the `iefolder` file structure.

It will require updating significant portions of the Wiki to incorporate materials from the [DIME Onboarding and Continuing Education](https://showcase.dropbox.com/s/DIME-Research-Assistant-Training-Materials-VKuivyxUNY812HXofgr5t), the [Manage Successful Impact Evaluations](https://osf.io/cyekq/) training, and materials from the DIME Analytics [GitHub repositories](https://worldbank.github.io/dimeanalytics/#github-repositories). It would be therefore desirable to hire a full-time STC for curating, cataloguing, and updating these resources as necessary to complete the guide.

For example, the first part of the "Sampling and Power Calculations" Wiki page reads:

> Sample Size

>  Calculations are a statistical tool to help determine Sample Size. This is important, a sample that is too small means that you will not be able to detect a statistically significant effect, and a sample size that is too large can be a waste of limited resources. You can estimate either sample size or minimum detectable effect. Which you should estimate depends on the research design and constraints of a specific impact evaluation. The types of questions you can answer through power calculations include:

> *  Given that I want to be able to statistically distinguish program impact of a 10% change in my outcome of interest, what is the minimum sample size needed?
> * Given that I only have budget to sample 1,000 households, what is the minimum effect size that I will be able to distinguish from a null effect? (this is known as Minimum Detectable Effect)

> Power calculations should be done at Impact Evaluation Design stage. They are mostly typically done using Stata or Optimal Design (See Power Calculations in Optimal Design, Power Calculations in Stata). Power calculations can be used to determine either sample size (using standard assumption of 80% power) or power (if sample size is constrained).

The linked page, "Power Calculations in Stata", has a long list of options and comparisons between power calculation options. By contrast, this guide's section on "Sampling and Power Calculations" would:

1. Motivate power calculations with a short paragraph, referencing (and linking) one or two preeminent publications on the topic ("Why most published resesarch findings are false").
2. Use Stata to (a) sample and (b) randomize from a universe dataset.
3. Use a simulation approach to repeat (2) many times with simulated outcomes, illustrating the dispersion of the regression coefficients due to each part of the process with fixed parameters.
4. Show that the power of an experimental design is a function of sampling and randomization parameters by varying those parameters and recording power.
5. Show that the power of an experimental design further varies with the hypothesized effect size, and provide a final simulation doing so.

The total written text for this would be only a few short pages, with the primary resource being commented code and illustrations. These will be linked in a GitHub repository or other similar public resource where they can be copied and run.
