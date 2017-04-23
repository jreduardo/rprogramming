## Build site
rmarkdown::render_site()

## Extract source codes of lectures
files <- list.files(pattern = "lecture.*\\.Rmd")
dir.create("codes")
setwd("./codes")
sapply(paste0("../", files),
       knitr::purl,
       documentation = 0L)

## Move R/ to _site/R/
system("mv ../codes/ ../_site/")
