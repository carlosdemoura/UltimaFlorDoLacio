test_that("Pessoa() works", {
  x = list(author = "Fernando Pessoa",
           title = "Argumento do jornalista",
           text = "Argumento do jornalista\n\nAs artes todas são uma futilidade perante a literatura. As artes que se ...",
           source = "http://arquivopessoa.net/textos/4075"
  )
  expect_equal(pessoa(0, 100), x)
})
