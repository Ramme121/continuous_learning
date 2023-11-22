{{ config(materialized='table') }}
select
    User_ID,
    count(distinct Session_ID) as total_sessions,
    avg(Duration_Watched__minutes_) as avg_duration,
    max(Subscription_Status) as subscription_status
from {{ source('netflix', 'stream') }}
group by User_ID


/* Purpose and Insights:
Total Sessions per User: The total_sessions metric gives insight into how frequently each user engages 
with the platform. Users with higher session counts might be more active or engaged.

Average Duration Watched: avg_duration provides an average of the minutes users spend watching content. 
It shows the typical duration each user spends per session, potentially indicating user engagement 
or preferences.

Maximum Subscription Status: The subscription_status represents the highest subscription level each 
user has attained. It could give insight into user behavior based on subscription tiers.

This query helps in understanding user behavior, engagement patterns, and subscription status based on 
aggregated metrics per user. It's useful for analyzing user activity and can contribute to insights 
related to user engagement, preferences, and subscription behavior on your streaming platform. */