#Vectors and Arrays
# a vector is a set of objects of the same simple type. 
#We can make a vector of numbers by putting a set of numbers together using c() function
#c stands for concatenate


x<- c(2, 4.3, 6.6, 10, -1)
x

#various things we might want to do with a vector of numbers
#find length
length(x)

#sort into ascending order
sort(x)

#find its max value
max(x)

#add all the elements up
sum(x)

#prod can multiply all the elements together
prod(x)
#we can use mathematical operations on a vector.
y <- c(1, 4, 2.2, 7.13, sqrt(7))
y

#let's add x + y
#this is an example of element-wise addition - each element of x is added to the corresponding element of y
x + y


#we can compare these vectors, and we either get TRUE/FALSE values
#example to find out which elements of x are larger than the corresponding element of y
x>y
#will output TRUE TRUE TRUE TRUE FALSE


#will get an error message if we try to add the 5-element vector x to the 2-element vector z:
z <- c(3, 5)
x + z
#longer object is not a multiple of shorter object length
#R tries to make enough copies of z to match the 5 element length of x
#but 1 copy of z is too short but  3 copies of z are too long


#this example tells use something about what R does when we execute
#add 1.5 to each element in the x vector
x + 1.5

#subtract the minimum value from every element of x
x - min(x)

#here are a few more example making use of this property
2*x + 4.5 - median(x)

#append the value 5.5 onto the end of x-making a vector of 6 elements
v <- c(x, 5.5)
v

#add on z (which has a length 2 - so it is recycled 3 times)
v+z

#vector valued functions
range(x)


#incidentally this is the exact same as:
c(min(x), max(x))

#the diff() function subtracts each element in a vector from the previous element
#the vector it returns is just one element shorter than the one you give it

diff(y)


#Accessing subsets of a vector
#we can extract and select particular elments of a vector
#select first element
x[1]

#select the 4th element
x[4]

#select the last element
x[length(x)]

#a non existent element would return NA
x[10]

#the first and fourth elements
x[c(1,4)]


#using an index vector, we can access the same element multiple times if we want to
x[c(1,1,1,2,1,5,5)]


#R allows us to generate sequences of consecutive integers using the : operator
#1:4 gives us the vector c(1,2,3,4)
#it gives us the first four elements of x

x[1:4]


#we can use range() to check for range
range(x)

#this will output the same thing
idx <- c(which.min(x),which.max(x))
idx
x[idx]
#Here we stored the index vector in an object called idx before we used it.

#Something that is sometimes useful and sometimes annoying is that 
#if the number before the : larger than the one after you get the
#consecutive values in decreasing order. So 2:5 is c(2,3,4,5) and 5:2 is c(5,4,3,2)

# Store the length of x
n <- length(x)
# Store the set of integers from n down to 1
idx <- n:1
idx


# Get the elements of x in reverse order
x[idx]


#continue at rev(x) part
