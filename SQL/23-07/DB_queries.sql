-- 1 Total fuel consumption by region

SELECT * FROM vehicles;
SELECT * FROM fuel_logs;

SELECT 
	v.region,
    sum(f.liters_consumed) AS Total_fuel
FROM vehicles v
JOIN fuel_logs f ON v.vehicle_id = f.vehicle_id
GROUP BY v.region;

