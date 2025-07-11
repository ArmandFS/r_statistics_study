class()
typeof()

a <- TRUE
class(a)
typeof(a)

b <- "hi"
class(b)
typeof(b)

c <- factor(b)
c
typeof(c)
class(c)

#from the robjects html file, week 1
#this is to check for integer
typeof(4L)

#this is to check for double
typeof(4)

#this will output double as well
typeof(4.3131)

#type of functions also work on built in functions
typeof(sqrt)

#this will also output function
class(class)

#test for precision, this will output 7
(sqrt(7))^2

#this will output a very tiny number
#caused by the fact that R can store 7, it can't store sqrt{7}
(sqrt(7))^2-7

#below is the largest integer you can store in R
.Machine$integer.max

#Below is the smallest and largest floating point number in R:
.Machine$double.xmin
#largest, use xmax function
.Machine$double.xmax


#division wiht integers
#simple division using integers
25/7

#using the modulo???? operator
#the number of complete
25%/%7

#trying modulo 25 modulo 7
25%%7

#rounding numbers, use the round function
round(168.5555)

#this code will round to one decimal place
round(168.923232, 1)

#round to 2 decimal places
round(163.1456, 2)


#round to nearest multiple of 10
#168 is closest to 200
round(168.323234, -1)

#round to the nearest multiple of 100
#167 is closest to 200
round(167.239283, -2)

#round up using the ceiling function
ceiling(163.454)

#round down (this is what we do with ages)
#use the floor function
floor(163.34839483)


#Numeric R objects






