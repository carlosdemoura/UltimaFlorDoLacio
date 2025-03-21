
# UltimaFlorDoLacio <a href="https://github.com/carlosdemoura/UltimaFlorDoLacio"><img src="logo_Lacio/lacio.png" align="right" height="138" /></a>

<!-- badges: start -->
[![R-CMD-check](https://github.com/carlosdemoura/UltimaFlorDoLacio/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/carlosdemoura/UltimaFlorDoLacio/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

The goal of `UltimaFlorDoLacio` is to provide a nice way to get poems/texts in Portuguese in the R environment.

Each main function is intended to give random quotes (the user can set the seed) from authors who wrote in Portuguese. The functions are named after these authors and the quotes were extracted from public repositories.

We currently have texts by Fernando Pessoa and Lupicínio Rodrigues, available by the functions `Pessoa()` and `Lupicinio()` (respectively, of course).

Very special thanks to [Tomás Bernardes](https://github.com/tomasbp2/) for his [short course on R packages](https://github.com/tomasbp2/Curso-Rpacotes).

Enjoy this ["ignorant and beautiful"](https://pt.wikipedia.org/wiki/Olavo_Bilac#L%C3%ADngua_Portuguesa) language!

## Installation

You can install the development version of UltimaFlorDoLacio from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("carlosdemoura/UltimaFlorDoLacio")
```

## Example

The code below should return the first 1000 ish characters of today's texts by Fernando Pessoa and Lupicínio Rodrigues:

``` r
library(UltimaFlorDoLacio)

Pessoa(max.char = 1000, seed = Sys.Date())

Lupicinio(max.char = 1000, seed = Sys.Date())
```

