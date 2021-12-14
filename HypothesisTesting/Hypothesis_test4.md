# Hypothesis testing

### กำหนดโจทย์
```
องค์กร ABC ระบุว่าค่ายหนังที่ได้มาตรฐานจะต้องมีค่าเฉลี่ยของคะแนนภาพยต์มากกว่า 5 คะแนน จากหนัง 1026 เรื่องจากค่าย DC 
ที่มีค่าเฉลี่ยของคะแนนภาพยนต์เท่ากับ 7.57 sigma=1.15 ที่ระดับความเชื่อมั่น 95%  จงหาว่าได้มาตรฐานตามที่องค์กร ABC ระบุหรือไม่ 
```

### Step 0: Assign variables
```
DC_Mue <- 5
mean(DC$RunTime) 
sqrt(var(DC$RunTime)) 
length(DC$RunTime)
```

### Step 1: State the hypothesis

```
Ho : μ <= 5
Ha : μ >= 5
```

### Step 2: Level of significance

```
DC_Alpha <- 0.05
```

### Step 3: Find x-bar, sd

```
mean(DC$RunTime) 
sqrt(var(DC$RunTime)) 
```
Result

```
mean :
sd : 
```

### Step 4: Test statistic
```
tdc2 <- (DC_XBar - DC_Mue) / (DC_XBar/sqrt(DC_N))
```
Result
```
t :
```

### Step 5: Finding P-value approach or Critical Value approach
#### P-value approach
```
pdc2 <- (Marvel_XBar - Marvel_Mue)/(Marvel_SD/sqrt(Marvel_N)-Marvel_N-1)
```
Result
```
p value :
```

#### Critical Value approach
```
critical2 <- qt(Marvel_Alpha,Marvel_N-1) 
```
Result
```
critical :
```

### Step 6: Compare
```
# Using p-value approach
if(pdc2 <= DC_Alpha){
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
if(critical2 >= tdc2){
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
