--create sandbox dataset [where the table will live]
CREATE SCHEMA IF NOT EXISTS `bitcoin-transaction-trends.da_portfolio`
  OPTIONS(description="Portfolio ETL project");

  CREATE OR REPLACE TABLE `da_portfolio.monthly_category_sales`
(
  order_month DATE,
  category    STRING,
  total_revenue NUMERIC,
  order_count   INT64
);

-- ETL in one query
CREATE OR REPLACE TABLE `bitcoin-transaction-trends.da_portfolio.monthly_category_sales` AS
SELECT
  DATE(DATE_TRUNC(pickup_datetime, MONTH)) AS order_month,
  'Taxi Ride'                        AS category,   -- mimic a single SaaS product
  SUM(fare_amount)                   AS total_revenue,
  COUNT(DISTINCT pickup_datetime)    AS order_count  

FROM `bigquery-public-data.new_york_taxi_trips.tlc_yellow_trips_2022`
WHERE pickup_datetime BETWEEN '2022-01-01' AND '2022-12-31'
GROUP BY 1, 2
ORDER BY order_month;
