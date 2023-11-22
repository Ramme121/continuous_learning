/* Using macro */

SELECT 
{{ add_trim('Country') }}
FROM {{ source('netflix', 'stream') }}