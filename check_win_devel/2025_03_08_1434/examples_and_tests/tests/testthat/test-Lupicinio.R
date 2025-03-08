test_that("Lupicinio() works", {
  x = list(author = "Lupicínio Rodrigues",
           title = "Carteiro",
           text = "Quem vê aquele carteiro\nO dia inteiro feliz a cantar\nDeixando missivas diversas\nEm cada lugar\n\nNão ...",
           source = "https://www.letras.mus.br/lupcinio-rodrigues/1410841/"
  )
  expect_equal(Lupicinio(max.char = 100, seed = 0), x)
})
