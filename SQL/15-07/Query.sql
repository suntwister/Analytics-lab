-- Total shipments and deliveries summary
SELECT 
    (SELECT COUNT(*) FROM Shipments) AS total_shipments,
    (SELECT COUNT(*) FROM Deliveries) AS total_deliveries;

-- Shows shipment count, average weight, and total weight by region
SELECT 
	region,
	COUNT(shipment_id) AS Total_Shipment,
	AVG(weight_kg) AS Average_weight_kg,
	SUM(weight_kg) AS Total_weight_kg
FROM
	shipments
GROUP BY region
ORDER BY Total_weight_kg DESC;

-- Shipments by status
SELECT
	status,
	COUNT(*) AS Total_shipments
FROM 
	shipments
GROUP BY status
ORDER BY Total_shipments DESC;

-- Daily shipment trends
SELECT 
    shipment_date,
    COUNT(*) AS num_shipments
FROM Shipments
GROUP BY shipment_date
ORDER BY num_shipments DESC;

SELECT 
    s.shipment_id,
    s.shipment_date,
    s.region,
    s.status AS shipment_status,
    d.delivery_date,
    d.delivery_status,
    d.driver_id,
    d.vehicle_id,
    d.route_id
FROM Shipments s
JOIN Deliveries d
ON s.shipment_id = d.shipment_id
ORDER BY s.shipment_date;

-- Driver Performance
SELECT 
    driver_id,
    COUNT(*) AS total_deliveries
FROM Deliveries
GROUP BY driver_id
ORDER BY total_deliveries DESC;

