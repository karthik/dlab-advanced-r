markdown: 01-testing/README.md

01-testing/README.md: 01-testing/README.Rmd
	cd 01-testing; Rscript -e "library(knitr); knit('README.Rmd')"




