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
1.Movie	Year :
2.Genre :
3.RunTime :
4.Rating :	
5.Director : 
6.Actor : 
7.Description : 
8.IMDB_Score :
9.Metascore : 
10.Votes :
11.USA_Gross :
12.Category :
```
## 2.2 Cleaning and Transformation dataset
#### Step 1: Change to tibble
```
Marvel_DC <- as_tibble(Marvel_DC)
glimpse(Marvel_DC)

Marvel_DC <-Marvel_DC %>% rename(No = ...1)
Marvel_DC <-Marvel_DC %>% rename(Movie_Name = Movie)
Marvel_DC <-Marvel_DC %>% rename(Year_Started = Year)
View(Marvel_DC)

```
#### Step 1: Rename column is ... 1 ,Movie,Year 
```


```
