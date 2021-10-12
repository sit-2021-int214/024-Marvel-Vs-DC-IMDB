#library
library(readr)
library(assertive)
library(stringr)
library(dplyr)

#Data set
read_csv("C:/Users/user/Desktop/int214/Marvel_DC_imdb.csv")
Marvel_DC <- read_csv("C:/Users/user/Desktop/int214/Marvel_DC_imdb.csv")
View(Marvel_DC)

#Check Type
assert_is_character(Marvel_DC$Movie) #TRUE
assert_is_numeric(Marvel_DC$Year) 
assert_is_character(Marvel_DC$Genre) #TRUE
assert_is_numeric(Marvel_DC$RunTime) 
assert_is_numeric(Marvel_DC$Rating)
assert_is_character(Marvel_DC$Director) #TRUE
assert_is_character(Marvel_DC$Actor) #TRUE
assert_is_character(Marvel_DC$Description) #TRUE
assert_is_numeric(Marvel_DC$IMDB_Score) #TRUE
assert_is_numeric(Marvel_DC$Metascore) #TRUE
assert_is_numeric(Marvel_DC$Votes) #TRUE
assert_is_numeric(Marvel_DC$USA_Gross) 
assert_is_character(Marvel_DC$Category) #TRUE

# Remove แต่ละ col ที่ต้องการจะใช้งานที่มีข้อมูล Na
Marvel_DC <- Marvel_DC %>% filter(!is.na(Marvel_DC$Rating))

#Remove () , text ใน Year
Marvel_DC$Year %>% str_remove("[()]") %>% str_remove("[()]") %>% str_remove("TV Special")%>% 
  str_remove("Video")%>% str_remove("Video Game")%>% str_remove("Game")%>% str_remove(" TV Movie")%>% str_remove("III")%>% 
  str_trim()%>% str_remove("[()]") %>% str_remove("[()]")

#Remove "min" in Runtime
Marvel_DC$RunTime %>% str_remove("min")
Marvel_DC$RunTime <- Marvel_DC$RunTime %>% str_remove("min")
