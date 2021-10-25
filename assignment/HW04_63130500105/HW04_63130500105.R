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

#อักขระในตัวข้อมูลมันไม่เหมือนกันเลยต้องทำซ้ำหลายอัน

prog_book$Description <- str_replace(prog_book$Description,"โ€","'")
prog_book$Description <- str_replace(prog_book$Description,"โ€”","—")
prog_book$Description <- str_replace(prog_book$Description,"โ€","'")
prog_book$Description <- str_replace(prog_book$Description,"Schrรถdinger","Schrodinger")
prog_book$Description <- str_replace(prog_book$Description,"Schrรถdinger","Schrodinger")
prog_book$Description <- str_replace(prog_book$Description,"รถ","ro")
prog_book$Description <- str_replace(prog_book$Description,"โ€","“")
prog_book$Description <- str_replace(prog_book$Description,"โ€","”")
prog_book$Book_title <- str_replace(prog_book$Book_title,"โ€“ ","–")

glimpse(prog_book)

##Checkpoint 1
write.csv(prog_book,"C:\\Users\\user\\Desktop\\int214\\assignment\\prog_book_Clean.csv",row.names=FALSE)

#1 type ของหนังสือมีกี่ชนิด และ มีอะไรบ้าง
prog_book %>% count(Type) 
booktype <- prog_book %>% select(Type) %>% unnest(Type) %>% count(Type) %>% rename(Total = n)%>% rename(TypeOfBook = Type)
booktype 

#2 ค่าสูงสุดและต่ำสุดของ Rating แตกต่างกันเท่าไหร่ และ หา book_title ของค่าสูงสุด และ ต่ำสุด
Maxrating <- max(prog_book$Rating) #5
Minrating <- min(prog_book$Rating) #3
Maxrating - Minrating 

prog_book %>% select(Book_title,Rating) %>%filter(prog_book$Rating == Maxrating )
prog_book %>% select(Book_title,Rating) %>%filter(prog_book$Rating == Minrating )

#3 ค่าเฉลี่ยของ Reviews อยู่ที่เท่าไหร่ และ มี เล่มไหนบ้างที่ได้สูงกว่าค่าเฉลี่ย
mean(prog_book$Reviews)
prog_book %>% select(Book_title,Reviews) %>% filter(prog_book$Reviews > mean(prog_book$Reviews))%>% arrange(data.frame(Reviews))%>% head()

#4 มีหนังสือเล่มไหนบ้างที่เป็นเกี่ยวกับ Google และ ราคาเท่าไหร่
prog_book %>% select(Book_title,Price) %>% filter(prog_book$Description %like% 'Google')

#5 ค่าเฉลี่ยของจำนวนหน้าของหนังสือคือเท่าไหร่ และจำนวนหน้าที่มากที่สุดและน้อยที่สุดคือเท่าไหร่
mean(prog_book$Number_Of_Pages)
Maxpages <- max(prog_book$Number_Of_Pages)
Minpages <- min(prog_book$Number_Of_Pages)
prog_book %>% select(Number_Of_Pages , Book_title) %>% filter(prog_book$Number_Of_Pages == Maxpages ) 
prog_book %>% select(Number_Of_Pages , Book_title) %>% filter(prog_book$Number_Of_Pages == Minpages)

#6 มีหนังสือเล่มไหนบ้างที่มีจำนวนหน้ามากกว่า 300 หน้า เรื่องอะไร และ ราคาเท่าไหร่
sum(prog_book$Number_Of_Pages > 300)
prog_book %>% select(Book_title , Number_Of_Pages , Price) %>% filter(prog_book$Number_Of_Pages > 300)%>% arrange(desc(Price)) %>% head()

#Check 
sum(prog_book$Price)
# หาข้อมูลของชนิดของหนังสือ ว่ามีจำนวนเท่าไหร่
# Set data
total_types <- table(prog_book$Type)
#Create graph
barplot(total_types)
barplot(total_types,main = "Total of Types", xlab = "count Type", ylab = "Type of Book",)

# ตรวจสอบข้อมูลของ Reviews ว่ามี ชื่อหนังสือ เล่นไหนบ้างมี Reviews เกิน 1000 Reviews
pie(table(prog_book %>% select(Book_title) %>% filter(prog_book$Reviews < 500 )))


