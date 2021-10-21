install.packages('data.table')

library(janitor)
library(dplyr)
library(stringr)
library(tidyr)
library(assertive)
library(readr)
library(psych)
library(data.table)
library(ggplot2)
library()

#Data set
read_csv("https://raw.githubusercontent.com/safesit23/INT214-Statistics/main/datasets/prog_book.csv")
com_book <- read_csv("https://raw.githubusercontent.com/safesit23/INT214-Statistics/main/datasets/prog_book.csv")
View(com_book)
com_book<- as_tibble(com_book)

#View data
glimpse(com_book)

#Check Type
(com_book$Reviews)

#clean data

com_book$Reviews <-com_book$Reviews %>% str_remove(",")
com_book$Reviews <- as.numeric(com_book$Reviews)
typeof(com_book$Reviews)

colnames(com_book)

range(com_book$Rating)
range(com_book$Reviews)
range(com_book$Number_Of_Pages)
range(com_book$Price)

#ค่าเฉลี่ยของจำนวนหน้าของหนังสือ และ หนังสือที่มีจำนวนหน้ามากที่สุดคือหนังสืออะไร และมีจำนวนกี่หน้า

mean(com_book$Number_Of_Pages)
com_book%>%select(Book_title,Number_Of_Pages)%>%filter(com_book$Number_Of_Pages==max(com_book$Number_Of_Pages))

#หนังสือเล่มไหนบ้างที่มีจำนวนคนReviews มากกว่า1000comment และมีจำนวนกี่เล่ม
morethan1000comment %>% head()
morethan1000comment <- com_book%>%select(Book_title,Reviews)%>%filter(com_book$Reviews>1000)
count(morethan1000comment)%>% rename(amount = n)

#หนังสือทั้งหมดมีกี่ประเภทมีอะไรบ้าง และ แต่ละประเภทมีหนังสือมีจำนวนเท่าไหร่
count(com_book %>%distinct(Type))%>%rename(amount = n)
com_book %>%distinct(Type)

book_type <- com_book %>%count(com_book$Type)%>% rename(amount = n)
book_type

#เรตติ้งที่มีค่าเฉลี่ยเท่าไหร่ และ เรตติ้งที่ต่ำกว่าค่าเฉลี่ยมีจำนวนเท่าไหร่
mean(com_book$Rating)
rating_book <- com_book%>%select(Book_title,Rating)%>%filter(com_book$Rating < mean(com_book$Rating))
rating_book

#หนังสือที่มีจำนวนหน้าเท่ากับ 352 มีเล่มใดบ้าง
Number_Pages <- com_book%>%select(Book_title,Number_Of_Pages)%>%filter(com_book$Number_Of_Pages == 352)
Number_Pages


#หนังสือที่ชื่อว่า Joel on Software มี comment และ Rating เท่าไหร่
book_Joel <- com_book%>% select(Reviews,Rating)%>%filter(com_book$Book_title == 'Joel on Software' )
book_Joel 


#Amount of comment more than 3000 comment
com_book%>% filter(Reviews >3000)%>% ggplot(aes(x=Book_title, y=Reviews))+geom_point()+ ggtitle("Amount of comment more than 3000 comment ")

#Amount of type
# Set data
count_booktype <- table(com_book$Type)
# Create graph
barplot(count_booktype)
barplot(count_booktype,main = " Amount of type ", xlab = "Type", ylab = " Amount of type ",) + geom_bar(color = count_booktype )
