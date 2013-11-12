
# When, why, and how to write R packages

To avoid duplicating material, I'll point you to a great repository by Jeffrey Leek and his research group.   
* [Developing R packages](https://github.com/jtleek/rpackages/blob/master/README.md)

## First let's write some unit tests  

Wait, we already did that!

## Then some functions

For this part please follow the etherpad

## Then let's document these functions

Please do that on your own when we get to this part. I'll post a complete solution back here at a later time.

## Create a R package skeleton

Never ever use base R's built in `package.skeleton()`. It only works once and hard to iterate as one would while writing a package.

```
library(devtools)
# Make sure your current working directory is the same as your package directory. Otherwise you'll need to explicitly specify the path.
# or simply getwd()
load_all()
# or 
create()
```

This creates a package skeleton for you and can be updated at anytime.
Exit R and then run a `ls` or `dir` to see the structure of the folder. If you're on unix or mac (some additional install might be required here), you can also run `tree`

To update the code:

```
# To reload everything from scratch
load_all("path", T)
```

**The Description File**

This file contains all the important meta-data about your package, including:


* A package title
* A package description
* * The authors (and collaborators, contributers)
* Version numbers
* Dependencies
* Functions imported from other packages
* The license
* What functions are publicly exposed

You can store some information in your `.rprofile` ahead of time to speed up the process. In my case, my `.rprofile` includes the following lines:

```coffee
options(devtools.desc.author = "'Karthik Ram <karthik.ram@gmail.com> [aut, cre]'")
options(devtools.desc.license = "CC0")
```

Here's an example `DESCRIPTION` file

```coffee
Package: rfisheries
Title: R interface for fisheries data
Version: 0.0.5
Date: 2013-08-01
Authors@R: c(person("Karthik", "Ram", role = c("aut", "cre"), email =
    "karthik.ram@gmail.com"), person("Carl", "Boettiger", role = "aut"),
    person("Andrew", "Dyck", role = "aut"))
Maintainer: Karthik Ram <karthik.ram@gmail.com>
Description: A programmatic interface to openfisheries.org. This package is part of the rOpenSci suite (http://ropensci.org)
Depends:
    R (>= 2.15)
Imports:
    RCurl,
    RJSONIO
URL: http://www.github.com/ropensci/rfisheries
BugReports: http://www.github.com/ropensci/rfisheries/issues/new
License: CC0
Collate:
    'country_codes.R'
    'landings.R'
    'species_codes.R'
```

This automatically populates me as the author along with my preferred license every time I create a new package from my computer. You are always free to edit the `DESCRIPTION` file manually. 


## Then update documentation

If you're already running R from inside the working directory, simply run

```coffee
document(".")
check_doc()
```
This will identify any problems with missing documentation, any variables that are declared but not part of your `roxygen2` markup etc.

## Add some data to the package itself

You can also include data as part of your package in a folder called `/data`.  Then add documentation to any `.R` file (usually `packagename.R`) like so:

```
#' @docType data
#' @keywords datasets
#' @name name_of_dataset
#' @usage data(name_of_dataset)
#' @format A data table with x rows and x variables
```

## Test it again

```coffee
test()
# or 
test_dir("path/to/folder/of/tests/")
test_file("path/to/file/with/tests")
```

## Check everything

```
check()
```

This is equivalent to `R CMD CHECK` but will also run all the tests, update all documentation as necessary, check everything and report any errors that might occur.

## Write some Vignettes

Vignettes are long form documentation for your package. Want to describe a few use-cases along with example data on how someone might use your package? Write a script in markdown with the extension `.Rmd` and place it in your `vignettes/` folder inside the package. Vignettes will get compiled to html during package build.

```coffee
VignetteBuilder: knitr
Suggests: knitr
```
To build your vignette:

```
build_vignette()
```

In each `.Rmd` file inside `vignettes/` include the following at the top:

```html
<!--
%\VignetteEngine{knitr}
%\VignetteIndexEntry{Vignette title}
-->
```


## Install locally

```coffee
# from the package folder
install()
# or specify a path as with other functions
install("path/to/package")
```

You can also build a local package that can be installed elsewhere from source.

```coffee
build()
```


## Deploy to GitHub

Maintaining your package on GitHub makes it easy for others to install, test, and offer feedback during the beta phase. You can use GitHub issues to file bug reports, feature requests, and suggestions. 


## Then download back from GitHub.

If you know `Git` and how to use `GitHub` (this site), then you can allow others to install your package directly from the web.

example:  

```coffee
library(devtools)
install_github("your_username/package_name")
```

## Releasing your package to CRAN

Once you're happy with the way the package is working, release it to CRAN so it is widely avaialble for everyone to use. 

```coffee
release()
```

This will lead to a series of questions to make sure you've satisfied every CRAN requirement for a package.

