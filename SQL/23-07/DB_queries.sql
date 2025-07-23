-- 1 Total fuel consumption by region
SELECT 
    v.region,
    SUM(f.liters_consumed) AS total_liters_used
FROM Fuel_Logs f
JOIN Vehicles v ON f.vehicle_id = v.vehicle_id
GROUP BY v.region;
