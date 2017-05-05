
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
## dados <- read.table(
##     file = "arquivo.csv",   ## Caminho do arquivo
##     header = TRUE,          ## Se há cabeçalho
##     sep = ";",              ## Separador de campos
##     dec = ".",              ## Marcador de decimais
##     quote = "",             ## Marcador para strings
##     na.strings = "NA",      ## Marcador de valores ausentes
##     skip = 2,               ## Linhas desconsideradas
##     encoding = "latin1"     ## Codificação
## )
## 
## 
## ## install.packages("readxl", dependencies = TRUE)
## library(readxl)
## dados <- read_excel(
##     path = "arquivo.xlsx",  ## Caminho do arquivo
##     col_names = TRUE,       ## Se há cabeçalho
##     na.strings = "NA",      ## Marcador de valores ausentes
##     skip = 2                ## Linhas desconsideradas
## )
## 
## 
## ## install.packages("haven", dependencies = TRUE)
## library(haven)
## dados <- read_sas(path = "arquivo.sas7bdat")
## dados <- read_spss(path = "arquivo.sav")
## dados <- read_stata(path = "arquivo.sav")
## 

## Uma matrix qualquer
M <- matrix(1, ncol = 8, nrow = 3)

## Aplica a soma às linhas
apply(X = M, MARGIN = 1, FUN = sum)

## Aplica a soma às colunas
apply(X = M, MARGIN = 2, FUN = sum)


## O vetor com valores de interesse e seus grupos
y <- 1:12
g <- rep(c("A", "B", "C", "D"), each = 3)

## Aplica a soma aos grupos
tapply(X = y, INDEX = g, FUN = sum)

## Aplica a média aos grupos
tapply(X = y, INDEX = g, FUN = mean)


## O vetor com valores de interesse e seus grupos
X <- list(a = rep(1, 10), b = 1:10, c = 11:20, d = 1:5)

## Aplica aos elementos da lista
lapply(X = X, FUN = sum)


## O vetor com valores de interesse e seus grupos
X <- list(a = rep(1, 10), b = 1:10, c = 11:20, d = 1:5)

## Aplica aos elementos da lista
sapply(X = X, FUN = sum)

## Idêntico a
simplify2array(lapply(X = X, FUN = sum))

