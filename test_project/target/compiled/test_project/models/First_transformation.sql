

WITH ALL_DATA AS
(
    SELECT 
    Country,
    Location,
    SUM(Interaction_Events) AS Interaction_Events
    FROM `avian-hangout-404413`.`netflix`.`stream`
    GROUP BY Location,Country
)

SELECT *,
Country || "-"|| Location AS Country_Location
FROM ALL_DATA