sample(c("Johnny","Waylon","Willie","Kris"))
sample(c("Rahul","Ramesh","Rakesh","Rudresh"))
getwd(women)
setwd(women)
Ritesh_mydata<-women
return(Ritesh_mydata)
Ritesh_data (Ritesh_mydata,2)
Ritesh_mydata (Ritesh_mydata,2)
returnValue(Ritesh_mydata,2)
wt(Ritesh_mydata,2)
topenv(Ritesh_mydata,2)
filter(Ritesh_mydata,2)
head(Ritesh_mydata,2)
str(Ritesh_mydata)
summary(Ritesh_mydata)
mean(Ritesh_mydata$height)
Just_Height<- (Ritesh_mydata$height)
Just_weight<- (Ritesh_mydata$weight)
HeightandWeight <-data.frame(Just_eight, Just_Weight)
HeightandWeight <-data.frame(Just_Height,Just_Weight)
HeightandWeight <-data.frame(Just_Height, Just_weight)
subset(HeightandWeight, Just_Height>65)
df.shape (HeightandWeight)
df(HeightandWeight)
df.columns(HeightandWeight)
nrow(HeightandWeight)
ncol(HeightandWeight)
install.packages("tibble")
library(tibble)
NewWomen<-tibble(HeightandWeight, height=Just_Height, weight=Just_weight)
NewWomen1<-tibble(height=Just_Height, weight=Just_weight)
View(NewWomen)
View(NewWomen1)
#Newwomen: Creates same column and rows similar to the just height and just weight.And name as height and weight.
#Newwomen1: Creates same column and row similar to the just height and weight.and removed just height and just weight column.
install.packages("ggplot2")
library(ggplot2)
ggplot(NewWomen, aes(x=height, y=weight)) + 
  geom_point()
ggplot(NewWomen, aes(x=height, y=weight)) + 
  geom_point(shape = 21, colour = "black", fill = "white", size = 5, stroke = 5)
#I can see plots looks bigger than before with black and white color and size increases.

#Week 4 Activity
students<-data.frame(HairEyeColor)
head(students)
install.packages("dplyr")
library("dplyr")
select(students, Hair, Sex)
hairsex<-select(students, Hair, Sex)
justhair<-select(hairsex,-Sex)
rename(students, gender=Sex)
students1<-mutate(students, gender=Sex)
males<-filter(students1, gender=="Male")
arrange(males, Freq)
group_by(males, gender)
total=mutate(students, total=cumsum(Freq))
tail(total, 1)
sum(students$Freq)
#TASK: Comment with the total (sum) here: 592
females<-filter(students1, gender=="Female")
union(males,females)
newset<-bind_rows(males,females)
#intersect(), union() and setdiff() remove duplicates.
...........

#Week 5 Activity


download.file(url = "https://raw.githubusercontent.com/fivethirtyeight/data/master/airline-safety/airline-safety.csv", destfile = "airline_safety.csv")
airline_safety<- read.csv("airline_safety.csv")
sample(airline_safety)
install.packages("dplyr")
library("dplyr")
mysample<-sample_n(airline_safety, size=15, replace = FALSE, weight = NULL, .env = NULL)
write.csv(mysample,"~/mysample.csv", row.names = FALSE)
getwd()
#TASK: Check your wd. Is the file there?
#I have checked and Mysample. csv file is not there but i can see airline_safety file.
#so you do not usually load magrittr explicitly.
#There are eight core Tidyverse packages namely ggplot2, dplyr, tidyr, readr, purrr, tibble, stringr, and forcats
piping<-mysample %>% 
  mutate (seats = avail_seat_km_per_week) %>%
  subset(incidents_85_99 < 24) %>%
  dim()%>%
  print()

mysample2<- mysample %>%
  arrange(airline) %>%
  filter(incidents_85_99<25) %>%
  rename(seats = avail_seat_km_per_week) %>%
  na.omit() %>%
  print()

mysample3<- mysample2 %>%
  select( incidents_00_14, incidents_85_99) %>%
  na.omit() %>%
  print()


mysample4<-mysample3 %>%  
           summary()%>%
           print()      
           
                 
