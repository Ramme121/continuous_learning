
  
    

    create or replace table `avian-hangout-404413`.`netflix`.`user_session`
      
    
    

    OPTIONS()
    as (
      
select
    User_ID,
    count(distinct Session_ID) as total_sessions,
    avg(Duration_Watched__minutes_) as avg_duration,
    max(Subscription_Status) as subscription_status
from `avian-hangout-404413`.`netflix`.`stream`
group by User_ID
    );
  