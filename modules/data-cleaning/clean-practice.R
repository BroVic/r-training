## For this exercise note that you are free to check any documentation
## or search on the internet for possible solutions.

# 1. Import the datat from the 'data' directory using the object 'filename'.
# Name your object 'dat'
filename <- "<path/to/file>"
dat <- read.csv(filename)

# 2. Inspect your data. What are the dimensions of the data frame?
### <INSERT CODE FROM HERE> ###

# 3. The first header name seems to be malformed. Change it to 'Label'
### <INSERT CODE FROM HERE> ###

# 4. For ease in typing, the team decided to make all the header names to 
# be exclusively in lower case. Use the function `tolower()` to do this.
### <INSERT CODE FROM HERE> ###

# 5. What are the various datatypes of each column? First run some code to check.
# Then write code to display the frequencies of each datatype
### <INSERT CODE FROM HERE> ###

# 6. Some of the variables in the data frame are of type 'character', but are actually
# categorical variables. Identify such variables and change their type according. 
# Your code should express the steps you took to arrive at your decision
### <INSERT CODE FROM HERE> ###

# 7. Look at the variable 'Normal'.There was a wrong entry that affected the 
# interpretation of its type. Proceed to fix it. You may compare with some
# of the adjacent columns for guidance
### <INSERT CODE FROM HERE> ###

# 8. After fixing 'Normal' convert it and the other columns related to it to
# type `logical`. Replace the 1s with `TRUE` and the 0s with `FALSE`. 
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
