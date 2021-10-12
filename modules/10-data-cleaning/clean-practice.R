## For this exercise note that you are free to check any documentation
## or search on the internet for possible solutions.

# 1. Import the datat from the 'data' directory using the object 'filename'.
# Name your object 'dat'
filename <-  # "<path/to/file>"
dat <- read.csv(filename)

# 2. Inspect your data. What are the dimensions of the data frame?
### <INSERT CODE FROM HERE> ###
dim(dat)
str(dat)
View(dat)

# 3. The first header name seems to be malformed. Change it to 'Label'
### <INSERT CODE FROM HERE> ###
colnames(dat)[1] <- "Label"
colnames(dat)

# 4. For ease in typing, the team decided to make all the header names to 
# be exclusively in lower case. Use the function `tolower()` to do this.
### <INSERT CODE FROM HERE> ###
colnames(dat) <- tolower(colnames(dat))
colnames(dat)

# 5. What are the various datatypes of each column? First run some code to check.
# Then write code to display the frequencies of each datatype
### <INSERT CODE FROM HERE> ###
# Check one column
typeof(dat$label)

# check all columns
sapply(dat, typeof)

# Get frequencies
table(sapply(dat, typeof))

# 6. Some of the variables in the data frame are of type 'character', but are actually
# categorical variables. Identify such variables and change their type according. 
# Your code should express the steps you took to arrive at your decision
### <INSERT CODE FROM HERE> ###
# Identify possible categorical variables by checking the unique values
unique(dat$label) # Good candidate but needs to be fixed (Eye cream is repeated due to typo)
dat$label <- sub(pattern = "Eye cream", replacement = "Eye Cream", dat$label)
unique(dat$label)
dat$label <- as.factor(dat$label)
str(dat$label)

unique(dat$brand)  # too many unique values, not good candidates for conversion
unique(dat$name)

# `unique` became to cumbersome so short-cuts available, so we can use sapply to 
# improve the decision making
data.frame(uniq_val = sapply(dat, function(x)
  length(unique(x))),
  type = sapply(dat, typeof))

unique(dat$normal)

# 7. Look at the variable 'Normal'.There was a wrong entry that affected the 
# interpretation of its type. Proceed to fix it. You may compare with some
# of the adjacent columns for guidance
### <INSERT CODE FROM HERE> ###
# Change the letter "O" to zero and convert to integer
dat$normal <- sub("O", "0", dat$normal)
unique(dat$normal)
dat$normal <- as.integer(dat$normal)

# 8. After fixing 'Normal' convert it and the other columns related to it to
# type `logical`. Replace the 1s with `TRUE` and the 0s with `FALSE`. 
### <INSERT CODE FROM HERE> ###
for (i in c("combination", "dry", "normal", "oily", "sensitive"))
  dat[[i]] <- as.logical(dat[[i]])

## 9. Inspect your data frame in its current state
View(dat)

## Discussion:
## 10. Look at some of the values in the 'name' column:
### <INSERT CODE FROM HERE> ###

## a. What do you notice? 
## b. Can youexplain why the values are like that?

## 11. Print out the values in a single cell of the 'ingredients' column.
### <INSERT CODE FROM HERE> ###

## 9. Inspect your data frame in its current state
### <INSERT CODE FROM HERE> ###


## Discussion:
## 10. Look at some of the values in the 'name' column:
### <INSERT CODE FROM HERE> ###

## a. What do you notice? 
## b. Can youexplain why the values are like that?

## 11. Print out the values in a single cell of the 'ingredients' column.
### <INSERT CODE FROM HERE> ###

## The 'ingredients' column has so many values combined together for each
## observation. How would you go about working with such data for easy analysis?
