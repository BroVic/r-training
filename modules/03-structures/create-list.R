##################### 
#                   #
#      Lists        #
#                   #
#####################
# Note that the function arguments used in this sample script are rather verbose
# just to enhance your understanding. You DO NOT always need to specify arguments.

## We MAY first of all create components:

# 10,000 random numbers ranging from -10 through 20 inclusive
num_vec <- runif(n = 10000, min = -10, max = 20) # numeric vector

# identify negative values of num_vec (and label them as 'TRUE')
num_vec_neg <- ifelse(test = num_vec < 0, yes = TRUE, no = FALSE) # logical vector

# make a character matrix of 4 colour names
x <- c("yellow", "red", "fuchsia", "orange")
coloured <- matrix(data = rep(x, times = 60), nrow = 10, byrow = TRUE)
# Note:
# 1. We did not specify no. of columns for the matrix
# 2. Run dim() - what do you think rep() does?

# add a row at the bottom of 'coloured' with elements called 'blank'
(char_mat <- rbind(coloured, rep(x = "blank", times = ncol(coloured))))

# collect names of files in this and immediate 2 parent folders
treee <- list(list.files(), list.files(path = ".."), list.files(path = "../../"))

# create a function that diplays area of a circle for given radius
Circle <- function(r) {
  pi * (r * r)
}

# collect the definition of the function 'table()'
table_def <- table

# Download a CSV file from the web and use to create a data frame in R
# If you don't understand what tryCatch is doing, don't bother. It's not that important for now.
tryCatch({
  download.file(url = "https://download.microsoft.com/download/4/C/8/4C830C0C-101F-4BF2-8FCB-32D9A8BA906A/Import_User_Sample_en.csv",
                destfile = "microsoft_sample.csv",
                mode = "w")   # download sample file from Microsoft website
  DF <-
    read.csv(file = "microsoft_sample.csv") # data frame from downloaded file
}, error = function(e) DF <- "No internet connection")

hex <- charToRaw("National Academy of Science")

obj_in_bits <- rawToBits(hex)

# Now compile all these into a list
mumbo_jumbo <- list(num_vec,
                    num_vec_neg,
                    coloured,
                    char_mat,
                    treee,
                    Circle,
                    table_def,
                    DF,
                    hex,
                    obj_in_bits)
mumbo_jumbo     # display the entire list in the console (if you can!)

fourth <- mumbo_jumbo[[4]]
typeof(fourth)
class(fourth)

str(mumbo_jumbo)

# is this actually a list?
typeof(mumbo_jumbo)

# name the list
names(mumbo_jumbo) <- LETTERS[1:10]
mumbo_jumbo$E

# Emphasize the existence of lists of lists i.e. nested lists
lister <- list(list(list(list(1)))) # http://adv-r.had.co.nz/Data-structures.html
lister
str(lister)
typeof(lister)
#END
