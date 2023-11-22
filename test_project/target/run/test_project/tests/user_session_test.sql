select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      -- Adjusted test to check for exactly 1 row in the user_session model
select count(*) as row_count from `avian-hangout-404413`.`netflix`.`user_session`
having count(*) = 1
      
    ) dbt_internal_test