## ---- cache=FALSE, echo=FALSE, message=FALSE, error=FALSE----------------
library(knitr)
library(formatR)
opts_chunk$set(comment = "", warning = FALSE, 
               message = FALSE, 
               echo = TRUE, tidy = FALSE, size="small",
               tidy.opts=list(width.cutoff=80))

## ------------------------------------------------------------------------
#try using the tab button for 
#suggestions on how to finish your path

#get working directory
getwd()
#set working directory
setwd("/home/silastittes/Desktop/")
getwd()
setwd("~/Documents/TAing/Fall16_Evolution/week1/")

## ------------------------------------------------------------------------
list.files()

## ------------------------------------------------------------------------
lizard <- read.csv("horned_lizards.csv", header = TRUE)

## ------------------------------------------------------------------------
head(lizard)

## ------------------------------------------------------------------------
head(lizard$Survival)
head(lizard$squamosalHornLength)

## ------------------------------------------------------------------------
#first row all columns
lizard[1,]

#second row first column
lizard[2,1]

#last row second column
lizard[nrow(lizard),2]


## ------------------------------------------------------------------------
#numeric vector
n <- c(1, 2, 3)
n
is.vector(n) #if a vector, will print TRUE

#character vector
ch <- c("a", "b", "c")
ch

## ------------------------------------------------------------------------
n + n
n * n
n^2
sqrt(n)
log(n)
log(n, base = 2)

## ------------------------------------------------------------------------
#can use this to combine columns of a data frame too!
hornlength_twice <- c(lizard$squamosalHornLength, 
                      lizard$squamosalHornLength)

## ------------------------------------------------------------------------
#if following, don't write head!

head(lizard$squamosalHornLength)
head(lizard$squamosalHornLength * 2)

## ------------------------------------------------------------------------
mean(lizard$squamosalHornLength) #DOH!
mean(lizard$squamosalHornLength, na.rm = TRUE)
median(lizard$squamosalHornLength, na.rm = TRUE)
var(lizard$squamosalHornLength, na.rm = TRUE)
sd(lizard$squamosalHornLength, na.rm = TRUE)
summary(lizard$squamosalHornLength, na.rm = TRUE)

## ------------------------------------------------------------------------
plot(1, 1)

## ------------------------------------------------------------------------
plot(1, 1, cex=5)

## ------------------------------------------------------------------------
plot(x = 1, y = 1, cex=5, pch = 19)

## ------------------------------------------------------------------------
plot(1, 1, pch = 19, cex=5, col="blue")

## ---- fig.height=6-------------------------------------------------------
n <- c(1,2,3)
plot(x = n, y = n, cex=5, pch = 19, col="blue")

## ---- fig.height=6-------------------------------------------------------
plot(x = n, y = n, cex=5, pch = 19, col="blue",
     xlab="Rick", ylab="Morty", main = "Mr. Meeseeks")

## ---- eval=F-------------------------------------------------------------
boxplot(lizard$squamosalHornLength ~ lizard$Survival, 
        ylab = "Horn length",
        col=c("grey40", "purple"),
        cex.lab=1.4)

legend("topleft", c("Dead", "Alive"), 
       pch=19, col=c("grey40", "purple"), bty="n")

## ---- echo=F-------------------------------------------------------------
boxplot(lizard$squamosalHornLength ~ lizard$Survival, 
        ylab = "Horn length",
        col=c("grey40", "purple"),
        cex.lab=1.4)

legend("topleft", c("Dead", "Alive"), 
       pch=19, col=c("grey40", "purple"), bty="n")

## ---- eval=FALSE---------------------------------------------------------
#separate data by dead or alive

#**don't do this with the height data!**

dead <- lizard[lizard$Survival == "killed", ]
alive <- lizard[lizard$Survival != "killed", ]

rng <- range( c(dead[,1], alive[1,]), na.rm=T)

hist(alive$squamosalHornLength,
     xlab = "Horn Length",
     cex.lab=1.4, cex=0.5, main = "", col = "purple")

hist(dead$squamosalHornLength, xlim=rng,
     xlab = "Horn Length",
     cex.lab=1.4, cex=0.5, main = "", col="grey40", add=T)

legend("topleft", c("Dead", "Alive"), 
       pch=19, col=c("grey40", "purple"), bty="n")


## ---- echo=FALSE---------------------------------------------------------
#separate data by dead or alive
dead <- lizard[lizard$Survival == "killed", ]
alive <- lizard[lizard$Survival != "killed", ]

rng <- range( c(dead[,1], alive[1,]), na.rm=T)

hist(alive$squamosalHornLength,
     xlab = "Horn Length",
     cex.lab=1.4, cex=0.5, main = "", col = "purple")

hist(dead$squamosalHornLength, xlim=rng,
     xlab = "Horn Length",
     cex.lab=1.4, cex=0.5, main = "", col="grey40", add=T)

legend("topleft", c("Dead", "Alive"), 
       pch=19, col=c("grey40", "purple"), bty="n")


## ---- echo=FALSE---------------------------------------------------------
purl("Week1_RTutorial.Rmd")

