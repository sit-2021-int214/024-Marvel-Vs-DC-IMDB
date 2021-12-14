# Hypothesis testing

### กำหนดโจทย์
```
จำนวนรอบฉายทั้งหมดของฝั่ง DC มี 1026 เรื่อง รอบฉายเฉลี่ย 38.32 นาที ระดับความเชื่อมั่นอยู่ที่ 0.05 ต้องการทดสอบว่าค่าเฉลี่ยของรอบฉายมากกว่า 60 นาทีหรือไม่
```


### Step 0: Assign variables
```
DC$RunTime <- as.integer(DC$RunTime)
DC_XBAR <- mean(DCRuntime) #38.324
DC_N <- length(DCRuntime) #1026
DC_SD <- sqrt(var(DCRuntime)) #26.769
DC_Mue <- 60

```

### Step 1: State the hypothesis

```
Ho : μ <= 60
Ha : μ > 60
```

### Step 2: Level of significance

```
DC_alpha <- 0.05
```

### Step 3: Find x-bar, sd

```
DC_XBAR <- mean(DCRuntime) #38.324
DC_SD <- sqrt(var(DCRuntime)) #26.769
```
Result

```
mean :
sd : 
```

### Step 4: Test statistic
```
tdc <- (DC_XBAR - DC_Mue ) / (DC_SD/sqrt(DC_N)) #-25.935
```
Result
```
t :
```

### Step 5: Finding P-value approach or Critical Value approach
#### P-value approach
```
pdc <- pt(tdc , DC_N - 1) #9.879
```
Result
```
p value :
```

#### Critical Value approach
```
tcridc <- qt(alpha , DC_N-1) #-1.646
```
Result
```
critical :
```

### Step 6: Compare
```
# Using p-value approach
if(pdc < DC_alpha){
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
if(tcridc >= tdc){
  print("Reject HO")
}else{
  print("Access HO")
}
```
Result
```

```
### Step 7: Conclusion
```
p-value approach :
critical approach :
```
