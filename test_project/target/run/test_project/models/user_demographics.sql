
  
    

    create or replace table `avian-hangout-404413`.`netflix`.`user_demographics`
      
    
    

    OPTIONS()
    as (
      
select
    User_ID,
    Country,
    Age,
    Gender
from `avian-hangout-404413`.`netflix`.`stream`
    );
  