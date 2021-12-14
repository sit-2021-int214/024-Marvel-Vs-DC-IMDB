# Hypothesis testing

### กำหนดโจทย์
```
จำนวนรอบฉายทั้งหมดของฝั่ง Marvel มี 274 เรื่อง รอบฉายเฉลี่ย 57 นาที ระดับความเชื่อมั่นอยู่ที่ 0.05 ต้องการทดสอบว่าค่าเฉลี่ยของรอบฉายมากกว่า 60 นาทีหรือไม่
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
Ho : μ <= 60
Ha : μ > 60
```

### Step 2: Level of significance

```
alpha <- 0.05
```

### Step 3: Find x-bar, sd

```
M_XBar<-mean(MRunTime)
M_SD<- sqrt(var(MRunTime))
```
Result

```
mean :
sd : 
```

### Step 4: Test statistic
```
t_testing <- (M_XBar - Mue) / (M_SD/sqrt(M_N))
```
Result
```
t :
```

### Step 5: Finding P-value approach or Critical Value approach
#### P-value approach
```
pmarvel <- pt(t_testing,M_N - 1)
```
Result
```
p value :
```

#### Critical Value approach
```
criticalmarvel <- qt(alpha ,M_N - 1)
```
Result
```
critical :
```

### Step 6: Compare
```
# Using p-value approach
if(pmarvel < alpha){
  print("Reject HO")
}else{
  print("Access HO")
}
```
Result
```

```
```
# Using critical approach
if(criticalmarvel > t_testing){
  print("Reject HO")
}else{
  print("Access HO")
}
```
### Step 7: Conclusion
```
p-value approach :
critical approach :
```
