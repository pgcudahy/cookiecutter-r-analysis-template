#!/usr/bin/env bash
# Set up a reproducible R environment
# Adapted from https://github.com/khughitt/cookiecutter-rmd-data-science

# Install renv
Rscript -e "install.packages('renv', repos='http://cran.us.r-project.org')"

# Initialize new package-specific environment / private library;
Rscript -e "renv::init()"
# Installing tidyverse from source takes forever! However from
# binary, stringi often fails. So let's do that one from source
Rscript -e "renv::purge(c('stringi'))"
Rscript -e "renv::install(c('stringi'))"
Rscript -e "renv::install(c('tidyverse', 'IRkernel'), type = 'binary')"
Rscript -e "IRkernel::installspec()"
Rscript -e "renv::snapshot(confirm = FALSE)"

# initialze git repo
git init
git add .
git commit -am 'Git initialized by cookiecutter'
