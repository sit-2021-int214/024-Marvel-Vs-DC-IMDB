#library
library(readr)
library(assertive)
library(stringr)
library(dplyr)
library(tidyr)
library(ggplot2)
library(data.table)

#Step 1 : Load data
read.csv("C:\\Users\\user\\Desktop\\int214\\assignment\\prog_book.csv")
prog_book <- read.csv("C:\\Users\\user\\Desktop\\int214\\assignment\\prog_book.csv")
View(prog_book)

glimpse(prog_book)

#Cleaning Data

prog_book$Reviews <- prog_book$Reviews %>% str_remove(",")
assert_is_numeric(prog_book$Reviews)
prog_book$Reviews <- as.numeric(prog_book$Reviews)

prog_book$Book_title <- prog_book$Book_title %>% str_remove("โ€“")

glimpse(prog_book)

#1 
prog_book %>% count(Type) 
booktype <- prog_book %>% select(Type) %>% unnest(Type) %>% count(Type) %>% rename(Total = n)%>% rename(TypeOfBook = Type)
booktype 

#2 
Maxrating <- max(prog_book$Rating) #5
Minrating <- min(prog_book$Rating) #3
Maxrating - Minrating 

prog_book %>% select(Book_title,Rating) %>%filter(prog_book$Rating == Maxrating )
prog_book %>% select(Book_title,Rating) %>%filter(prog_book$Rating == Minrating )

#3 
mean(prog_book$Reviews)
prog_book %>% select(Book_title,Reviews) %>% filter(prog_book$Reviews > mean(prog_book$Reviews))%>% arrange(data.frame(Reviews))%>% head()

#4 
prog_book %>% select(Book_title,Price) %>% filter(prog_book$Description %like% 'Google')

#5 
mean(prog_book$Number_Of_Pages)
Maxpages <- max(prog_book$Number_Of_Pages)
Minpages <- min(prog_book$Number_Of_Pages)
prog_book %>% select(Number_Of_Pages , Book_title) %>% filter(prog_book$Number_Of_Pages == Maxpages ) 
prog_book %>% select(Number_Of_Pages , Book_title) %>% filter(prog_book$Number_Of_Pages == Minpages)

#6 
sum(prog_book$Number_Of_Pages > 300)
prog_book %>% select(Book_title , Number_Of_Pages , Price) %>% filter(prog_book$Number_Of_Pages > 300)%>% arrange(desc(Price)) %>% head()
