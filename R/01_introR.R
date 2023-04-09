myVariable <- 1+1
myVariable

my_Variable <- 2+2
my_Variable

tada <- myVariable+my_Variable
tada


#data structure

myvector <- c(1,2,3,4)

mixData <- list(1, 2, "A")

myvektor2 <- c(2,3,4,5)

myvector*myvektor2


#if else
a <- 10
b <- 20

if (a>b) {
  print("true")
} else {
    print("false")
}

for(i in myvector) {
  if(i>2){
    print("besar")
  } else{print("kecil")}
  
}

for (i in 1:10){
  if(i>2) {
    print("test")
  } else {print("no test")}
}

for (i in 1:100) {
  if(i<10){print("kecil")
  } else if (i<20){
      print("lumayan")
  } else {
      print("besar")
    }
}

#function
 
vector1 <- c(1,2,3,4)
vector2 <- c(5,6,7,8)
vector3 <- c(9,10,11,12)

fungsiTambah <- function(a,b){
  c <-a+b
  d <- c(1,1,1,1)
  c+d
}

var12 <- fungsiTambah(vector1, vector2)
var13 <- fungsiTambah(vector1, vector3)

var12
var13


length(vector1)
sum(vector1)

for (i in 1:5) {
  print(paste0("test", i))
  
}

library("here")
library("tidyverse")
library("janitor")
library("here")