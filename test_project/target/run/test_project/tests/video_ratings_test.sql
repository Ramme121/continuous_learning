select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      select count(*) as row_count from `avian-hangout-404413`.`netflix`.`video_ratings` where avg_ratings >= 0 and avg_ratings <= 5
having count(*) = 1
      
    ) dbt_internal_test