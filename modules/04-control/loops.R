# write repeat loop that prints all the even numbers from 2-10
# via incrementing the variable, i <- 0
i <- 0
repeat{
  i <- i + 2
  print(i)
  if(i >= 10)
    break
}

# 2..Using the following variables
msg <- c("Hello")
i <- 1

# write a repeat{} loop that breaks of the incrementation of "i" after
# 5 loops, and prings "msg" at every increment.
repeat{
  i <- i + 1
  print(msg)
  if (i >= 6)
    break
}

# 3. Wwith i <- 1, write a while() loop that prints the odd numbers
# from 1 through 7
i <- 1
while (i <= 7) {
  if ((i %% 2) != 0)
    print(i)
  i <- i + 1
}


# 4. Using the following variable:
msg <- c("Hello")
i <- 1
# write a while() loop that increments the variabe "i" 6 times and prints "msg"
# at every iteration
while (i < 7) {
  i <- i + 1
  print(msg)
}


# 5. Print the first four numbers of this sequence
x <- c(7, 4, 3, 8, 9, 25)
for (i in 1:4)
  print(x[i])

# 6. write a for() loop that prints all the letters in
y <- c("q", "w", "e", "r", "z", "c")
for (i in 1:length(y))
  print(y[i])

# 7. Using
i <- 1
# write a while() loop tha tprints th eavariable "i" (that is incremented
# from 1-5), and uses break to exit the loop if "i" equals 3.
while (i <= 5) {
  print(i)
  i <- i + 1
  if (i == 3){
    print(i)
    break
  }
}

# 8. Write a nested loop, where the outer for() loop increments "a" 3 times, 
# and the inner for () loop increments "b" 3 times The break statement
# exits the inner for() loop after 2 incrementations. The nested loop
# prints the values of variables "a" and "b".
a <- 0
b <- 0
for (i in 1:3) {
  a <- a + 1
  for (j in 1:3) {
    b <- b + 1
    if (j == 2)
      break
  }
  print(a)
  print(b)
}

# 9. write a while() loop that prints the variable "i" that is incremented
# from 2-5, and uses the next statement to skip the printing of the 
# number 3
i <- 2
while (i <= 5) {
  if (i == 3) {
    i <- i + 1
    next 
  } 
  print(i)
  i <- i + 1
}

# 10. Write a for() loop that uses "next" to print all values except "3"
# in the following variable: i <- 1:5
i <- 1:5
for (k in 1:length(i)) {
  if (i[k] == 3)
    next
  print(i[k])
}
