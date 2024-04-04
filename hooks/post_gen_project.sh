#!/usr/bin/env bash
# Initialize new package-specific environment / private library
Rscript --verbose "r/setup_renv.r"

# Initialze git repo
git init
git add .
git commit -am 'Git initialized by cookiecutter'
