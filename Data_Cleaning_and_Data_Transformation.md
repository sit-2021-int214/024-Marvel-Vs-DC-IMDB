# Data Cleaning and Data Transformation

## from Marvel VS DC IMDB Dataset
### Overviews

1. Explore the Marvel VS DC IMDB Dataset 
2. Cleaning and Data Transformation

## 1. Explore the Marvel VS DC IMDB Dataset
### Our Steps

1. Loading Library and dataset
2. Explore the dataset

### Loading library and dataset

```
install.packages("tidyr")

#library
library(readr)
library(assertive)
library(stringr)
library(dplyr)
library(tidyr)

```
### Explore the dataset
```
#DataSet
Marvel_DC <- read.csv("C:\Users\user\Desktop\int214\MarvelDC\MarvelDC_Clean.csv")
View(Marvel_DC)
glimpse(Marvel_DC)

```
#### Result
```
Rows: 1,300
Columns: 14
$ No           <int> 2, 3, 6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27~
$ Movie_Name   <chr> "The Falcon and the Winter Soldier", "WandaVision", "Avengers: Endgame", "Gua~
$ Year_Started <int> 2021, 2021, 2019, 2014, 2019, 2017, 2018, 2018, 2019, 2017, 2015, 2011, 2017,~
$ Genre        <chr> "Action,Adventure,Drama", "Action,Comedy,Drama", "Action,Adventure,Drama", "A~
$ RunTime      <int> 50, 350, 181, 121, 129, 130, 149, 134, 123, 133, 141, 124, 136, 115, 126, 147~
$ Rating       <chr> "TV-14", "TV-PG", "PG-13", "PG-13", "PG-13", "PG-13", "PG-13", "PG-13", "PG-1~
$ Director     <chr> NA, NA, "AnthonyRusso,JoeRusso", "JamesGunn", "JonWatts", "TaikaWaititi", "An~
$ Actor        <chr> "AnthonyMackie,SebastianStan,WyattRussell,ErinKellyman", "ElizabethOlsen,Paul~
$ Description  <chr> "Following the events of 'Avengers: Endgame,' Sam Wilson/Falcon and Bucky Bar~
$ IMDB_Score   <dbl> 7.5, 8.1, 8.4, 8.0, 7.5, 7.9, 8.4, 7.3, 6.9, 7.4, 7.3, 6.9, 7.6, 7.0, 7.9, 7.~
$ Metascore    <dbl> NA, NA, 78, 76, 69, 74, 68, 88, 64, 73, 66, 66, 67, 57, 79, 75, 69, 44, 72, 6~
$ Votes        <dbl> 105557, 174710, 880911, 1066222, 348047, 615860, 881638, 652032, 470319, 5329~
$ USA_Gross    <chr> NA, NA, "$858.37M", "$333.18M", "$390.53M", "$315.06M", "$678.82M", "$700.06M~
$ Category     <chr> "Marvel", "Marvel", "Marvel", "Marvel", "Marvel", "Marvel", "Marvel", "Marvel~

```
## 2.Cleaning abd Transformation dataset

#### Our Steps

1. Design and analyze to cleaning dataset
2. Cleaning and Transformation dataset

## 2.1 Design and analyze to cleaning dataset
```
1. ...1 : Sequence of movies (Rename and Change Type)
2. Movie : Name of each movie (Rename)
3. Year : Year of production started (Cleaning Data and Rename)
4. Genre : Movie type (Cleaning Data)
5. Runtime : Total screening time of the movie (Change Type and Cleaning Data)
6. Rating : Classification of movies (Cleaning Data)
7. Director : Film director
8. Actor : Actor and Actresses
9. Description : Plot
10. IMDB_Score : IMDB Score 
11. Metascore : Metascore
12. Votes : No. of Votes in IMDB
13. USA_Gross : Gross collection in USA
14. Catagory : Marvel or DC
```
## 2.2 Cleaning and Transformation dataset
#### Step 1 : Change to tibble
```
Marvel_DC <- as_tibble(Marvel_DC)
glimpse(Marvel_DC)
```
#### Step 2 : Rename column 
```
#rename ...1
Marvel_DC <-Marvel_DC %>% rename(No = ...1)
#rename Movie
Marvel_DC <-Marvel_DC %>% rename(Movie_Name = Movie)
#rename Year
Marvel_DC <-Marvel_DC %>% rename(Year_Started = Year)
```
#### Step 3 : Change type dataset
```
#Year_Started
Marvel_DC$Year_Started <- as.integer(Marvel_DC$Year_Started)
#No
Marvel_DC$No <- as.integer(Marvel_DC$No)
#Runtime
Marvel_DC$RunTime <- as.integer(Marvel_DC$RunTime)
```
#### Step 4 : Cleaning Dataset
```
#Clean String
Marvel_DC$Year_Started <- 
  Marvel_DC$Year_Started %>% str_sub(2,5) %>% str_remove("[III)]")%>% str_remove("[II)]")%>% str_remove("[I)]")%>% str_remove("[I) ]")%>%str_remove("[) (]")%>%str_remove("V") 
 
Marvel_DC$RunTime <- Marvel_DC$RunTime %>% str_remove("min")

#แยกค่าใน Genre
new_MarvelDC <- Marvel_DC %>% mutate(
  Genre = strsplit(Marvel_DC$Genre,","))
glimpse(new_MarvelDC)
```
