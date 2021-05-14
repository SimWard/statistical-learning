# Section 2 - Statistical Learning

# 2.3.1 BASIC COMMANDS

# Arrays
x <- c(1,3,6,2,10,7)
x

y <- c(1,3,5)
y

length(x)
length(y)

x + y

# Matrices
x = matrix(data=c(1,2,3,4), nrow=2, ncol=2)
x

x**2

sqrt(x)

# Randomised vectors
set.seed(42)
x=rnorm(50)
y = x+rnorm(50, sd=0.5)
cor(x,y)

# Summary Stats
mean(x)
mean(y)

var(x)
var(y)

sqrt(var(x))
sd(x)
sd(y)

# 2.3.2 GRAPHICS

# Plotting
x=rnorm(200)
y=rnorm(200)
p = plot(x, y, 
         xlab='x-axis', 
         ylab='y-axis', 
         main='plot of X vs Y',
         col='red')

# Saving
# pdf("figure.pdf")  # Can also use jpeg()
# p
# dev.off()


# Sequences of numbers
x = seq(1,10)
x

x = 1:10
x

x=seq(-pi, pi, length=50)
x


# Contour plots
y=x
f=outer(x, y, function(x,y)cos(y)/(1+x**2))
contour(x,y,f)
contour(x,y,f,nlevels=45,add=T)
fa=(f-t(f))/2
contour(x,y,fa,nlevels=15)

# Heatmaps
image(x,y,fa)

# 3D plot
persp(x,y,fa)
persp(x,y,fa, theta=30)
persp(x,y,fa, theta=30, phi=40)


# 2.3.3 INDEXING DATA

# Indexing
A = matrix(1:16, 4, 4)
A
A[2,3]

A[c(1,3),c(2,4)]

A[1:3, 2:4]

A[1:2,]

A[,1:2]

A[1,]
A[-1,-2]
A

dim(A)

A[-1,]

dim(A[-1,])


# 2.3.4 LOADING DATA

Auto = read.table("Auto.data", header=T, na.strings="?")

# fix(Auto)
dim(Auto)
Auto[1:5,]

Auto=na.omit(Auto)
dim(Auto)

names(Auto)

plot(Auto$cylinders, Auto$mpg)
cylinders =as.factor(Auto$cylinders) 

#Boxplots appear because the x-axis is now categorical
plot(cylinders, Auto$mpg)
plot(cylinders, Auto$mpg, col='red')
plot(cylinders, Auto$mpg, col='red', varwidth=T)
plot(cylinders, Auto$mpg, col='red', varwidth=T, horizontal=T)
plot(cylinders, Auto$mpg, col='red', varwidth=T, xlab='cylinders', ylab='mpg')

hist(Auto$mpg)
hist(Auto$mpg, col=4)
hist(Auto$mpg, col=4, breaks=15)

Auto = read.table("Auto.data", header=T, na.strings="?")
sapply(Auto, class)
pairs(Auto)

