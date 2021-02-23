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
