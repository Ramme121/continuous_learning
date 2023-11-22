
  
    

    create or replace table `avian-hangout-404413`.`netflix`.`data_cleaning`
      
    
    

    OPTIONS()
    as (
      /* Removing duplicates */

SELECT 
DISTINCT *
FROM `avian-hangout-404413`.`netflix`.`stream`
    );
  