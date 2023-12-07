IF OBJECT_ID('Sleep_health_and_lifestyle_dataset') IS NOT NULL DROP TABLE Sleep_health_and_lifestyle_dataset

CREATE TABLE Sleep_health_and_lifestyle_dataset
([Person ID] NVARCHAR(200),     
   [Gender]   varchar  (374) ,   
   [Age]    nvarchar  (374)  ,    
   [Occupation]   varchar  (374)  ,   
  [Sleep Duratio] nvarchar  (374)   ,  
  [Quality of Sleep]  nvarchar ( 374) ,    
  [Physical Activity Level] nvarchar ( 374)  ,   
   [Stress Level]  nvarchar  (374)     ,
   [BMI Category]   varchar   (374)   ,
  [Blood Pressure]  varchar   (374)   ,  
   [Heart Rate]  nvarchar  (250)   ,  
   [Daily Steps]  nvarchar (250)  ,  
  [Sleep Disorder]   nvarchar (374)  ,  
  )

select * FROM Sleep_health_and_lifestyle_dataset

-- Step 2: Import the Data

BULK INSERT Sleep_health_and_lifestyle_dataset
FROM "D:\My_project\AMIT ANACONDA\EXCEL FILES\Sleep_health_and_lifestyle_dataset.csv"
WITH ( FORMAT='CSV');

SELECT * FROM Sleep_health_and_lifestyle_dataset

SELECT @@SERVERNAME AS 'DESKTOP-E7HD1L7\DODA2000'

SELECT SUSER_SNAME() AS 'ahmedd10'

ALTER LOGIN [ahmedd10] WITH PASSWORD = '101020';




select * from Sleep_health_and_lifestyle_dataset
where [Person ID] between 1 and 10 
and [Occupation] = 'Software Engineer'