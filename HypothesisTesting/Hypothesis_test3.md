# Hypothesis testing

### กำหนดโจทย์
```
จำนวนรอบฉายทั้งหมดของฝั่ง DC มี 1026 เรื่อง รอบฉายเฉลี่ย 38.32 นาที ระดับความเชื่อมั่นอยู่ที่ 95% ต้องการทดสอบว่าค่าเฉลี่ยของรอบฉายมากกว่า 60 นาทีหรือไม่
```


### Step 0: Assign variables
```
DCRuntime <- as.integer(DC_Clean$RunTime)
DC_XBAR <- mean(DCRuntime) 
DC_N <- length(DCRuntime) 
DC_SD <- sqrt(var(DCRuntime)) 
DC_Mue <- 60
```

### Step 1: State the hypothesis

```
Ho : μ = 60
Ha : μ != 60
```

### Step 2: Level of significance

```
DC_alpha <- 0.05
```

### Step 3: Find x-bar, sd

```
DC_XBAR <- mean(DCRuntime) 
DC_SD <- sqrt(var(DCRuntime))
```
Result

```
mean : 38.324
sd : 26.769
```

### Step 4: Test statistic
```
tDC <- (DC_XBAR - DC_Mue ) / (DC_SD/sqrt(DC_N))
```
Result
```
t : -25.93548
```

### Step 5: Finding P-value approach or Critical Value approach
#### P-value approach
```
pDC <- 2*pnorm(tDC)
```
Result
```
p value : 2.651
```

#### Critical Value approach
```
tCriDC <- qt(1-DC_alpha/2 , DC_N-1)
```
Result
```
critical : 1.962281
```

### Step 6: Compare
```
# Using p-value approach
if(pDC <= DC_alpha){
  print("Reject HO")
}else{
  print("Access HO")
}
```
Result
```
"Reject HO"
```
```
# Using critical approach
if(tDC <= tCriDC ){
  print("Reject HO")
}else{
  print("Access HO")
}

```
Result
```
"Reject HO"
```
### Step 7: Conclusion
```
ผลลัพธ์ปฏิเสธ Ho สรุปได้ว่า ค่าเฉลี่ยรอบฉายภาพยนต์จากค่าย DC ไม่เท่ากับ 60 รอบ
```
