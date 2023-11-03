R data analysis template
========================

My template for automatically setting up a new data analysis project using [R](https://www.r-project.org/about.html).
This template uses [cookiecutter](https://github.com/audreyr/cookiecutter), a Python templating tool, to setup a directory structure,
set up an [renv](https://rstudio.github.io/renv/) reproducible environment, and initialize git.

Acknowledgements
----------------
Modified from [lazappi/cookiecutter-r-analysis](https://github.com/lazappi/cookiecutter-r-analysis), 
[bdcalf/cookiecutter-r-data-analysis](https://github.com/bdcaf/cookiecutter-r-data-analysis),
and [khughitt/cookiecutter-rmd-data-science](https://github.com/khughitt/cookiecutter-rmd-data-science)

Requirements
------------

Install `cookiecutter` using `pip`:

```
pip install cookiecutter
```

OR

`homebrew`:

```
brew install cookiecutter
```

Usage
-----

Generate a new analysis directory using:

```
cookiecutter gh:pgcudahy/cookiecutter-r-analysis-template
```

You will then be asked some questions to set up your project. Leaving answers
blank will select the default (shown in [brackets]).

Structure
---------

The resulting analysis project will have the following structure.

```
project_title
├── README.md
├── artifacts - All results (eg figures, tables)
├── data - Intermediate data files (eg cleaned dataframes). These may be modified or deleted.
├── dataraw - All original input data. These may not be modified or deleted. 
├── notebooks - Jupyter notebooks documenting all analysis.
└── r - Reusable R code (eg convenience functions).
```

Workflow
--------

 + Raw input data is put in the `dataraw` directory and should not be modified
 + Data is analyzed by Jupyter notebooks in the `notebooks` directory
 + Custom `R` source code used in the data analysis is put in the `r` folder
 + Transformed datasets are saved in the `data` directory. Must be able to be reproduced from the raw data and notebooks.
 + Output for publication or dissemination is put in the `artifacts` folder

 Environment
 -----------
  After setting up the directory environment:
  + [renv](https://rstudio.github.io/renv/) is installed and used to manage the R environment
  + Git is initialized an initial commit is made

License
-------

This project is licensed under the terms of the [MIT License](/LICENSE)
