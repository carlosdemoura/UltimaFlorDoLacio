
# UltimaFlorDoLacio <a href="https://github.com/carlosdemoura/UltimaFlorDoLacio"><img src="logo_Lacio/lacio.png" align="right" height="138" /></a>

<!-- badges: start -->
<!-- badges: end -->

The goal of `UltimaFlorDoLacio` is to provide a nice way to get poems/texts in Portuguese in the R environment.

Each main function is intended to give random quotes from authors who wrote in Portuguese. The user can set the seed - if no seed is given, the current system day is set as the seed. The functions are named after these authors and the quotes were extracted from public repositories.

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

Pessoa(1000)

Lupicinio(1000)
```

