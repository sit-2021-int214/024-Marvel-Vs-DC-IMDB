# Hypothesis testing

### กำหนดโจทย์
```
องค์กร ABC ระบุว่าค่ายหนังที่ได้มาตรฐานจะต้องมีค่าเฉลี่ยของคะแนนภาพยต์มากกว่า 5 คะแนน จากหนัง 274 เรื่องจากค่าย marvel 
ที่มีค่าเฉลี่ยของคะแนนภาพยนต์เท่ากับ 7.57 sigma=1.15 ที่ระดับความเชื่อมั่น 95%  จงหาว่าได้มาตรฐานตามที่องค์กร ABC ระบุหรือไม่ 
```

### Step 0: Assign variables
```
Marvel_XBar <- mean(Marvel_Clean$IMDB_Score) 
Marvel_SD <- sqrt(var(Marvel_Clean$IMDB_Score)) 
Marvel_N <- length(Marvel_Clean$IMDB_Score)
```

### Step 1: State the hypothesis

```
Ho : μ <= 5
Ha : μ >= 5
```

### Step 2: Level of significance

```
Marvel_Alpha <- 0.05
```

### Step 3: Find x-bar, sd

```
Marvel_XBar <- mean(Marvel_Clean$IMDB_Score) 
Marvel_SD <- sqrt(var(Marvel_Clean$IMDB_Score)) 
```
Result

```
mean :
sd : 
```

### Step 4: Test statistic
```
t <- (Marvel_XBar - Marvel_Mue) / (Marvel_SD/sqrt(Marvel_N))
```
Result
```
t :
```

### Step 5: Finding P-value approach or Critical Value approach
#### P-value approach
```
tp <- (Marvel_XBar - Marvel_Mue)/(Marvel_SD/sqrt(Marvel_N)-Marvel_N-1)
```
Result
```
p value :
```

#### Critical Value approach
```
critical <- qt(Marvel_Alpha,Marvel_N-1) 
```
Result
```
critical :
```

### Step 6: Compare
```
# Using p-value approach
if(p <= Marvel_Alpha){
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
if(critical >= t ){
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
