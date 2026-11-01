-- SQL Server; rental-only query needs no missing cost table.
;WITH rentals AS (
    SELECT * FROM bike_share_yr_0
    UNION ALL
    SELECT * FROM bike_share_yr_1
)
SELECT yr, season, weekday, hr, rider_type, SUM(riders) AS riders
FROM rentals GROUP BY yr, season, weekday, hr, rider_type;
