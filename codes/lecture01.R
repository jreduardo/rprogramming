
library(knitr)
opts_chunk$set(
    warning = FALSE,
    message = FALSE,
    echo = FALSE,
    fig.align = "center")

library(ggplot2)
library(grid)
library(gridExtra)

## ## Alternatives highlightStyle
## arta, ascetic, dark, default, far, github, googlecode, idea, ir_black,
## magula, monokai, rainbow, solarized-dark, solarized-light, sunburst,
## tomorrow, tomorrow-night-blue, tomorrow-night-bright, tomorrow-night,
## tomorrow-night-eighties, vs, zenburn


## Medidas resumo de todas as variáveis
dados <- mtcars
do.call(rbind, lapply(dados, summary))


knitr::include_graphics("images/r-books.png")


knitr::include_graphics("images/packs.png")


knitr::include_graphics("images/rblogs.png")


g1 <- ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width,
                       color = Species)) +
    geom_point()

g2 <- ggplot(mtcars, aes(x = as.factor(carb), y = mpg)) +
    geom_boxplot()

g3 <- ggplot(cars, aes(x = speed, y = dist)) +
    geom_point() +
    geom_smooth()

mtcars$cyl <- as.factor(mtcars$cyl)
g4 <- ggplot(mtcars, aes(x = disp, y = mpg, color = cyl)) +
    geom_point() +
    geom_smooth(method = "lm")

grid.arrange(g1, g2, g3, g4, ncol = 2)


knitr::include_graphics("images/rmd1.png")


knitr::include_graphics("images/rcran.png")


knitr::include_graphics("images/rstudio1.png")


knitr::include_graphics("images/rstudio.png")

