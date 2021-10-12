library(rmarkdown)

render("start-r.Rmd", "ioslides_presentation", "start-r.html")

detach("package:rmarkdown", unload = TRUE)