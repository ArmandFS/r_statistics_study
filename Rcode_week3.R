#rcode week 3

sat <- read.csv("active-satellites.csv")
str(sat)

head(sat)

#print the first 3 rows
sat[1:3,]
#print the variable names
names(sat)

#taking a look at the first few values of period..minutes
sat$Period..Minutes.[1:3]

#check if these are characters
is.character(sat$Period..Minutes.)

#this will cause a NAs warning
sat$PeridMin <- as.numeric(sat$Period..Minutes.)

#find which characters are NA
sat$Period..Minutes.[is.na(sat$PeriodMin)]

#fix this data, the process of data cleaning
sat$PeriodMin[sat$Period..Minutes.=="8 days"] <- 8*24*60


#now lets calculate the mean period
mean(sat$PeriodMin) #we getting NA because of the values. 
#let's exclude these values by removing NAs before giving
#Periods to mean()
mean(sat$PeriodMin[!is.na(sat$PeriodMin)])

#or use ask mean() to remove NAs for us
mean(sat$PeriodMin, na.rm=TRUE)

#let's plot a simple barplot!
barplot(table(sat$Launch.Site))

#graph does not look that good, we only have some labels, and also good to have these in order of increasing number of launches
#get at able of numbers of launches by site
tablaunch <- table(sat$Launch.Site)

#sort it into increasing order
tablaunch <- sort(tablaunch)
#draw a barplot, rotate the names, and reduce font size
barplot(tablaunch, las=2, cex.names=0.4)

#check for the 5 biggest launch sites
rev(tablaunch)[1:5]

