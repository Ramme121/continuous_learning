
select
    Video_ID,
    Genre,
    avg(Ratings) as avg_ratings
from `avian-hangout-404413`.`netflix`.`stream`
group by Video_ID, Genre