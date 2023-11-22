{{ config(materialized='table') }}
select
    User_ID,
    Country,
    Age,
    Gender
from {{ source('netflix', 'stream') }}




/*Insights:
User Attributes: This query likely retrieves key attributes of users interacting with the Netflix data, 
such as their User_ID, Country, Age, and Gender.

Data Exploration: It might serve as an initial exploration of user demographics or profiling, 
providing a foundational dataset for further analysis or modeling within your dbt project.

Materialization: The directive {{ config(materialized='table') }} ensures that the result set 
from this query is stored persistently as a table in your database, enabling easy access and 
reusability for downstream operations.

Overall, this query likely serves as a foundational step to extract essential user-related 
information from the stream source table in the netflix schema and store it as a separate table 
for use in subsequent data transformations or analyses within your dbt project.*/