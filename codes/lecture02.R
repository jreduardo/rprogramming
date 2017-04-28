
library(knitr)
opts_chunk$set(
    warning = FALSE,
    message = FALSE,
    echo = TRUE,
    fig.align = "center")

## ## Alternatives highlightStyle
## arta, ascetic, dark, default, far, github, googlecode, idea, ir_black,
## magula, monokai, rainbow, solarized-dark, solarized-light, sunburst,
## tomorrow, tomorrow-night-blue, tomorrow-night-bright, tomorrow-night,
## tomorrow-night-eighties, vs, zenburn


## Cria a sequencia de 1 a 5
(x <- c(1, 2, 3, 4, 5))

## Cria a sequencia de 1 a 5
(y <- 1:5)

## Cria uma sequencia de palavras
(z <- c("Arroz", "Feijão", "Strogonoff", "Gelatina"))

## Cria uma sequencia de booleanos
(w <- c(TRUE, FALSE, FALSE, TRUE))


str(x)
str(y)
str(z)
str(w)


## Argumentos da função matrix
str(matrix)

## Cria uma matriz de 1's
(X <- matrix(data = 1, nrow = 2, ncol = 5))

## Cria uma matriz de dimensão 3x3
(Y <- matrix(data = 1:9, nrow = 3))


str(X)
str(Y)


## Cria uma matriz lista qualquer
(a <- list(x = x, X = X))

## Outra lista
(b <- list(a = a, cap = "Uma lista de lista"))


str(a)
str(b)


knitr::include_graphics("./images/r-logo.jpeg")


##-------------------------------------------
## Operadores aritmeticos
osymbs <- c("Soma"                 = "+",
            "Subtração"            = "-",
            "Multiplicação"        = "*",
            "Divisão"              = "/",
            "Potenciação"          = "^ ou **",
            "Resto da divisão"     = "%%",
            "Quociente da divisão" = "%/%")


tab <- data.frame("Operação" = names(osymbs),
                  "Operador" = osymbs)
knitr::kable(tab, format = "html", align = c("l", "c"),
             row.names = FALSE,
             caption = "Lista de operadores aritméticos")


##-------------------------------------------
## Operadores relacionais
osymbs <- c("Maior"          = "x < y",
            "Menor"          = "x > y",
            "Maior ou igual" = "x >= y",
            "Menor ou igual" = "x <= y",
            "Igual"          = "x == y",
            "Diferente"      = "x != y")

tab <- data.frame("Operação" = names(osymbs),
                  "Operador" = osymbs)
knitr::kable(tab, format = "html", align = c("l", "c"),
             row.names = FALSE,
             caption = "Lista de operadores relacionais")


##-------------------------------------------
## Operadores aritmeticos
osymbs <- c("Negação"                     = "!x",
            "Operador 'E'"                = "x & y",
            "Operador 'OU'"               = "x | y",
            "Operador exclusivament 'OU'" = "xor(x, y)")

tab <- data.frame("Operação" = names(osymbs),
                  "Operador" = osymbs)
knitr::kable(tab, format = "html", align = c("l", "c"),
             row.names = FALSE,
             caption = "Lista de operadores lógicos")


##-------------------------------------------
## Operadores aritmeticos
osymbs <- c("Atribuição simples (à direita)"    = " <- ",
            "Atribuição simples (à esquerda)"   = " -> ",
            "Atribuição simples¹"               = "=",
            "Atribuição forçada² (à direita)"   = "<<-",
            "Atribuição forçada² (à esquerda)"   = "->>")

tab <- data.frame("Operação" = names(osymbs),
                  "Operador" = osymbs)
knitr::kable(tab, format = "html", align = c("l", "c"),
             row.names = FALSE,
             caption = "Lista de operadores de atribuição")


##-------------------------------------------
## Operadores de extração
osymbs <- c("Vetores"             = "x[pos] ou x[name]",
            "Matrizes"            = "x[row, col] ",
            "Listas¹"             = "x[[pos]] ou  x[[name]]",
            "Listas¹"             = "x$name",
            "Data Frames"         = "x[row, col]",
            "Objetos em S4 ou S6" = "x@name")

tab <- data.frame("Operação" = names(osymbs),
                  "Operador" = osymbs)
knitr::kable(tab, format = "html", align = c("l", "c"),
             row.names = FALSE,
             caption = "Lista de operadores de extração")

