#' Main wrapper
#'
#' Wrapper that automates the seed setting and adjustment of the text in the
#' main functions of the packages.
#'
#' @param f function to be wrapped.
#'
#' @return wrapped function.
decorate = function(f) {

  wrapper = function(max.char = NULL, flag = " ", seed = Sys.Date()) {
    stopifnot(
      "seed must be double"          = is.double(seed),
      "max.char must be int or NULL" = any(is.int(max.char), is.null(max.char)),
      "flag must be a character"     = is.character(flag)
    )

    set.seed(seed)
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


#' Remove last characters from text and adjust it
#'
#' Cuts everything on a string after last time a flag character is present.
#'
#' @param text string; text to be cropped.
#' @param flag character; everything after the last time this character appears will be removed.
#'
#' @return string; text cropped and adjusted.
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
#adjust_text(text = "some-text\n some-more-text", flag  = "\n")  # shoud return "some-text".


#' Mock function for the sole purpose of documenting main functions
#'
#' @param max.char integer; maximum number of characters to be returned; if NULL (DEFAULT) the text is not cropped.
#' @param flag     character; if max.char is used, everything after the last time this character appears will be removed; the DEFAULT is a single space " ".
#' @param seed     numeric; a seed for the draw; the DEFAULT is the system's current day.
mock_function_for_documentation = function(max.char = 0, flag = 0, seed = 0) {TRUE}


#' Verify if a variable is as integer number
#'
#' @param x numeric.
#'
#' @return boolean;
#' * `TRUE`  if `x` is an integer number,
#' * `FALSE` if it is not.
is.int = function(x) {
  if (is.numeric(x)) {
    if (x == round(x)) {
      return(TRUE)
    }
  }

  return(FALSE)
}
