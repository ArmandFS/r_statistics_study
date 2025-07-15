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
