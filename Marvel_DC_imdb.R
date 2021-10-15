#library
library(readr)
library(assertive)
library(stringr)
library(dplyr)

#Step 1 : Load data
read_csv("C:/Users/user/Desktop/int214/MarvelDC/Marvel_DC_imdb.csv")
Marvel_DC <- read_csv("C:/Users/user/Desktop/int214/MarvelDC/Marvel_DC_imdb.csv")
View(Marvel_DC)

#Step 2 : Change to tibble
Marvel_DC <- as_tibble(Marvel_DC)
glimpse(Marvel_DC)

#Step 3 : TransformData
Marvel_DC <-Marvel_DC %>% rename(Movie_Name = Movie)
Marvel_DC <-Marvel_DC %>% rename(Year_Started = Year)
View(Marvel_DC)

#Step 4 : Cleaning Data
## Change data type
Marvel_DC$Year_Started <- Marvel_DC$Year_Started %>% str_remove("-")%>%str_remove("[()]")%>%str_remove("[()]")%>%
str_remove("Video")%>% str_remove("TV Special")%>%str_remove("Game")%>% str_remove(" TV Movie")%>% str_remove(" TV Short")%>%
str_remove("III")%>%str_remove("II")%>%str_remove("I")%>%str_remove("V")%>%str_trim()%>% str_remove("[()]")%>%
str_remove("[()]")%>%str_remove("–1958")%>% str_remove("–1978")%>%str_remove("–1995")%>%str_remove("–1999")%>% str_remove("–2000")%>%
str_remove("–2001")%>% str_remove("–2002")%>% str_remove("–2003")%>%str_remove("–2004")%>%str_remove("–2005")%>%
str_remove("–2006")%>% str_remove("–2008")%>% str_remove("–2010")%>% str_remove("–2011")%>% str_remove("–2012")%>%
str_remove("–2015")%>% str_remove("–2016")%>% str_remove("–2018")%>% str_remove("–2019")%>% str_remove("–2020")%>%
str_remove("–2021")%>%str_remove("–2021")%>%str_trim()%>% str_remove("–")

# Remove แต่ละ col ที่ต้องการจะใช้งานที่มีข้อมูล Na
Marvel_DC <- Marvel_DC %>% filter(!is.na(Marvel_DC$Year_Started))
Marvel_DC <- Marvel_DC %>% filter(!is.na(Marvel_DC$RunTime))
Marvel_DC <- Marvel_DC %>% filter(!is.na(Marvel_DC$Rating))
Marvel_DC <- Marvel_DC %>% filter(!is.na(Marvel_DC$IMDB_Score))

#Remove "min" in Runtime
Marvel_DC$RunTime <- Marvel_DC$RunTime %>% str_remove("min")

##Checkpoint 1
write.csv(Marvel_DC,"C:\\Users\\user\\Desktop\\int214\\MarvelDC\\MarvelDC_Clean.csv",row.names=FALSE)

#1
sum((Marvel_DC$Category == "DC" & Marvel_DC$IMDB_Score == max(Marvel_DC$IMDB_Score))) 
Marvel_DC %>% select(Movie_Name,IMDB_Score,Category)%>%
filter(Marvel_DC$Category == "DC" & Marvel_DC$IMDB_Score == max(Marvel_DC$IMDB_Score))

sum((Marvel_DC$Category == "Marvel" & Marvel_DC$IMDB_Score == max(Marvel_DC$IMDB_Score))) 
Marvel_DC %>% select(Movie_Name,IMDB_Score,Category)%>% 
filter(Marvel_DC$Category == "Marvel" & Marvel_DC$IMDB_Score == max(Marvel_DC$IMDB_Score))

#2
sum(Marvel_DC$Year_Started == 2021)
mean(Marvel_DC$RunTime)
distinct(Marvel_DC,Marvel_DC$Movie_Name)

#3
factor(Marvel_DC$Genre)
distinct(Marvel_DC,Marvel_DC$Genre) 

#4
factor(Marvel_DC$Rating)
RatingMovie <- factor(Marvel_DC$Rating)

Marvel_DC %>% select(Movie_Name ,Rating ,Category)%>%
  filter(RatingMovie == "PG-13" & Marvel_DC$Category == "DC")

#5



#6
No6 <- 
  distinct(Marvel_DC %>% select(Movie_Name,RunTime)%>%filter(Marvel_DC$RunTime < 100 ))
View(No6)



