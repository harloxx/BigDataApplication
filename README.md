### Big Data Application FINAL PROJECT
This is final project for "Big Data Application" course. This is Team 12 submission. 

### Introduction
It is a comprehensive movie inquiry platform with functions such as movie search and inquiry, review writing and correction, and distributor inquiry

### 2. Tables, Figures and Datas
### 2.1 Tables and Figures
The database consists of Film containing movie information, Genre containing genre information, Country containing country information, Director containing director information, Film_Type containing movie type information, Review containing review information, Distributor_Film containing movie distributor information, and Genre_Film to define relationships. Below is an ER diagram of the database.
![image](https://user-images.githubusercontent.com/79822913/202718218-2d7433d0-237c-4d1d-87c3-8c8b275db4f2.png)


### 2.2 Datas
For data collection, data has been received through the open API from the place in the list below.  
(1) [KMDb - Korean Movie Database] (https://www.kmdb.or.kr/info/api/apiDetail/6)     
(2) [영화진흥위원회 open API] (https://www.kobis.or.kr/kobisopenapi/homepg/apiservice/searchServiceInfo.do?serviceId=searchPeopleList)     
(3) [영화진흥위원회 open API] (https://www.kobis.or.kr/kobisopenapi/homepg/apiservice/searchServiceInfo.do)      

### Before start
You have to install XAMPP to run this code. You can download XAMPP through this link (https://www.apachefriends.org/)

### How to run

1. Move code to C:\xampp\htdocs  
2. Clone code  
```
https://github.com/harloxx/BigDataApplication.git
```
3. Run Apache and MySQL   
![image](https://user-images.githubusercontent.com/79822913/202716599-2c1bf6ab-24d2-4ae1-a2a4-537c9d5615d0.png)
4. Access to localhost:8080/BigDataApplication/index.html    
![image](https://user-images.githubusercontent.com/79822913/202717442-e06508f6-5c5f-4088-ae9f-15fe6c55e990.png)

### SQL Code detail
A table was created using the create table, and PK/FK/Unique settings were added to the column. OpenAPI was called using Spring's WebClient library to collect movie data.    
![image](https://user-images.githubusercontent.com/79822913/202718740-d9f0e4b2-ebf0-4c72-b2d8-9ce0509d7ea1.png)



### PHP code structure    
![image](https://user-images.githubusercontent.com/79822913/202718620-08ed3707-5e2a-4044-870b-fcb3b3702d25.png)    

### Screen Configuration
1. Search for movies and view details  
![image](https://user-images.githubusercontent.com/79822913/202718305-6267eef0-08dd-4b2e-beeb-7d4f79bbcca7.png)      
 
2 Modify movie details    
![image](https://user-images.githubusercontent.com/79822913/202718415-fc512e51-dd63-4074-ad5c-82c513b3b24e.png)       

3. Add Movie     
![image](https://user-images.githubusercontent.com/79822913/202718429-9fd1deb2-c575-4167-812b-201edfe03250.png)       

4. View movie statistics by genre and add genre        
![image](https://user-images.githubusercontent.com/79822913/202718476-7bb96549-0e6b-4cf1-9c26-e537e28d65c6.png)         

5. Write and Modify Review and Rank        
![image](https://user-images.githubusercontent.com/79822913/202718542-31d0d9cd-5374-4f58-bc79-e37cc776e700.png)          

6. View and Modify Distributor list        
![image](https://user-images.githubusercontent.com/79822913/202718567-78751676-da45-4d2f-83cd-5d3ceb68fd09.png)    

