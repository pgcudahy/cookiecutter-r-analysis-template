R data analysis template
========================

My template for setting up an R analysis project. This template uses
[cookiecutter](https://github.com/audreyr/cookiecutter), a Python templating
tool, to setup a directory structure.

Acknowledgements
----------------
Modified from [lazappi/cookiecutter-r-analysis](https://github.com/lazappi/cookiecutter-r-analysis) and [bdcalf/cookiecutter-r-data-analysis](https://github.com/bdcaf/cookiecutter-r-data-analysis)

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
----------

The resulting analysis project will have the following structure.

```
project_title
├── README.md
├── artifacts - All results are placed in the artifacts directory.
├── data - Intermediate files are placed in the data directory. These may be modified or deleted.
├── dataraw - All original input data is placed in the dataraw directory. They may not be modified or deleted. 
├── notebooks - Analysis is done in jupyter notebooks placed in the notebooks directory.
└── r - All reusable R code is placed in the r directory.
    └──.lintr - lintr (https://github.com/jimhester/lintr) configuration file.
```

Workflow
----------

 + Input data is put in the `dataraw` directory and should not be modified
 + Data is analyzed by Jupyter notebooks in the `notebooks` directory
 + Transformed data which can be recreated is in the `data` directory
 + Output for publication or dissemination is put in the `artifacts` folder
 + `R` source code (convenience functions) is put in the `r` folder

License
-------

This project is licensed under the terms of the [MIT License](/LICENSE)
