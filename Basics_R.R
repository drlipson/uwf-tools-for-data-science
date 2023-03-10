# Comment your code so it is readable 

#This is my changes
# This is great 
# This is Good

# Library / package
library(datasets)
library(boot)
library(tidyverse)


# Calculator 
x=10^2
y=2*x
1+2
3*4
45-89
## Data Types
# Character
l ="R is useful"
class(l)

# Logical
v1 = 5>6
7+7+1==15

class(v1)
#numeric
x = 9
X=99
y = x/2
x
y
class(x)
# Factors
x=c(0,0,1,1,2)
x=factor(x,labels = c("Control","Low Dose","High Dose"))
class(x)

# Vectors
vec1=c(1,21,50,80,45,0)
vec2=c("d","4","r")
class(vec1)
length(vec1)

# Matrices
ma1=matrix(data=c(vec1,0,0,0,0,0,150),nrow = 4,byrow = TRUE)
ma1

class(ma1)

ma2= matrix(data=c(10,45,56,90),nrow = 2)

# Data frames
df=data.frame(x=rnorm(100),y=rnorm(100,mean = 5))
summary(df)
x=df$x
y=df$y

class(df)

# Lists
L=list(one=1, two=c(1,2),five=seq(0,1,0.1), six="student",mydata=murders)
class(L)
L$five



# Built-in functions
sum(1,3,5)
help(sum)
example(sum)
example(mean)

sum(x)
mean(x)
sd(x)
summary(x)
var(x)

# Sequence
s1=1:10
s2=seq(from = 1,to = 10)
seq(1,10,0.5)
seq(10,1)

# Vector Access
vec1[1] = 5
vec1[c(2,5,6)]
vec1[1:3]

# Named vector
r=c(1:3)
names(r) = c("f","s","t")
r[5]=2
barplot(r)



#Data sets in R

data()
mdata=cars


# Reading variables from a data.frame
mdata$speed
with(mdata,mean(speed+dist))
mean(mdata$speed+mdata$dist)

# Structure and Summary
str(mdata)
summary(mdata)
print(mdata)
View(mdata)

# Creating new variables 
mdata$time=mdata$dist/mdata$speed

mdata$speed2=mdata$speed^2

# Rename the variables 
library(reshape)
mdata=rename(mdata,c("speed"="mspeed", "speed2"="s2"))

# Create categories from continuous variable
mdata$newdata= (mdata$mspeed >=5) + (mdata$mspeed >=10) + (mdata$mspeed >=15)  +(mdata$mspeed >=20) 
mdata$ndata= cut(mdata$mspeed, breaks = c(4,5,10), labels = c("cut0","cut1"), right = FALSE)


# Drop or keep variables in a dataset
library(datasets)
library(carData)
mdata=Salaries

submdata=subset(mdata,select = c("discipline","salary"))
submdata1=mdata[,c(1:4)]
submdata2=subset(mdata,select = c(-2,-3))

# Keep Unique values
uni=unique(mdata)

# Identify duplicated values
dup=duplicated(mdata)



# stack data sets
newdata=cbind(rnorm(50),rnorm(50))
rb=rbind(rnorm(100),rnorm(100))



# Random generations
mdata=rnorm(100,mean = 0,sd=1)
hist(mdata,freq = T)
plot(mdata,
     type="p",
     col="red",
     pch=ifelse(abs(mdata)>2,1,19),
     xlim = c(-1,100),
     ylim = c(-3,4),
     xlab = "Number from SND"
     ,ylab = "Values", 
     main = "100 Obs. from Standard Normal Dist.")

dt=rnorm(30000,mean=10,sd=3)
var(dt)
quantile(dt,c(0.25,0.5,0.75,0.99))
hist(dt)
mean(dt)
library(moments)
skewness(dt)
kurtosis(dt)


hist(dt)
hist(scale(dt))


# probability calculations
xp=pnorm(1.96)
y=pbinom(2,size = 10,prob = 0.5,lower.tail = T)
q=qnorm(0.975)



set.seed(500)
x=runif(10,min = 0,max = 1)
x2=rnorm(10)

x3=rnorm(10)
rexp(10,rate = 1)


# Mathematical functions
min(rnorm(100))
max(rnorm(100))
abs(rnorm(100))
sqrt(abs(rnorm(100)))
2**9
2^9
exp(1)
log(1)
log10(10)
log2(2)
log(45,base = 45)

factorial(3)
choose(10,5)


# Programming Tools

# if-statement

W=5
if (W<8){
  d=2

}else {
  d=10
}


# subset
a=c(1,2,3,4)
b=c(5,6,7,8)

f=a[b==5 | b==6]

# For-loop

h=seq(1,8)

s=numeric()
for (l in 1:8) {
  s[l]=h[l]*10
}

v=numeric()
for (k in 1:1000) {
  x=rnorm(1000)
  v[k]=var(x)
}
boxplot(v)
hist(v)

# Functions


myf=function()
{
  
}


myfunction = function(d)
{
  m=mean(d)
  s=sd(d)
  ma=max(d)
  mi=min(d)
  q=quantile(d,probs = c(0.25,0.5,0.75))
  
  return(data.frame("mean"=m,"std"=s,"Max"=ma,"Min"=mi,q))
}


stdd = function(p,n)
{
  stdd=sqrt(p*(1-p)/n)
  
  return(stdd)
}







