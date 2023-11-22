/* Removing duplicates */

SELECT 
DISTINCT *
FROM {{ source('netflix', 'stream') }}


