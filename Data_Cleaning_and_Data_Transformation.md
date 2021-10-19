# Data Cleaning and Data Transformation

## from Marvel VS DC IMDB Dataset
### Overviews

1.Explore the Marvel VS DC IMDB Dataset 
2.Cleaning and Data Transformation

## 1. Explore the Marvel VS DC IMDB Dataset
### Our Steps

1.Loading Library and dataset
2.Explore the dataset

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
$ No           <int> 2, 3, 6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 31, 32, 33, 34, 35, 40, 41, 42, 49, 52, 55, 56, 58, 61, 62, 63, 64, 65, 66, 67, 70, 71, 72, 73, 74, ~
$ Movie_Name   <chr> "The Falcon and the Winter Soldier", "WandaVision", "Avengers: Endgame", "Guardians of the Galaxy", "Spider-Man: Far from Home", "Thor: Ragnarok", "Avengers: Infinity War", "Black Pan~
$ Year_Started <int> 2021, 2021, 2019, 2014, 2019, 2017, 2018, 2018, 2019, 2017, 2015, 2011, 2017, 2011, 2008, 2016, 2012, 2019, 2016, 2015, 2014, 2013, 2013, 2010, 2007, 2018, 2008, 2019, 2018, 2007, 201~
$ Genre        <chr> "Action,Adventure,Drama", "Action,Comedy,Drama", "Action,Adventure,Drama", "Action,Adventure,Comedy", "Action,Adventure,Sci-Fi", "Action,Adventure,Comedy", "Action,Adventure,Sci-Fi", ~
$ RunTime      <dbl> 50, 350, 181, 121, 129, 130, 149, 134, 123, 133, 141, 124, 136, 115, 126, 147, 143, 90, 115, 117, 136, 130, 112, 124, 139, 118, 112, 125, 112, 92, 4, 103, 7, 60, 58, 22, 15, 4, 175, 8~
$ Rating       <chr> "TV-14", "TV-PG", "PG-13", "PG-13", "PG-13", "PG-13", "PG-13", "PG-13", "PG-13", "PG-13", "PG-13", "PG-13", "PG-13", "PG-13", "PG-13", "PG-13", "PG-13", "R", "PG-13", "PG-13", "PG-13"~
$ Director     <chr> NA, NA, "AnthonyRusso,JoeRusso", "JamesGunn", "JonWatts", "TaikaWaititi", "AnthonyRusso,JoeRusso", "RyanCoogler", "AnnaBoden,RyanFleck", "JonWatts", "JossWhedon", "JoeJohnston", "Jame~
$ Actor        <chr> "AnthonyMackie,SebastianStan,WyattRussell,ErinKellyman", "ElizabethOlsen,PaulBettany,KathrynHahn,TeyonahParris", "RobertDowneyJr.,ChrisEvans,MarkRuffalo,ChrisHemsworth", "ChrisPratt,V~
$ Description  <chr> "Following the events of 'Avengers: Endgame,' Sam Wilson/Falcon and Bucky Barnes/Winter Soldier team up in a global adventure that tests their abilities -- and their patience.", "Blen~
$ IMDB_Score   <dbl> 7.5, 8.1, 8.4, 8.0, 7.5, 7.9, 8.4, 7.3, 6.9, 7.4, 7.3, 6.9, 7.6, 7.0, 7.9, 7.8, 8.0, 6.1, 7.5, 7.3, 7.7, 7.1, 6.9, 7.0, 6.2, 7.0, 6.7, 6.8, 7.0, 5.6, 8.1, 5.9, 6.5, 5.9, 8.0, 6.5, 7.6~
$ Metascore    <int> NA, NA, 78, 76, 69, 74, 68, 88, 64, 73, 66, 66, 67, 57, 79, 75, 69, 44, 72, 64, 70, 62, 54, 57, 59, 70, 61, 67, 71, 45, NA, 30, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA,~
$ Votes        <int> 105557, 174710, 880911, 1066222, 348047, 615860, 881638, 652032, 470319, 532946, 769385, 761947, 589362, 764898, 960817, 686621, 1283515, 84999, 619963, 588231, 756882, 772986, 611700~
$ USA_Gross    <chr> NA, NA, "$858.37M", "$333.18M", "$390.53M", "$315.06M", "$678.82M", "$700.06M", "$426.83M", "$334.20M", "$459.01M", "$176.65M", "$389.81M", "$181.03M", "$318.41M", "$408.08M", "$623.2~
$ Category     <chr> "Marvel", "Marvel", "Marvel", "Marvel", "Marvel", "Marvel", "Marvel", "Marvel", "Marvel", "Marvel", "Marvel", "Marvel", "Marvel", "Marvel", "Marvel", "Marvel", "Marvel", "Marvel", "Ma~

```

