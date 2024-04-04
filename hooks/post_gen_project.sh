#!/usr/bin/env bash
echo "Starting post-installation script"

echo "Initialize new package-specific environment / private library"
Rscript --verbose "r/setup_renv.r"

echo "Initialze git repo"
git init
git add .
git commit -am 'Git initialized by cookiecutter'
