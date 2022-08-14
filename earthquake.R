##
e_quakes<-datasets::quakes

#Descriptive statistics

summary(e_quakes[,c(2,3)])
e_quakes$lat
e_quakes$long
e_quakes$depth
e_quakes$mag
e_quakes$stations

#summary

summary(e_quakes$mag)
summary(e_quakes$long)
summary(e_quakes$stations)


####ploting

plot(e_quakes$lat)
plot(e_quakes$lat,e_quakes$long,type="l")
plot(e_quakes)

# p: point l: lines,b: both

plot(e_quakes$lat, type= "l") 

plot(e_quakes$lat, type= "b")

plot(e_quakes$mag, xlab = 'Frequency', 
     ylab = 'Reidual Value', main = 'Magnitude ',
     col = 'pink',type='l')

# Horizontal bar plot
barplot(e_quakes$mag, main = 'Frequency',
        ylab = 'Reidual Value', col= 'green',horiz = F,axes=T)

#Histogram
hist(e_quakes$mag)
hist(e_quakes$mag, 
     main = 'Frequency of Earthquake',
     xlab = 'Value', col='red')

#####
#Single box plot
boxplot(e_quakes$mag,main="Boxplot")
boxplot.stats(e_quakes$mag)$out


# Multiple box plots

boxplot(e_quakes[,0:5],main='Multiple')

#margin of the grid(mar), 
#no of rows and columns(mfrow), 
#whether a border is to be included(bty) 
#and position of the 
#labels(las: 1 for horizontal, las: 0 for vertical)
#bty - box around the plot

par(mfrow=c(3,3),mar=c(2,5,2,1),  las=0, bty="o")

plot(e_quakes$mag)
plot(e_quakes$mag, e_quakes$depth)
plot(e_quakes$mag, type= "l")
plot(e_quakes$mag, type= "l")
plot(e_quakes$mag, type= "l")
barplot(e_quakes$mag, main = 'Frequency',
        xlab = 'Values', col='green',horiz = TRUE)
hist(e_quakes$depth)
boxplot(e_quakes$depth)
boxplot(e_quakes[,0:4], main='Multiple Box plots')

summary(e_quakes)

sd(e_quakes$mag,na.rm = T)
