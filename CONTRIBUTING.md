# How to make direct contributions to this handbook

This book is written in "_bookdown_" in R.
You do not need to have R/RStudio and _bookdown_ installed
to make contributions to the book (see part 1 below),
but you will need that to compile the book (see part 2 below).

## Part 1 - Contribute directly to the _bookdown_ files

Each chapter is written in R markdown files (`.Rmd`).
The `.Rmd` files for chapters are stored in the folder `chapter/`
and the files for appendices etc. are in the folder `auxiliary/`.
You can find a cheat sheet for `.Rmd` syntax here
: https://rstudio.com/resources/cheatsheets/
(but you need to scroll down to find the R Markdown cheat sheet).

If you have write access to this repo,
create a branch from the `develop` branch (not from `master`)
and make your edits to that branch.
If you do not have write access,
then create a fork of this repo and make your edits in your fork.
Make them either in `develop` in your fork,
or in a branch that you create from `develop` in your fork.
You can make your edits in any text editor or on GitHub.com.

We do not require that you compile the book before submitting a PR,
but we very much appreciate if you do so
to test that there is no _bookdown_ bugs.
This will speed up the processing of us accepting your suggested edit.

## Part 2 - Compiling the _bookdown_ files into the e-book

#### Bookdown step 1 - Clone this repository

To compile this e-book,
you must start by cloning this `dime-data-handbook` repository.

#### Bookdown step 2 - Install R and RStuido

You need to install both R and RStudio.
Both software can be self-installed on World Bank computers
using the "Software Center" (search the Windows menu).
If you do are not using a World Bank computer,
then you can install R Studio Desktop
[here](https://rstudio.com/products/rstudio/download/)
(these instructions covers how to install both R and RStudio).

#### Bookdown step 3 - Install `bookdown` package
Open RStudio and in the console window install _bookdown_ using `install.packages("bookdown")`

#### Bookdown step 4 - Open DRiP R project

In the `dime-data-handbook` there is a file called `drip.Rproj`.
Use RStudio to open this file.
You open the R project file in RStuido in the "File" menu
and then select "open project".
Navigate to and open the `drip.Rproj` file.

#### Bookdown step 4 - Compiling the book

In the same window as your "Environment" window, select the "Build" tab.
In the menu below these tabs click "Build Book" to compile the book.
This can take up to ten minutes,
especially if it is the first time you compile the book.