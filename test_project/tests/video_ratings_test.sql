select count(*) as row_count from {{ ref('video_ratings') }} where avg_ratings >= 0 and avg_ratings <= 5
having count(*) = 1