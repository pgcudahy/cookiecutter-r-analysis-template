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
├── artifacts - All results (eg figures, tables)
├── data - Intermediate data files (eg cleaned dataframes). These may be modified or deleted.
├── dataraw - All original input data. These may not be modified or deleted. 
├── notebooks - Jupyter notebooks documenting all analysis.
└── r - Reusable R code (eg convenience functions).
    └──.lintr - lintr (https://github.com/jimhester/lintr) configuration file.
```

Workflow
----------

 + Raw input data is put in the `dataraw` directory and should not be modified
 + Data is analyzed by Jupyter notebooks in the `notebooks` directory
 + Custom `R` source code used in the data analysis is put in the `r` folder
 + Transformed datasets are saved in the `data` directory. Must be able to be reproduced from the raw data and notebooks.
 + Output for publication or dissemination is put in the `artifacts` folder

License
-------

This project is licensed under the terms of the [MIT License](/LICENSE)
