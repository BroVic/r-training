# Create a vector of industry types with 10 elements
# This vector will be a character vector
industryType <- c("small", "medium", "small", "large", "large", "medium", "small", "small", "medium", "large")
industryType
length(industryType)

# Change it into a factor
industryCategory <- factor(industryType)
industryCategory

# Examine the structure of these 2 objects
str(industryType)
str(industryCategory)

# Check the levels
levels(industryCategory)

is.integer(industryCategory)
is.factor(industryCategory)
is.factor(industryType)
as.integer(industryCategory)
as.integer(industryType)

typeof(industryType)
typeof(industryCategory)