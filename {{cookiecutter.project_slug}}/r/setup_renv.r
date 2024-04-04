# Install the pak package manager and renv
sessionInfo()

if (!require("pak")) install.packages("pak")
if (!require("renv")) install.packages("renv")

# Initialize new package-specific environment
# Per https://github.com/rstudio/renv/issues/1210
options(renv.config.pak.enabled = TRUE)
renv::init()
renv::install(c("pak", "tidyverse", "IRkernel", "languageserver"), prompt = FALSE)
IRkernel::installspec()
renv::snapshot()
