# create vector

# Run the script and study the outputs carefully to understand what's going on
# Ex. 1: Make a vector and examine it
prac <- "Use typeof() to check what type of vector this is"
prac
typeof(prac)
str(prac)

prac <- "Use length() to check how many elements are in the vector 'prac'"
prac
length(prac)

prac <- c("Thank", "you!")
prac
length(prac)

prac[1]
prac[2]
prac[3]
length(prac)
# Note that position 3 has no element, and does not exist

#Bonus functions: Two common, very different ways of displaying console output
print(prac)
cat(prac)

# Now let's see how one can extend a vector
set.seed(1345)        # for pseudo-randomness
prac <- runif(6, min = 3, max = 10) # random uniform distribution from 3 - 10
prac

length(prac)                        # length = 6
prac[7] <- 8.500000                 # add
prac
length(prac)                        # length = 7

prac[9] <- 6.99076                  # number is on position 9
prac                                
length(prac)
prac[9]
prac[8]

prac <- append(prac, 7.89224)               # append() adds elements to vectors
length(prac)
prac[10]

str(prac)
is.numeric(prac)
is.integer(prac)                            # integer = numeric, not vice versa
is.double(prac)                             # double & numeric are syonymous

# Bonus functions: Are there NAs (i.e. missing values) in the result?
anyNA(prac)
is.na(prac)
which(is.na(prac))


# Ex. 3: Now let us shrink the vector
length(prac)
prac

# One method
prac_short1 <- prac[1:7]
prac_short1
length(prac_short1)

# Another method
prac
prac_short2 <- prac[-c(8:10)]
prac_short2
length(prac_short2)

# Bonus function: Do both methods yield the same result?
identical(prac_short1, prac_short2)

# Finally, a small brain teaser...
prac[c(9,10)] <- NA
prac
length(prac)
identical(prac, prac_short1) 
# How would you solve this tricky condition i.e. make these 2 objects (vectors)
# to be exactly the same? Push your solution to your forked repository and
# create pull request.
## END.