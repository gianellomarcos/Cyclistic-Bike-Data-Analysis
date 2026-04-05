CREATE DATABASE TRIPS_2019_DIVVY
GO

USE TRIPS_2019_DIVVY
GO

CREATE TABLE DivvyTrips (
    trip_id INT,
    start_time DATETIME,
    end_time DATETIME,
    bike_id INT,
    trip_duration INT,
    from_station_id INT,
    from_station_name VARCHAR(100),
    to_station_id INT,
    to_station_name VARCHAR(100),
    usertype VARCHAR(20),
    gender VARCHAR(20),
    birthyear INT,
    ride_length_min FLOAT,
    day_of_week INT
)
GO


BULK INSERT DivvyTrips
FROM 'C:\Users\GIANELLO\Downloads\Datos\Cyclistic-Data-Analysis-Project\Divvy_Dataset.csv'
WITH (
    FIELDTERMINATOR = ';',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2
)

SELECT * FROM DivvyTrips
SELECT TOP 50 * FROM DivvyTrips



-- Total de viajes por tipo de usuario (Visual 1)
SELECT 
    usertype,
    COUNT(*) AS total_trips
FROM DivvyTrips
WHERE 
    ride_length_min > 0
GROUP BY 
    usertype
GO



-- Promedio de duración por tipo de usuario (Visual 2)
SELECT 
    usertype,
    ROUND(AVG(ride_length_min), 2) AS avg_duration_min
FROM DivvyTrips
WHERE 
    ride_length_min > 0
GROUP BY 
    usertype
GO



-- Uso por día de la semana (Visual 3)
SELECT 
    usertype,
    day_of_week,
    COUNT(*) AS total_trips
FROM DivvyTrips
WHERE 
    ride_length_min > 0
GROUP BY 
    usertype, 
    day_of_week
ORDER BY 
    usertype, 
    total_trips DESC;
GO



-- Promedio de duración por día (Visual 4)
SELECT 
    usertype,
    day_of_week,
    ROUND(AVG(ride_length_min), 2) AS avg_duration
FROM DivvyTrips
WHERE 
    ride_length_min > 0
GROUP BY 
    usertype,
    day_of_week
ORDER BY 
    avg_duration DESC;
GO



-- Para usar en POWER BI
SELECT 
    usertype,
    day_of_week AS day_order,
    COUNT(*) AS total_trips,
    ROUND(AVG(ride_length_min), 2) AS avg_duration
INTO Trips_Summary
FROM DivvyTrips
WHERE 
    ride_length_min > 0
GROUP BY 
    usertype, 
    day_of_week;
GO

SELECT * FROM Trips_Summary


