
x <- '8'

if(x < 5) {
  "yes" 
  } else {
    "no"
  }


if (is.integer(x)) {
  "Integer"
} else if (is.double(x)) {
  "Double"
} else if (is.character(x)) {
  "String"
} else {
  "What the heck are you?"
}

?switch

# Loops
cx <- 1:5

greet <- "Say hello"

for (count in cx) {
  print(greet)
}



# Functions
func <- function(name) {
  if (!is.character(name)) {
    stop("'name' is not a string")
  }
  paste("Say hello,", name)
}

func("Joy")
func(mtcars)
func(3)

ppp <- function(a, b) {
  if (!is.numeric(a) || !is.numeric(b))
    stop("Illegal input")
  a + b
}

