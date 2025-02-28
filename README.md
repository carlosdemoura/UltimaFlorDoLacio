
# UltimaFlorDoLacio

<!-- badges: start -->
<!-- badges: end -->

The goal of `UltimaFlorDoLacio` is to provide a nice way to get poems/texts in Portuguese in the R environment.

Each main function is intended to give random quotes from authors who wrote in Portuguese. The user can set the seed - if no seed is given, the current system day is set as the seed. The functions are named after these authors and the quotes were extracted from public repositories.

We currently have texts by Fernando Pessoa and Lupicínio Rodrigues, available by the functions `Pessoa()` and `Lupicinio()` (respectively, of course).

Enjoy this ["ignorant and beautiful"](https://pt.wikipedia.org/wiki/Olavo_Bilac#L%C3%ADngua_Portuguesa) language!

## Installation

You can install the development version of UltimaFlorDoLacio from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("carlosdemoura/UltimaFlorDoLacio")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(UltimaFlorDoLacio)

Pessoa(1000)

Lupicinio(1000)
```

