
# Installation 

```coffee
install.packages(c("devtools", "roxygen2", "knitr"))
```

If you are able to load the devtools package with

```
library(devtools)
has_devel()
```  

and it returns `TRUE`, you’re all set. If it throws up an error, you will have to install or update xcode on a mac (It’s free from Apple. Find it on the mac app store). Please also open xcode, go to the Settings > Downloads and install the **Command Line Tools**. If you are on a PC  you’ll have to install `RTools` ([http://cran.r-project.org/bin/windows/Rtools/](http://cran.r-project.org/bin/windows/Rtools/))

If you’re on Linux, then run:

```
apt-get install r-base-dev
```
`Xcode` is a large download (~2 gigs, ~ 1 hour to download) so please do that before tomorrow afternoon while on a fast connection.

Other packages will be easy to install during the session. But if you have time now, you can also get these out of the way.

Run:

```coffee
library(devtools)
install_github("hadley/testthat")
install_github("hadley/assertthat")
install.packages("RCurl")
install.packages("RJSONIO")
```

Some advice from one of the participants (Magdalena S.)

For all that might end trouble shooting a combination of Xcode 5.0 and Mavericks (documented in the following thread: [http://stackoverflow.com/questions/19503995/error-when-with-xcode-5-0-and-rcpp-command-line-tools-are-installed/19505397#19505397](http://stackoverflow.com/questions/19503995/error-when-with-xcode-5-0-and-rcpp-command-line-tools-are-installed/19505397#19505397)), inclusion of `~/.R/Makevars` file with the flags given in Romain's post (#2), should solve the issue. (XCode 5.0 does not include `llvm-gcc` anymore).

PS: If you're still using a version of `R` older than `3.0`, please upgrade to the latest version.


 
