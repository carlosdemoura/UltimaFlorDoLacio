#' Get a text by Pessoa every day
#'
#' Draw a random text by Portuguese poet Fernando Pessoa from
#' <arquivopessoa.net> based on an seed.
#'
#' @inheritParams mock_function_for_documentation
#'
#' @return list; contains author, title, text, and source
#'
#' @examples Pessoa(max.char = 1000)
#' # should return the first 1000 ish characters of today's Pessoa text.
#'
#' @export
#'
#' @import rvest
#' @import purrr
Pessoa = decorate(function() {
  draw = floor(runif(1, 4, 4544.99))

  url = paste0("http://arquivopessoa.net/textos/", draw)

  content = rvest::read_html(url) |>
    rvest::html_elements(".content") |>
    rvest::html_text2() |>
    purrr::pluck(1) |>
    substring(37) |>
    strsplit("\n") |>
    purrr::pluck(1)

  list(author = content[1],
       title = content[2],
       text = substring(paste0(content[3:length(content)], collapse = "\n"), 2),
       source = url)
})
