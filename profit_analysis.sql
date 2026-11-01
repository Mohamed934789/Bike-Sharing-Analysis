-- Optional. Supply verified price and cost_per_ride for each year first.
-- No fabricated cost assumptions are provided.
IF EXISTS (SELECT yr FROM bike_share_yr_0 UNION SELECT yr FROM bike_share_yr_1
           EXCEPT SELECT yr FROM cost_table)
    THROW 50001, 'Missing annual cost rows; provide verified cost assumptions', 1;
;WITH rentals AS (SELECT * FROM bike_share_yr_0 UNION ALL SELECT * FROM bike_share_yr_1)
SELECT r.*, r.riders*c.price AS revenue,
       r.riders*(c.price-c.cost_per_ride) AS profit
FROM rentals r JOIN cost_table c ON r.yr=c.yr;
