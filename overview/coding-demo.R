# Check that we are in the right directory
getwd()

# Check the files in the directory
list.files()

# Read the Excel file into R
mydat <- readxl::read_excel("whostat2005_coverage.xls")

# After exploration with functions like View() and str(), we 
# discover that the data frame needs some work. We will 
# look at the help file of the function to see how we can
# tweak it for a better outcome. We also need to open the 
# MS Excel file itself
?readxl::read_excel
shell.exec("whostat2005_coverage.xls")

# Going by what we read in the documentation, we will tweak the range argument
mydat <- readxl::read_excel("whostat2005_coverage.xls", range = "A8:U199")
str(mydat)
View(mydat)

# The column names  are capturing the data in some columns. We need
# to somehow ensure that this doesn't happen. The help file gives us
# clues - we can set the col_names argument.
mydat2 <- readxl::read_excel("whostat2005_coverage.xls", range = "A8:U199", col_names = FALSE)
str(mydat2)
str(mydat)  # for comparison

# Those "..." ought to be missing values. Again, the help files shows that
# we can specify what strings we want to be missing values i.e. NAs
mydat3 <- readxl::read_excel("whostat2005_coverage.xls", range = "A8:U199", col_names = FALSE, na = "...")
str(mydat3)
View(mydat3)

# We can set the data in the 9th column to be numeric
mydat3[[9]] <- as.numeric(mydat3[[9]])
str(mydat3)

# we can also change the column names to something more suitable
colnames(mydat3)
colnames(mydat3) <- LETTERS[1:21]
View(mydat3)
colnames(mydat3)[3] <- "Country"
View(mydat3)

# See summary of our new numeric column
x <- mydat3[[9]]
summary(x)
