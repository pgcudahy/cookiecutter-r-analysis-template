#!/usr/bin/env bash
echo "Starting post-installation script" >&2

echo "Initialize new package-specific environment / private library" >&2
Rscript --verbose "r/setup_renv.r"

echo "Initialze git repo" >&2
git init
git add .
git commit -am 'Git initialized by cookiecutter'
