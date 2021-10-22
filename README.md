# 024-Marvel VS DC IMDB Dataset
Original Datasets from: [Marvel VS DC IMDB Dataset](https://www.kaggle.com/hetulmehta/marvel-vs-dc-imdb-dataset?fbclid=IwAR3WLj6EXxA3n5rmIOtylgNSzu0qfwTjTtNSFVH4fOPqP2XB_j2wXWBseTQ)

![MarvelDC](https://github.com/sit-2021-int214/024-Marvel-Vs-DC-IMDB/blob/main/PictureResult/GenPop-Marvel-vs-DC-wider-and-taller-crop-web.jpg)

### About's Marvel VS DC IMDB
We looked at some of the major movies in the DC and Marvel universes, and you can answer the question: whose movies are better, DC or Marvel?
This dataset is about's Movie Name , Year , Genre , RunTime , Rating , Director , Actor , Description , IMDB_Score , Metascore , Votes , USA_Gross , Category

### Contents in Datagram
1. `...1` : Sequence of movies (Rename and Change Type)
2. `Movie` : Name of each movie (Rename)
3. `Year` : Year of production started (Cleaning Data and Rename)
4. `Genre` : Movie type (Cleaning Data)
5. `Runtime` : Total screening time of the movie (Change Type and Cleaning Data)
6. `Rating` : Classification of movies (Cleaning Data)
7. `Director` : Film director
8. `Actor` : Actor and Actresses
9. `Description` : Plot
10. `IMDB_Score` : IMDB Score 
11. `Metascore` : Metascore
12. `Votes` : No. of Votes in IMDB
13. `USA_Gross` : Gross collection in USA
14. `Catagory` : Marvel or DC

### Overview 
เป็นการวิเคราะห์ข้อมูลเกี่ยวกับ ภาพยนตร์ ที่มาจากทางค่าย Marvel และ DC โดยเป็นการวิเคราะห์ข้อมูลที่เกี่ยวกับความนิยมของภาพยนตร์ โดยมีการวัดความนิยมจาก คะแนน IMDB Score , Vote , รายได้ที่ได้จากการฉายภาพยนตร์ และอื่นๆ เป็นต้น เพื่อนำมาวิเคราะห์ ความนิยมของภาพยนตร์จากค่ายใดได้รับความนิยมมากกว่ากัน
โดยทางกลุ่มของพวกเราได้ใช้ โปรแกรม R studio เพื่อนำมา Cleaning data และ transformation data ไปจนถึง วิเคราะห์เพื่อหาความสัมพันธ์ของข้อมูลและตั้งสมมติฐาน

### Inspiration
เหตุผลที่เลือกใช้ข้อมูลชุดนี้ เป็นเพราะ เพื่อนๆสมาชิกในกลุ่มชื่นชอบในการดูภาพยนตร์ ของทางค่าย DC และ Marvel เป็นอย่างมาก ทำให้พวกเราเลือกใช้ Dataset ที่เกี่ยวข้องกับ ข้อมูลต่างๆของทั้ง2ค่าย เพื่อความสะดวกในการวิเคราะห์ข้อมูล และได้มีการตรวจสอบข้อมูลเบื้องต้น ก่อนเลือกใช่ชุดข้อมูลนี้ พบว่าข้อมูลชุดนี้ มีการจัดแยกประเภทของข้อมูลได้อย่างน่าสนใจ และ ทำความเข้าใจได้ง่าย จึงเป็นเหตุผลที่ทำให้กลุ่มของพวกเราเลือกใช้ข้อมูลชุดนี้

### Objects
สิ่งที่อยากรู้ :
1. คะแนน IMDB_Scose ค่าสูงสุดของ Marvel และ DC
2. ปี 2021 มีภาพยนต์ทั้งหมดกี่เรื่อง หาค่าเฉลี่ยของเวลาฉายทั้งหมดของปี 2021 
3. ประเภทของภาพยนต์มีอะไรบ้าง และ แต่ละประเภทมีเท่าไหร่
4. ภาพยนต์เรื่องไหนบ้างที่มีเนื้อหาไม่เหมาะสมกับเด็กและเยาวชนที่อายุต่ำกว่า 13 ปี ฝั่ง DC 
5. หาค่าโหวตต่ำสุด และ ผลรวมของทั้ง 2 ค่าย แล้วนำค่าผลรวมของทั้ง 2 ค่ายมาเปรียบเทียบกันว่าค่ายไหนมีผลโหวตมากกว่ากัน
6. มีจำนวนภาพยนต์กี่เรื่องที่มีเวลาฉายต่ำกว่า 100 นาที ทั้งฝั่งของ Marvel และ DC (ยกตัวอย่าง 6 เรื่อง)

### Steps
1. Explore Marvel-Vs-DC IMDB Dataset
2. Data Cleaning and Data Transformation
3. Data Analysis with Descriptive Statistics

### Tools
- R Language
- R Studio Desktop
- Microsoft Excel

## Table of Contents
1. [Data Cleaning and Data Transformation](/Data_Cleaning_and_Data_Transformation.md)
2. [Exploratory Data Analysis](/01.explore.md)
3. [Data Visualization]()

### Important Files in Repository
- [Marvel_DC_imdb.R](./Marvel_DC_imdb.R) : Exploratory Data Analysis
- [Marvel_DC_imdb_Original](./Marvel_DC_imdb_Original.csv): Original Dataset
- [Marvel_DC_imdb_Clean](./MarvelDC_Clean.csv): Clean Dataset

### References
https://www.kaggle.com/hetulmehta/marvel-vs-dc-imdb-dataset?fbclid=IwAR3WLj6EXxA3n5rmIOtylgNSzu0qfwTjTtNSFVH4fOPqP2XB_j2wXWBseTQ

## About Us
งานนี้เป็นส่วนของวิชา INT214 Statistics for Information technology <br/> ภาคเรียนที่ 1 ปีการศึกษา 2564 คณะเทคโนโลยีสารสนเทศ มหาวิทยาลัยเทคโนโลยีพระจอมเกล้าธนบุรี

### Team: 024 - Numberone
| No. | Name              | Student ID   |
|:---:|-------------------|--------------|
|  1  | นางสาว ปิยะมน สุดดี      | 63130500082  |
|  2  | นางสาว วารีวัล พงศ์พันธ์ชัยกุล   | 63130500105  |
|  3  | นางสาว สริดา บัวแก้ว   | 63130500112 |
|  4  | นาย สุทธิพงษ์ ชนะมูล   | 63130500121 |
|  5  | นางสาว สุพิชญา หมื่นนุช   | 63130500123 |

### Instructor
- ATCHARA TRAN-U-RAIKUL
- JATAWAT XIE (Git: [safesit23](https://github.com/safesit23))
