select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      select count(*) as row_count from `avian-hangout-404413`.`netflix`.`user_demographics` where Age >= 0 and Age <= 100
having count(*) = 1
      
    ) dbt_internal_test