markdown: 02-testing/README.md

02-testing/README.md: 02-testing/README.Rmd
	cd 02-testing;Rscript -e "library(knitr); knit('README.Rmd') "




