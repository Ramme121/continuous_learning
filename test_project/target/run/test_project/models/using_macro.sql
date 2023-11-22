
  
    

    create or replace table `avian-hangout-404413`.`netflix`.`using_macro`
      
    
    

    OPTIONS()
    as (
      /* Using macro */

SELECT 


TRIM(Country) AS trimmed_Country


FROM `avian-hangout-404413`.`netflix`.`stream`
    );
  