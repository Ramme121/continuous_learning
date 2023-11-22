select count(*) as row_count from {{ ref('user_demographics') }} where Age >= 0 and Age <= 100
having count(*) = 1