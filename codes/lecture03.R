
library(knitr)
opts_chunk$set(
    warning = FALSE,
    message = FALSE,
    echo = TRUE,
    fig.align = "center",
    comment = "")

## ## Alternatives highlightStyle
## arta, ascetic, dark, default, far, github, googlecode, idea, ir_black,
## magula, monokai, rainbow, solarized-dark, solarized-light, sunburst,
## tomorrow, tomorrow-night-blue, tomorrow-night-bright, tomorrow-night,
## tomorrow-night-eighties, vs, zenburn

## 
## ## Lista de data.frames no pacote `datasets`
## data(package = "datasets")
## 

## Lista de métodos disponíveis para classe data.frame
methods(class = "data.frame")


## Estrutura do dataset mtcars
str(mtcars)


## Criando um data.frame
(mydata <- data.frame(
    resp = c(15, 18, 16, 17, 20, 19, 22, 24, 21),
    cova = c(1, 5, 4, 6, 5, 3, 5, 1, 1),
    trat = rep(c("A", "B", "C"), each = 3)
))

## 
## ## Incluindo uma nova coluna
## temp <- c(10, 27, 22, 16, 26, 27, 16, 21, 26)
## cbind(mydata, temp)
## 
## 
## ## Incluindo um nova observação
## newobs <- c(22, 2, "C")
## rbind(mydata, newobs)
## 

## Selecionando colunas
## mtcars$mpg
## mtcars[["mpg"]]
mtcars[, "mpg"]

## Selecinando linhas
mtcars["Mazda RX4", ]

## 
## ## Selecionando os caros de 6 cilindros
## mtcars[mtcars$cyl == 6, ]
## 
## ## Selecionando os caros de 6 cilindros com transmissão automática
## mtcars[mtcars$cyl == 6 & mtcars$am == 0, ]
## 
## ## Selecionando os caros com mais de 20 mpg
## mtcars[mtcars$mpg > 20, ]
## 
## 
## ## Selecionando os caros de 6 cilindros
## subset(mtcars, subset = cyl == 6)
## 
## ## Selecionando os caros de 6 cilindros com transmissão automática
## subset(mtcars, subset = cyl == 6 & am == 0)
## 
## ## Selecionando o peso dos caros com mais de 20 mpg
## subset(mtcars, subset = mpg > 20, select = wt)
## 

knitr::include_graphics("./images/r-logo.jpeg")


## Investigando a função que verifica o número de linhas
## help(nrow)
args(nrow)
body(nrow)
environment(nrow)


## Uma funções para calcular dois valores
myfun <- function(arg1, arg2) {
    output <- arg1 + arg2
{{   return(output)}}
}


## Usando a função
myfun(3, 4)


knitr::include_graphics("./images/r-logo.jpeg")

