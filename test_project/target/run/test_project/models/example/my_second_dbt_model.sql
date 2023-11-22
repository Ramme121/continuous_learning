

  create or replace view `avian-hangout-404413`.`netflix`.`my_second_dbt_model`
  OPTIONS()
  as -- Use the `ref` function to select from other models

select *
from `avian-hangout-404413`.`netflix`.`my_first_dbt_model`
where id = 1;

