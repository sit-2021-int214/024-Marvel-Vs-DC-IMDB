#Exercise 1
ex1 <-c(10.4,5.6,3.1,6.4,21.7)

summary(ex1)
#Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
#3.10    5.60    6.40    9.44   10.40   21.70 

sum(ex1)
# 47.2

median(ex1)
# 6.4

sd(ex1)
# 7.33846

var(ex1)
# 53.853

#____________________________________________________________
#Exercise 2
#2.1
# List of Marvel movies (Order by Marvel Phase released)
names <- c("Iron Man","The Incredible Hulk","Iron Man 2","Thor","Captain America: The First Avenger",
           "The Avengers","Iron Man 3","Thor: The Dark World","Captain America: The Winter Soldier",
           "Guardians of the Galaxy","Avengers: Age of Ultron","Ant-Man","Captain America: Civil War",
           "Doctor Strange","Guardians of the Galaxy 2","Spider-Man: Homecoming","Thor: Ragnarok","Black Panther",
           "Avengers: Infinity War","Ant-Man and the Wasp","Captain Marvel","Avengers: Endgame",
           "Spider-Man: Far From Home","WandaVision","Falcon and the Winter Soldier","Loki","Black Widow")

# List of released year of Marvel movies
years <- c(2008,2008,2010,2011,2011,2012,2013,2013,2014,2014,2015,2015,2016,2016,
           2017,2017,2017,2017,2018,2018,2019,2019,2019,2021,2021,2021,2021)

marvel_movies <-data.frame(marvelmovies = names,yearmovies = years)
View(marvel_movies)
#ที่ใช้โครงสร้างข้อมูลแบบDataframeเพราะเป็นโครงสร้างข้อมูลแบบตารางข้อมูลที่สามารถเห็นข้อมูลทั้งหมดผ่านtableเดียวกัน

#2.2
length(names)
# 27

print (names[19])
# "Avengers: Infinity War"

View(marvel_movies)
#หนังออกฉายในปี2017 กับปี 2021 มากที่สุดซึ่งมีจำนวนปีละ 4 เรื่อง