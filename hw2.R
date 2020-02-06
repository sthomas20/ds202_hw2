##R Commands
#Question 1
temp<- c(24,15)
temp
convert_fahr_to_cels <- function(temp) {
  celsius <- 5/9 * (temp - 32)

  return(celsius)
}

cel<- convert_fahr_to_cels(temp)
cel

#Question 2
vec200<- c(1:200)
for (i in 1:200) 
{
  if((i %% 2) == 0) {
    vec200[i]<- 3
  }
  else {
    vec200[i]<- 1
  }
}
print(vec200)



#Question 3?
numPerfect<- c(1:2001)
for(i in 1:2001){
  p<- 1
  while((p*p) <= i){
    if((p*p) == i){
    numPerfect <- numPerfect+1
    p<- p+1
    }
    
 }
  i<- i+1
}
print(numPerfect)


#Cars and mileage
#Question 1
install.packages('ggplot2')
library(ggplot2)
summary(mpg)
head(mpg)
three<- sort(mpg$hwy, decreasing = TRUE)[1:3]
three

top3 <- mpg[mpg$hwy %in% c(41, 44), ]
top3

#Question 2
head(mpg)
numCompact<-length(which(mpg$class == "compact")) 
numCompact

com<- mpg[mpg$class == c('compact')]
mpg$model

#Question 3
x<-mpg$hwy
y<-mpg$cty
plot(x,y, main= "hwy vs city", xlab = "hwy mpg", ylab = "city mpg",)

#Question 4
cars2008<- mpg[mpg$year == 2008, ]
cars2008

cars1999<- mpg[mpg$year == 1999,]
cars1999

summary(cars2008)
summary(cars1999)


summary(mpg)
x2<-cars2008$hwy
y2<-cars1999$hwy
plot(x2,y2, main= "2008 vs 1999 hwy mpg", xlab = "2008 hwy mpg", ylab = "1999 hwy mpg",)

x3<-cars2008$cty
y3<-cars1999$cty
plot(x3,y3, main= "2008 vs 1999 cty mpg", xlab = "2008 cty mpg", ylab = "1999 cty mpg",)


str(mpg)
