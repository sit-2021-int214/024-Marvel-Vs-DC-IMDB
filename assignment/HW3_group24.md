1.จากข้อมูลใน cats เป็นการบอกรายละเอียดข้อมูลเพศของแมวว่า แมวเพศหญิงมี 47 ตัว และ เพศชายมี 97 ตัว
```{R}
factor(cats$Sex)
gender <- factor(cats$Sex)
summary(gender)
```
Explore Data with dpylr :
```{R}
cats %>% dplyr::select(Sex)%>% count(Sex)
```

2.จากข้อมูลใน cats  เป็นการบอกค่าสูงสุดของ Body weight ของแมวทั้งเพศชาย และ หญิง = 3.9
```{R}
max(cats$Bwt)
```
Explore Data with dpylr :
```{R}
cats %>% dplyr::select(Bwt)%>% max()
```

3.จากข้อมูลใน cats  เป็นการบอกค่าต่ำสุดของ Heart weight ของแมวทั้งเพศชาย และ หญิง = 6.3
```{R}
min(cats$Hwt)
```
Explore Data with dpylr :
```{R}
cats %>% dplyr::select(Hwt)%>% min()
```

4.จากข้อมูลใน survey เป็นการบอกรายละเอียดของการสูบบุหรี่ว่ามีระดับไหนบ้าง Heavy = 11 , Never = 189 , Occas = 19 , Regul=17 , NA's = 1
```{R}
factor(survey$Smoke)
data <- factor(survey$Smoke)
summary(data)
```
Explore Data with dpylr :
```{R}
eachSmoke <- c("Heavy","Never","Occas","Regul","NA's" )
countEachSmoke <- survey %>% dplyr::select(Smoke) %>% summarise(Smoke = summary(Smoke , na.rm = TRUE)) 
detailOfSmoke <- data.frame(eachSmoke , countEachSmoke)
detailOfSmoke
```

5.จากข้อมูลใน survey เป็นการบอกว่ามีใครถนัดด้านซ้าย ด้านขวา และ ไม่ถนัดทั้ง 2 ด้าน Left = 39 , Neither = 50 , Right = 147
```{R}
table(survey$Clap)
```
Explore Data with dpylr :
```{R}
eachClap <- c("Left","Neither","Right","NA's" )
countEachClap <- survey %>% dplyr::select(Clap) %>% summarise(Clap = summary(Clap , na.rm = TRUE)) 
detailOfClap <- data.frame(eachClap , countEachClap)
detailOfClap
```
### Team: 024 - Numberone
1.นางสาว ปิยะมน สุดดี Student id : 63130500082

2.นางสาว วารีวัล พงศ์พันธ์ชัยกุล Student id : 63130500105

3.นางสาว สริดา บัวแก้ว Student id : 63130500112

4.นาย สุทธิพงษ์ ชนะมูล Student id : 63130500121

5.นางสาว สุพิชญา หมื่นนุช Student id : 63130500123
