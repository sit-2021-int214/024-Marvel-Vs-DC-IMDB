
library(readr)
library(stringr)
library(tidyr)
library(assertive)
install.packages("tidyverse")
library(tidyverse)
library(lubridate)
library(ggplot2)
# Library dplyr 
library(dplyr)

# Library lubridate : identify the order in which the year, month, and day appears in your dates.
install.packages("lubridate")


# Library ggplot2 : system for declaratively creating graphics
install.packages("ggplot2")


# Dataset
#superstore <- read.csv("https://raw.githubusercontent.com/safesit23/INT214-Statistics/main/datasets/superstore_sales.csv")
superstore <- read_csv("https://raw.githubusercontent.com/safesit23/INT214-Statistics/main/datasets/superstore_sales.csv")

# Show Data
glimpse(superstore)

#Part 2
dim(superstore)

#Part 3: Transform data with dplyr and finding insight the data
#1.หมวดหมู่สินค้าที่ขายได้มากที่สุด 5 อันดับแรก
Top5Supst <- superstore %>% select(`Sub-Category`) %>% count(`Sub-Category`) %>% arrange(desc(n)) %>% slice(1:5)
as_tibble(Top5Supst)

#2หารุ่นของเรื่อที่เอามาใช้ในวันที่ 26/11/2016 ให้รู้ว่ามีรุ่นอะไรที่ใช้วันนั้นบ้าง
superstore %>% select(`Ship Date` , `Ship Mode`) %>% group_by(`Ship Mode`) %>% mutate(day = day(dmy(`Ship Date`)) 
, month = month(dmy(`Ship Date`)) , year = year(dmy(`Ship Date`))) %>% filter(day==26, month==11 , year==2016)

#3.
superstore %>% select(Customer.Name,Sales) %>% slice_min(Sales)

#4.ค้นหารหัสลูกค้าที่ซื้อหมวดFurniture

fur <- superstore %>% filter(superstore$Category == "Furniture")
fur %>% distinct(fur$Customer.ID)

#5.
highPrice<- superstore %>% select(`Customer Name`,`Product Name`,Sales) %>% filter(superstore$Sales == max(superstore$Sales));
as_tibble(highPrice)


#6.ค้นหาชื่อลูกค้า 10 รายที่ซื้อราคาต่ำที่สุด
superstore %>% select(Customer.Name,Sales) %>% slice_min(Sales , n=10 )


#Part 4
#Data Visualization with ggplot2
#1)
# Filter subcategory equal Furnishings and set x to be orderID and y to be Sales
scat_plot <- superstore %>% filter(Sub.Category == 'Furnishings') %>% ggplot(aes(x=Order.ID,y=Sales))+
  geom_point(aes(color=Sales))
scat_plot

#2
# Set data
superstore %>% select(`Segment`) %>% filter(superstore$Category == "Technology" )
# Create pie
pie(table(superstore %>% select(`Segment`) %>% filter(superstore$Category == "Technology")))


