number * 2
number <- 5 + 2
number * 2
# order of lines in script doesn't matter - what matters is the order you run your commands

a * 2 
# error because 'a' hasn't been defined

times <- c(60, 40, 33, 15, 20, 55, 35)

(times <- c(60, 40, 33, 15, 20, 55, 35))
# does command and prints output in console

times / 60
# convert times into hours - BUT, times object is still in mins

times <- times / 60

mean(times)
sqrt(times)
# outputs vector of same length
range(times)
# outputs min and max values in item

times < 30
# vector of same length - binary outcomes
times == 20
# 'times = 20' will overwrite original 'times' variable
times != 20

times > 20 & times < 50
times < 20 | times > 50
# and = & , or = | #

which(times < 30)
# tells us which entries are true

any(times < 30)
# returns TRUE if any items are true

all(times < 30)
# returns TRUE if all items are true

sum(times < 30)
# will sum up all the TRUE's - TRUE = 1, FALSE = 0

# Subsetting
times[3]
times[-3]
times[c(2,4)]
times[c(4,2)]
times[2:5] # using : to construct sequential vectors

times[times < 30]
# interior logical must be a vector of the same length

# & function expects a logical on both sides

times[times > 50] <- 50 # cap times at 50 min - replacement of objects in a vector
times

times[8] <- NA
mean(times)
mean(times, na.rm=TRUE)
mean(x=times, na.rm=TRUE)
mean(times, 0, TRUE) # matches order of arguments with default
mean(na.rm=TRUE, x=times) # order doesn't matter if you specify arguments
?mean

# Data Frames
mtcars
head(mtcars)
str(mtcars) # structure of data frame
names(mtcars) # extracts a vector of names - column names

names(mtcars[1])
which(names(mtcars)=='wt')

mtcars$mpg
mean(mtcars$mpg)