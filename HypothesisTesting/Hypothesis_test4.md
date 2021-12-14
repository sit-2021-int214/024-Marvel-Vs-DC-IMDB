# Hypothesis testing

### กำหนดโจทย์
```
องค์กร ABC ระบุว่าค่ายหนังที่ได้มาตรฐานจะต้องมีค่าเฉลี่ยของคะแนนภาพยนต์มากกว่า 5 คะแนน จากหนัง 1026 เรื่องจากค่าย DC 
ที่มีค่าเฉลี่ยของคะแนนภาพยนต์เท่ากับ 7.57 sigma=1.15 ที่ระดับความเชื่อมั่น 95%  จงหาว่าได้มาตรฐานตามที่องค์กร ABC ระบุหรือไม่ 
```

### Step 0: Assign variables
```
DC_Mue2 <- 5
DC_XBar2 <- mean(DC$IMDB_Score)
DC_SD2 <- sqrt(var(DC$IMDB_Score)) 
DC_N2 <- length(DC$IMDB_Score)
```

### Step 1: State the hypothesis

```
Ho : μ <= 5
Ha : μ >= 5
```

### Step 2: Level of significance

```
DC_Alpha2 <- 0.05
```

### Step 3: Find x-bar, sd

```
DC_XBar2 <- mean(DC$IMDB_Score)
DC_SD2 <- sqrt(var(DC$IMDB_Score)) 
```
Result

```
mean : 8.030604
sd : 0.7463204
```

### Step 4: Test statistic
```
tDC2 <- (DC_XBar2 - DC_Mue2) / (DC_SD2/sqrt(DC_N2))
```
Result
```
t : 130.0701
```

### Step 5: Finding P-value approach or Critical Value approach
#### P-value approach
```
pDC2 <- pnorm(tDC2) 
```
Result
```
p value : 1
```

#### Critical Value approach
```
critical2 <- qnorm(Marvel_Alpha) 
```
Result
```
critical : -1.644854
```

### Step 6: Compare
```
# Using p-value approach
if(pDC2 <= DC_Alpha2){
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
if(tDC2 <= critical2){
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
p-value approach : "Access HO"
critical approach : "Access HO"
```
