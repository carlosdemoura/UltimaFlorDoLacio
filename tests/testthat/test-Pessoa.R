test_that("Pessoa() works", {
  old_encoding = getOption("encoding")
  options(encoding = "UTF-8")
  x = list(author = "Fernando Pessoa",
           title = "Argumento do jornalista",
           text = "Argumento do jornalista\n\nAs artes todas são uma futilidade perante a literatura. As artes que se ...",
           source = "http://arquivopessoa.net/textos/4075"
  )
  expect_equal(Pessoa(max.char = 100, seed = 0), x)
  options(encoding = old_encoding)
})
