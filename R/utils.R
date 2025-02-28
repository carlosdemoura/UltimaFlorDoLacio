#' Main wrapper.
#'
#' wrapper that automates the seed setting and adjustment of the text.
#'
#' @param f function to be wrapped.
#'
#' @return wrapped function.
decorate = function(f) {

  wrapper = function(max.char = NULL, flag = " ", seed = NULL) {
    stopifnot(is.double(seed)      | is.null(seed),
              is.integer(max.char) | is.null(max.char),
              is.character(flag)
    )

    set_seed(seed)
    x = f()
    if (!is.null(max.char)) {
      x$text = x$text |>
        substring(1, max.char) |>
        adjust_text(flag)
    }
    return(x)
  }

  return(wrapper)
}


#' Remove last characters from text and adjust it.
#'
#' Removes text after last valid character.
#'
#' @param text Text to be cropped.
#' @param flag Character, everything after the last time this character appears will be removed.
#'
#' @return Text cropped and adjusted.
#'
#@examples adjust_text(text = "some-text\n some-more-text", flag  = "\n")  # shoud return "some-text".
adjust_text = function(text, flag = " ") {
  split = text |>
    strsplit(paste0("[", flag ,"]")) |>
    purrr::pluck(1) |>
    utils::head(-1)

  if (length(split)) {
    text = split |>
      paste0(collapse = flag) |>
      paste0(" ...")
  }

  text
}


#' Set a seed based on the current day.
#'
#' Set a seed based on the current day or a seed specified by the user.
#'
#' @param seed a seed, if NULL the current day is used.
set_seed = function(seed) {
  set.seed(ifelse(is.null(seed), Sys.Date(), seed))
}


#' Get a text by Pessoa every day.
#'
#' Draw a random text by Portuguese poet Fernando Pessoa from <arquivopessoa.net> based on an seed.
#'
#' @param max.char maximum number of characters to be returned, if NULL the text is not cropped.
#' @param flag Character, if max.char is used, everything after the last time this character appears will be removed.
#' @param seed a seed for the draw, if NULL the current day is used.
#'
#' @return A text by Pessoa.
#' @export
#'
#' @examples pessoa(max.char = 1000)  # should return the first 1000 ish characters of today's Pessoa text.
mock_function_for_documentation = function() {}
