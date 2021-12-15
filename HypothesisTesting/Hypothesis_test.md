# Hypothesis testing

### กำหนดโจทย์
```
จำนวนรอบฉายทั้งหมดของฝั่ง Marvel มี 274 เรื่อง รอบฉายเฉลี่ย 57 รอบ ระดับความเชื่อมั่นอยู่ที่ 95% ต้องการทดสอบว่าค่าเฉลี่ยของรอบฉายมากกว่า 60 รอบหรือไม่
```

### Step 0: Assign variables
```
MRunTime <- Marvel_Clean$RunTime<- as.integer(Marvel_Clean$RunTime)
M_XBar<-mean(MRunTime)
M_SD<- sqrt(var(MRunTime))
M_N<- length(MRunTime)
Mue <- 60
```

### Step 1: State the hypothesis

```
Ho : μ = 60
Ha : μ != 60
```

### Step 2: Level of significance

```
M_alpha <- 0.05
```

### Step 3: Find x-bar, sd

```
M_XBar<-mean(MRunTime)
M_SD<- sqrt(var(MRunTime))
```
Result

```
mean : 56.13504
sd : 39.71769
```

### Step 4: Test statistic
```
Marvel_t <- (M_XBar - Mue) / (M_SD/sqrt(M_N))
```
Result
```
t : -1.610782
```

### Step 5: Finding P-value approach or Critical Value approach
#### P-value approach
```
Marvel_p <-2*pnorm(Marvel_t)
```
Result
```
p value : 0.1072273
```

#### Critical Value approach
```
Marvel_Critical <- qt(1-M_alpha/2,M_N-1)
```
Result
```
critical : 1.968692
```

### Step 6: Compare
```
# Using p-value approach
if(Marvel_p <= M_alpha){
  print("Reject HO")
}else{
  print("Access HO")
}
```
Result
```
"Access HO"
```
```
# Using critical approach
if(Marvel_t > Marvel_Critical){
  print("Reject HO")
}else{
  print("Access HO")
}
```
Result
```
"Access HO"
```
### Step 7: Conclusion
```
ผลลัพธ์เป็นไปตาม Ho สรุปได้ว่า ค่าเฉลี่ยรอบฉายภาพยนต์จากค่าย Marvel เท่ากับ 60 รอบ
```

