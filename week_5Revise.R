download.file(url = "https://raw.githubusercontent.com/fivethirtyeight/data/master/airline-safety/airline-safety.csv"
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
              
#TASK: what other packages are in the tidyverse? 
#There are eight core Tidyverse packages namely ggplot2, dplyr, tidyr, readr, purrr, tibble, stringr, and forcats
              
install.packages("tidyverse")
library(tidyverse)
              
piping<-mysample %>% 
                mutate (seats = avail_seat_km_per_week) %>%
                subset(incidents_85_99 < 24) %>%
                dim()%>%
                print()
              
print( mysample4<-summary( mysample3<-( ( mysample2<- mysample %>%
        arrange(airline) %>%
        subset(incidents_85_99<25) %>%
        mutate(seats = avail_seat_km_per_week) ) %>% 
        select (incidents_00_14, incidents_85_99) ) ) )