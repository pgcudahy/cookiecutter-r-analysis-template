#!/usr/bin/env bash
# Set up a reproducible R environment
# Adapted from https://github.com/khughitt/cookiecutter-rmd-data-science

# install renv
Rscript -e "if(!require("pak")) install.packages("pak")"
Rscript -e "pak::pkg_install('renv', ask = FALSE)"

# Initialize new package-specific environment / private library;
Rscript -e "renv::init()"
Rscript -e "install.packages('pak')"
Rscript -e "pak::pkg_install(c('tidyverse', 'IRkernel', 'languageserver'), ask = FALSE)"
Rscript -e "IRkernel::installspec()"
Rscript -e "renv::snapshot(confirm = FALSE)"

# initialze git repo
git init
git add .
git commit -am 'Git initialized by cookiecutter'
