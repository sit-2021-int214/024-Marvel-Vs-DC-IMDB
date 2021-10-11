## Library to use
library(readr)
library(assertive)
library(stringr)
library(dplyr)

## Dataset
read_csv("C:/Users/user/Desktop/int214/Marvel_DC_imdb.csv")
Marvel_DC <- read_csv("C:/Users/user/Desktop/int214/Marvel_DC_imdb.csv")
View(Marvel_DC)

# Remove แต่ละ col ที่ต้องการจะใช้งานที่มีข้อมูล Na
Marvel_DC <- Marvel_DC %>% filter(!is.na(Marvel_DC$Rating))

#Remove () , text ใน Year
Marvel_DC$Year %>% str_remove("[()]") %>% str_remove("[()]") %>% str_remove("TV Special")%>% 
  str_remove("Video")%>% str_remove("Video Game")%>% str_remove("Game")%>% str_remove(" TV Movie")%>% str_remove("III")%>% 
  str_trim()%>% str_remove("[()]") %>% str_remove("[()]")
