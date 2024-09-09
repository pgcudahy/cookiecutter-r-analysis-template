#!/usr/bin/env bash
echo "Starting post-installation script" >&2

#Setup virtual environments for R and python
#echo "Initialize new package-specific environment / private library" >&2
#Rscript --verbose "r/setup_renv.r"
#python3 -m venv "python/venv"

#Setup git
echo "Initialze git repo" >&2
git init
git add .
git commit -am 'Git initialized by cookiecutter'
