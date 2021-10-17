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

#Step 3 : TransformData
Marvel_DC$Year_Started <- as.numeric(Marvel_DC$Year_Started)

#Step 4 : Cleaning Data
## Rename
Marvel_DC <-Marvel_DC %>% rename(No = ...1)
Marvel_DC <-Marvel_DC %>% rename(Movie_Name = Movie)
Marvel_DC <-Marvel_DC %>% rename(Year_Started = Year)
View(Marvel_DC)

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

##Checkpoint 1
write.csv(Marvel_DC,"C:\\Users\\user\\Desktop\\int214\\MarvelDC\\MarvelDC_Clean.csv",row.names=FALSE)
