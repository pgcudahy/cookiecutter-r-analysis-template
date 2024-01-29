#!/usr/bin/env bash
# Set up a reproducible R environment
# Adapted from https://github.com/khughitt/cookiecutter-rmd-data-science

# install renv
Rscript -e "install.packages('renv', repos='http://cran.us.r-project.org')"

# initialize new package-specific environment / private library;
Rscript -e "renv::init()"
Rscript -e "install.packages(c('tidyverse', 'irkernel'), repos='http://cran.us.r-project.org')"
Rscript -e "IRkernel::installspec()"
Rscript -e "renv::snapshot(confirm = FALSE)"

# initialze git repo
git init
git add .
git commit -am 'Git initialized by cookiecutter'