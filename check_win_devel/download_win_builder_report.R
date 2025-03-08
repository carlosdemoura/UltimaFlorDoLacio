folders = "https://win-builder.r-project.org/8esWmBov13K0/"

while(length(folders)) {

}

links =
  url |>
  rvest::read_html() |>
  rvest::html_elements("a") |>
  rvest::html_attr("href") |>
  {\(.) .[. != "/"]}()

folders = links |>
  {\(.) .[is_folder(.)]}()

files = setdiff(links, folders) |> {\(.) .[is_folder(.)]}()





  rvest::html_text2() |>
  purrr::pluck(1) |>
  substring(37) |>
  strsplit("\n") |>
  purrr::pluck(1)


is_folder = function(vec_of_paths) {
  sapply(
    vec_of_paths,
    function(path) {
      path |>
        strsplit("") |>
        purrr::pluck(1) |>
        tail(1) |>{\(.) . == "/"}()
  }) |>
    unname()
}
