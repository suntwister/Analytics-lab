-- 1 Total fuel consumption by region

SELECT * FROM vehicles;
SELECT * FROM fuel_logs;

SELECT 
	v.region,
    sum(f.liters_consumed) AS Total_fuel
FROM vehicles v
JOIN fuel_logs f ON v.vehicle_id = f.vehicle_id
GROUP BY v.region;

-- 2 Average deliveries per assignment per region
SELECT * FROM vehicles;
SELECT * FROM daily_consignments;
SELECT 
	v.region AS Region,
    AVG(d.deliveries) AS Avg_deliveries
FROM Vehicles v
JOIN daily_consignments d ON v.vehicle_id = d.vehicle_id
GROUP BY v.region;

-- 3 