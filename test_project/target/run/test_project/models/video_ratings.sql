
  
    

    create or replace table `avian-hangout-404413`.`netflix`.`video_ratings`
      
    
    

    OPTIONS()
    as (
      
select
    Video_ID,
    Genre,
    avg(Ratings) as avg_ratings
from `avian-hangout-404413`.`netflix`.`stream`
group by Video_ID, Genre
    );
  