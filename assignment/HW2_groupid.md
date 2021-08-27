# Assignment 2 (Group)
Explore 2 dataset that given then finding descriptive statistics and summary result in form of sentences/paragraph at least 5 topics.


1.) จากข้อมูลใน cats เป็นการบอกรายละเอียดข้อมูลเพศของแมวว่า แมวเพศหญิงมี 47 ตัว และ เพศชายมี 97 ตัว
```{R}
factor(cats$Sex)
gender <- factor(cats$Sex)
summary(gender)
```

2.) Descriptive statistics Statement
```{R}
Code here
```

3.) Descriptive statistics Statement
```{R}
Code here
```

4.) จากข้อมูลใน survey เป็นการบอกรายละเอียดของการสูบบุหรี่ว่ามีระดับไหนบ้าง Heavy = 11 , Never = 189 , Occas = 19 , Regul=17 , NA's = 1
```{R}
factor(survey$Smoke)
data <- factor(survey$Smoke)
summary(data)
```

5.) จากข้อมูลใน survey เป็นการบอกว่ามีใครถนัดด้านซ้าย ด้านขวา และ ไม่ถนัดทั้ง 2 ด้าน Left = 39 , Neither = 50 , Right = 147
```{R}
table(survey$Clap)
```


### Team: 024 - Numberone
1.นางสาว ปิยะมน สุดดี Student id : 63130500082

2.นางสาว วารีวัล พงศ์พันธ์ชัยกุล Student id : 63130500105

3.นางสาว สริดา บัวแก้ว Student id : 63130500112

4.นาย สุทธิพงษ์ ชนะมูล Student id : 63130500121

5.นางสาว สุพิชญา หมื่นนุช Student id : 63130500123
