
# Installation 

```coffee
install.packages(c("devtools", "roxygen2", "knitr"))
```

If you are able to load the devtools package with

```
library(devtools)
has_devel()
```  

and it returns TRUE, you’re all set. If it throws up an error, you will have to install or update xcode on a mac (It’s free from Apple. Find it on the mac app store) or if you are on a PC, you’ll have to install RTools ([http://cran.r-project.org/bin/windows/Rtools/](http://cran.r-project.org/bin/windows/Rtools/))

If you’re on Linux, then run:

```
apt-get install r-base-dev
```
`Xcode` is a large download (~2 gigs) so please do that before tomorrow afternoon while on a fast connection.

Other packages will be easy to install during the session. But if you have time now, you can also get these out of the way.

Run:

```coffee
library(devtools)
install_github("hadley/testthat")
install_github("hadley/assertthat")
```