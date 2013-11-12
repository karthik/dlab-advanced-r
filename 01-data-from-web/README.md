
# Acquiring data from the web

There are many ways to read data into R directly from the web. These include (but not limited to):

* Reading tabular data from a URL (including `xls` files but more commonly ascii files like `csv` or `txt`)
* Querying databases like `MySQL` or `Postgres`
* Making calls to Application Programming Interfaces (APIs) that can return data in one of many formats but most commonly `XML` or `JSON`

**A few examples**

Read data from a URL:

```coffee
data <- read.csv("http://inundata.org/mammals.csv")
> head(data)
                 Species Mass_ln_g First_appearance_mya Last_appearance_mya
1  Barylambda churchilli    12.718                 57.1                57.0
2      Barylambda faberi    13.118                 57.4                55.0
3 Barylambda jackwilsoni    11.870                 59.7                54.5
4     Coryphodon armatus    13.070                 53.9                50.0
5    Coryphodon eocaenus    12.881                 55.4                55.1
6     Coryphodon lobatus    13.731                 53.8                51.2
           Family Order_or_higher Limb_morphology
1   Barylambdidae       Cimolesta     Plantigrade
2   Barylambdidae       Cimolesta     Plantigrade
3   Barylambdidae       Cimolesta     Plantigrade
4 Coryphodontidae       Cimolesta     Graviportal
5 Coryphodontidae       Cimolesta     Graviportal
6 Coryphodontidae       Cimolesta     Graviportal
```

What are the downsides of sharing data this way?

**From a more persistent repository:**

```coffee
library(rfigshare)
# If you don't have the package, run
#install.packages(rfigshare)
url <- fs_download(90818)
new_data <- read.csv(url)
```

Why is this better?

## Building a package for an API

Since there isn't enough time today to get into XML or web scraping, let's work with a fairly simple API that we can wrap in R.

We'll try to rebuild the package `rfisheries` in class today. Here is the [API](http://openfisheries.org/api-info).

Take 5 minutes to look through the page. 
* How many functions can we write?
* What type of output should we expect from these functions?

The answer to the second question will help us determine what tests to write. We will live code the functions in the etherpad.




