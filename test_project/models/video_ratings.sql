{{ config(materialized='table') }}
select
    Video_ID,
    Genre,
    avg(Ratings) as avg_ratings
from {{ source('netflix', 'stream') }}
group by Video_ID, Genre



/*{{ config(materialized='table') }}

{% macro age_group(Age) %}
    {% if Age < 18 %}
        'Under 18'
    {% elif Age >= 18 and Age < 35 %}
        '18-34'
    {% elif Age >= 35 and Age < 50 %}
        '35-49'
    {% else %}
        '50+'
    {% endif %}
{% endmacro %}

select
    User_ID,
    Age,
    {{ age_group(Age) }} as Age_Group
from {{ source('netflix', 'stream') }}

{{ config(materialized='table') }} defines the materialization type for this model as a table.
The {% macro age_group(Age) %} ... {% endmacro %} block defines a Jinja macro called age_group. 
This macro takes an Age input and categorizes it into different age groups based on the defined
conditions (e.g., Under 18, 18-34, 35-49, 50+).
The select statement retrieves data from the netflix source in the stream schema.
It selects User_ID, Age, and uses the age_group macro to categorize users into age groups based on 
their Age.
This model demonstrates Jinja templating usage by employing a macro to dynamically categorize 
users into age groups based on their ages extracted from the dataset. */
