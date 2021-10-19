#library
library(readr)
library(assertive)
library(stringr)
library(dplyr)
library(tidyr)

#Step 1 : Load data
read_csv("C:/Users/user/Desktop/int214/MarvelDC/Marvel_DC_imdb.csv")
Marvel_DC <- read_csv("C:/Users/user/Desktop/int214/MarvelDC/Marvel_DC_imdb.csv")
View(Marvel_DC)

#Step 2 : Change to tibble
Marvel_DC <- as_tibble(Marvel_DC)
glimpse(Marvel_DC)

Marvel_DC <-Marvel_DC %>% rename(No = ...1)
Marvel_DC <-Marvel_DC %>% rename(Movie_Name = Movie)
Marvel_DC <-Marvel_DC %>% rename(Year_Started = Year)
View(Marvel_DC)

#Step 3 : TransformData
Marvel_DC$Year_Started <- as.integer(Marvel_DC$Year_Started)
Marvel_DC$No <- as.integer(Marvel_DC$No)
Marvel_DC$RunTime <- as.integer(Marvel_DC$RunTime)

#Step 4 : Cleaning Data

## Change data type
Marvel_DC$Year_Started <- 
  Marvel_DC$Year_Started %>% str_sub(2,5) %>% str_remove("[III)]")%>% str_remove("[II)]")%>% str_remove("[I)]")%>% str_remove("[I) ]")%>%
  str_remove("[) (]")%>%str_remove("V") 

# Remove แต่ละ col ที่ต้องการจะใช้งานที่มีข้อมูล Na
Marvel_DC <- Marvel_DC %>% filter(!is.na(Marvel_DC$Year_Started))
Marvel_DC <- Marvel_DC %>% filter(!is.na(Marvel_DC$RunTime))
Marvel_DC <- Marvel_DC %>% filter(!is.na(Marvel_DC$Rating))
Marvel_DC <- Marvel_DC %>% filter(!is.na(Marvel_DC$IMDB_Score))

#Remove "min" in Runtime
Marvel_DC$RunTime <- Marvel_DC$RunTime %>% str_remove("min")

#จัดการกับกลุ่ม Genre
new_MarvelDC <- Marvel_DC %>% mutate(
  Genre = strsplit(Marvel_DC$Genre,","))
glimpse(new_MarvelDC)

Marvel_DC <- new_MarvelDC
glimpse(Marvel_DC)

##Checkpoint 1
write.csv(Marvel_DC,"C:\\Users\\user\\Desktop\\int214\\MarvelDC\\MarvelDC_Clean.csv",row.names=FALSE)

#1. 
sum((Marvel_DC$Category == "DC" & Marvel_DC$IMDB_Score == max(Marvel_DC$IMDB_Score))) 
Marvel_DC %>% select(Movie_Name,IMDB_Score,Category)%>%
  filter(Marvel_DC$Category == "DC" & Marvel_DC$IMDB_Score == max(Marvel_DC$IMDB_Score))

sum((Marvel_DC$Category == "Marvel" & Marvel_DC$IMDB_Score == max(Marvel_DC$IMDB_Score))) 
Marvel_DC %>% select(Movie_Name,IMDB_Score,Category)%>% 
  filter(Marvel_DC$Category == "Marvel" & Marvel_DC$IMDB_Score == max(Marvel_DC$IMDB_Score))

#2.
sum(Marvel_DC$Year_Started == 2021)
mean(Marvel_DC$Year_Started == 2021)

#3. 
Marvel_DC %>% select(Genre) %>% unnest(Genre) %>% count(Genre) %>% arrange(desc(n)) %>% head()

#4. 
factor(Marvel_DC$Rating)
RatingMovie <- factor(Marvel_DC$Rating)

Marvel_DC %>% select(Movie_Name ,Rating ,Category)%>%
  filter(RatingMovie == "PG-13" & Marvel_DC$Category == "DC")

#5. 

#MIN DC
factor(Marvel_DC$Votes)
MinDC <- Marvel_DC %>% select(Movie_Name,Votes,Category) %>% filter( Marvel_DC$Votes == min(Marvel_DC$Votes) & Marvel_DC$Category == "DC")

Marvel_DC %>% select(Movie_Name,Votes,Category) %>% filter( Marvel_DC$Votes == min(Marvel_DC$Votes) & Marvel_DC$Category == "DC")
distinct(MinDC)

#MIN Marvel
MinMarvel <- Marvel_DC %>% select(Movie_Name,Votes,Category)%>% filter(Votes == 17 & Category == "Marvel") 
distinct(MinMarvel)

#ผลรวมMarvel
SumMarvel <- sum(Marvel_DC$Votes & Marvel_DC$Category == "Marvel") #275
#ผลรวมDC
SumDC <- sum(Marvel_DC$Votes & Marvel_DC$Category == "DC") #1026
SumMarvel
SumDC

ifelse(SumMarvel > SumDC ,"Marvel","DC")

#6.  
lessonehundred <- Marvel_DC %>% select(Movie_Name,RunTime,Category)%>%filter(Marvel_DC$RunTime < 100 )
count(lessonehundred)
lessonehundred %>% arrange(desc(RunTime))%>% head()
