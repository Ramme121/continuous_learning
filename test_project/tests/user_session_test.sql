-- Adjusted test to check for exactly 1 row in the user_session model
select count(*) as row_count from {{ ref('user_session') }}
having count(*) = 1
