test_that("Pessoa() works", {
  old_encoding = Sys.getlocale("LC_CTYPE")
  Sys.setlocale("LC_CTYPE", "pt_BR.UTF-8")
  x = list(author = "Fernando Pessoa",
           title = "Argumento do jornalista",
           text = "Argumento do jornalista\n\nAs artes todas são uma futilidade perante a literatura. As artes que se ...",
           source = "http://arquivopessoa.net/textos/4075"
  )
  expect_equal(Pessoa(max.char = 100, seed = 0), x)
  Sys.setlocale("LC_CTYPE", old_encoding)
})
