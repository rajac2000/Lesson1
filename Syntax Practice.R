# Lesson 1 ----

# Syntax ----
a <- 10
b <- a
a <- 20
c <- a + b
c

bool1 = T
bool2 = FALSE

# check later for syntax for IF
if(bool2)
  print("TRUE")


name1 <- "Raja"
name2 <- "Biru"

print(name2)
print(class(name1))

#gives the datatype
class(a)


# removed a variable from memory
rm(a)

# Vector ----

vector1 <- c(1,2,3,4,5,6,7,8,9,10)
vector2 <- c(1000:1)

print(vector2[2])

vec3 <- c(-9:0)

vec4 <- vec3 * -1

c(3,2)

c(1:5, 10.5, "next")

x <- 1:4
x
c(x)
x[5]

base1 <- c(1:16)
times2 = base1 * 2

daysVector <- c("Sun", "Mon", "Tue", 
                "Wed", "Thu", "Fri", "Sat")

daysIndex <- c(2:6)
daysVector[daysIndex]
daysVector[-5]


myNums <- 1:1000
#mean(myNums)
#myNums2 <- round(rnorm(1001,49,4))
hist(myNums2 <- round(rnorm(1001,49,4)))
print(c("Mean: ", mean(myNums2),
        "SD  : ", sd(myNums2),
        "Min : ", min(myNums2),
        "Max : ", max(myNums2),
        "Median : ", median(myNums2)
        ))
hist(myNums2)
plot(myNums,myNums2)



# List ----

myList1 <- list("Mean: ", mean(myNums2),
             "Min : ", min(myNums2),
             "Max : ", max(myNums2))
class(myList1)
length(myList1)


# Data.frames ----   

id <- 101:300
#id
#log(id)
#log2(id)
#log10(id)

grp2 <- c(rep("Vehicle",100))
grp1 <- c(rep("Drug",100))
resp1 <- rnorm(100,50,10)
resp2 <- rnorm(100,70,5)

hist(resp2)

myData <- data.frame(PatienId = id,
                     Treatment = c(grp1, grp2),
                     Response =  c(resp1, resp2)
                     )


head(myData)
tail(myData)

dim(myData)
str(myData)
summary(myData)
mean(myData[,3])
hist(myData[,3])

myData[3:30,]

myData$Response

myData[myData$Response > 50 & myData$Response < 70, ]

myData$PossibleOverlap  <- myData$Response > 50 & myData$Response < 70

head(myData)

tail(myData)

myData[myData$PossibleOverlap == TRUE,]

age <- round(rnorm(200,49,10))
summary(age)

myData$Age <- age


head(myData)
tail(myData)






# Reading data into R

pokemon <- read.csv("Pokemon.csv", header = T)
head(pokemon)
tail(pokemon)
str(pokemon)

library(xlsx)
pokemon1 <- read.xlsx("Pokemon.xlsx", sheetIndex = 1)

tail(pokemon1)
str(pokemon1)


