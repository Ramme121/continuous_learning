select count(*) as row_count from `avian-hangout-404413`.`netflix`.`user_demographics` where Age >= 0 and Age <= 100
having count(*) = 1