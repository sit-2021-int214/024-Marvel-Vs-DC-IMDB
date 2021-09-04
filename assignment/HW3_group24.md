1.จากข้อมูลใน cats เป็นการบอกรายละเอียดข้อมูลเพศของแมวว่า แมวเพศหญิงมี 47 ตัว และ เพศชายมี 97 ตัว

factor(cats$Sex)
gender <- factor(cats$Sex)
summary(gender)

Explore Data with dpylr :
```{R}
Code here
```
2.จากข้อมูลใน cats  เป็นการบอกค่าสูงสุดของ Body weight ของแมวทั้งเพศชาย และ หญิง = 3.9

max(cats$Bwt)

Explore Data with dpylr :
```{R}
Code here
```

3.จากข้อมูลใน cats  เป็นการบอกค่าต่ำสุดของ Heart weight ของแมวทั้งเพศชาย และ หญิง = 6.3

min(cats$Hwt)

Explore Data with dpylr :
```{R}
Code here
```

4.จากข้อมูลใน survey เป็นการบอกรายละเอียดของการสูบบุหรี่ว่ามีระดับไหนบ้าง Heavy = 11 , Never = 189 , Occas = 19 , Regul=17 , NA's = 1

factor(survey$Smoke)
data <- factor(survey$Smoke)
summary(data)

Explore Data with dpylr :
```{R}
Code here
```

5.จากข้อมูลใน survey เป็นการบอกว่ามีใครถนัดด้านซ้าย ด้านขวา และ ไม่ถนัดทั้ง 2 ด้าน Left = 39 , Neither = 50 , Right = 147

table(survey$Clap)

Explore Data with dpylr :
```{R}
Code here
```

