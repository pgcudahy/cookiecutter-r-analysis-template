# Install the pak package manager and renv
if(!require("pak")) install.packages("pak")
if(!require("renv")) install.packages("renv")

# Initialize new package-specific environment
renv::init()
# Per https://github.com/rstudio/renv/issues/1210
renv::config(renv.config.pak.enabled = TRUE)
renv::config(renv.config.auto.snapshot = TRUE)
renv::install(c('pak', 'tidyverse', 'IRkernel', 'languageserver'))
IRkernel::installspec()