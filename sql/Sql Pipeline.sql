CREATE DATABASE my_database;
USE my_database;
CREATE TABLE taxi_data (
    date DATE,
    pickup_hour INT,
    trip_count INT,
    temperature FLOAT,
    temp_c FLOAT,
    humidity FLOAT,
    rain_flag INT,
    holiday_flag INT,
    conditions VARCHAR(50)
);
SELECT COUNT(*) FROM taxi_data;

SELECT AVG(trip_count) AS avg_hourly_demand
FROM taxi_data;

SELECT 
    rain_flag,
    AVG(trip_count) AS avg_demand
FROM taxi_data
GROUP BY rain_flag;

SELECT 
    holiday_flag,
    AVG(trip_count) AS avg_demand
FROM taxi_data
GROUP BY holiday_flag;


SELECT 
    holiday_flag,
    rain_flag,
    AVG(trip_count) AS avg_demand
FROM taxi_data
GROUP BY holiday_flag, rain_flag
ORDER BY avg_demand DESC;

SELECT 
    pickup_hour,
    AVG(trip_count) AS avg_hourly_demand
FROM taxi_data
GROUP BY pickup_hour
ORDER BY avg_hourly_demand DESC;

SELECT 
    pickup_hour,
    AVG(trip_count) AS avg_hourly_demand
FROM taxi_data
GROUP BY pickup_hour
ORDER BY avg_hourly_demand ASC;


SELECT 
    ROUND(
        (MAX(CASE WHEN rain_flag = 0 THEN avg_demand END) -
         MAX(CASE WHEN rain_flag = 1 THEN avg_demand END))
        / MAX(CASE WHEN rain_flag = 0 THEN avg_demand END) * 100
    , 2) AS rain_percent_drop
FROM (
    SELECT rain_flag, AVG(trip_count) AS avg_demand
    FROM taxi_data
    GROUP BY rain_flag
) t;