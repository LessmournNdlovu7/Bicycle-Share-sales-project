WITH
  cte AS (
    SELECT
      *
    FROM
      bike_share_yr_0
    UNION
    SELECT
      *
    FROM
      bike_share_yr_1
  )
SELECT
  dteday,
  season,
  c.yr,
  weekday,
  hr,
  rider_type,
  riders,
  COGS,
  riders * price AS revenue,
  riders * price - riders * COGS AS profit
FROM
  cte c
  LEFT JOIN cost_table b ON c.yr = b.yr


