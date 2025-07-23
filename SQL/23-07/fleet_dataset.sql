CREATE DATABASE Fleet_Management;
USE Fleet_Management;
CREATE TABLE Vehicles(
	vehicle_id INT AUTO_INCREMENT PRIMARY KEY,
    plate_number VARCHAR(20) UNIQUE,
    capacity_tons DECIMAL(5,2),
    region VARCHAR(20)
);

ALTER TABLE Vehicles
ADD model VARCHAR(50);

CREATE TABLE Fuel_logs (
    log_id INT AUTO_INCREMENT PRIMARY KEY,
    vehicle_id INT,
    fuel_date DATE,
    liters_consumed DECIMAL(6,2),
    fuel_cost DECIMAL(10,2),
    FOREIGN KEY (vehicle_id) REFERENCES Vehicles(vehicle_id)
);

CREATE TABLE Daily_Consignments (
    consignment_id INT AUTO_INCREMENT PRIMARY KEY,
    vehicle_id INT,
    consignment_date DATE,
    route VARCHAR(100),
    status VARCHAR(20),
    distance_km INT,
    deliveries INT,
    FOREIGN KEY (vehicle_id) REFERENCES Vehicles(vehicle_id)
);

INSERT INTO Vehicles (plate_number, model, capacity_tons, region) VALUES
('LAG123AB', 'Toyota Hiace', 1.50, 'Lagos'),
('LAG456CD', 'Mitsubishi Fuso', 3.00, 'Lagos'),
('IBA789EF', 'Isuzu NQR', 2.00, 'Ibadan'),
('IBA321GH', 'Mercedes Sprinter', 1.20, 'Ibadan'),
('ABJ654IJ', 'Hyundai Porter', 1.80, 'Abuja'),
('ABJ987KL', 'Nissan Cabstar', 2.50, 'Abuja'),
('LAG159MN', 'Ford Transit', 1.40, 'Lagos'),
('IBA753OP', 'Iveco Daily', 3.50, 'Ibadan'),
('ABJ258QR', 'JAC X200', 1.70, 'Abuja'),
('LAG951ST', 'Volkswagen Crafter', 2.20, 'Lagos'),
('IBA147UV', 'Dongfeng Mini Truck', 1.00, 'Ibadan'),
('ABJ369WX', 'Peugeot Boxer', 1.90, 'Abuja'),
('LAG852YZ', 'Tata Ace', 0.90, 'Lagos'),
('IBA963AA', 'Ashok Leyland Dost', 1.10, 'Ibadan'),
('ABJ741BB', 'Mahindra Supro', 1.30, 'Abuja');

INSERT INTO Fuel_Logs (vehicle_id, fuel_date, liters_consumed, fuel_cost) VALUES
(1, '2025-07-20', 22.5, 19500), 
(1, '2025-07-21', 18.2, 15600), 
(1, '2025-07-22', 20.1, 17400),
(2, '2025-07-20', 35.0, 31500), 
(2, '2025-07-21', 30.0, 27000), 
(2, '2025-07-22', 32.0, 28800),
(3, '2025-07-20', 25.0, 21000), 
(3, '2025-07-21', 22.5, 20250), 
(3, '2025-07-22', 26.1, 23490),
(4, '2025-07-20', 20.0, 18000), 
(4, '2025-07-21', 18.7, 16830), 
(4, '2025-07-22', 19.8, 17820),
(5, '2025-07-20', 24.5, 22050), 
(5, '2025-07-21', 22.0, 19800), 
(5, '2025-07-22', 25.0, 22500),
(6, '2025-07-20', 28.0, 25200), 
(6, '2025-07-21', 26.5, 23850), 
(6, '2025-07-22', 27.3, 24570),
(7, '2025-07-20', 21.5, 19350), 
(7, '2025-07-21', 19.7, 17730), 
(7, '2025-07-22', 22.1, 19890),
(8, '2025-07-20', 34.0, 30600), 
(8, '2025-07-21', 31.2, 28080), 
(8, '2025-07-22', 35.5, 31950),
(9, '2025-07-20', 23.0, 20700), 
(9, '2025-07-21', 21.5, 19350), 
(9, '2025-07-22', 24.8, 22320),
(10, '2025-07-20', 27.0, 24300), 
(10, '2025-07-21', 25.5, 22950), 
(10, '2025-07-22', 28.1, 25290),
(11, '2025-07-20', 19.0, 17100), 
(11, '2025-07-21', 17.5, 15750), 
(11, '2025-07-22', 20.0, 18000),
(12, '2025-07-20', 26.5, 23850), 
(12, '2025-07-21', 24.3, 21870), 
(12, '2025-07-22', 27.0, 24300),
(13, '2025-07-20', 15.0, 13500), 
(13, '2025-07-21', 14.0, 12600), 
(13, '2025-07-22', 16.2, 14580),
(14, '2025-07-20', 17.3, 15570), 
(14, '2025-07-21', 16.1, 14490), 
(14, '2025-07-22', 18.0, 16200),
(15, '2025-07-20', 19.4, 17460), 
(15, '2025-07-21', 18.3, 16470), 
(15, '2025-07-22', 20.2, 18180);

INSERT INTO daily_consignments (vehicle_id, consignment_date, route, status, distance_km, deliveries) VALUES
(1, '2025-07-20', 'Lekki - Ikeja', 'Completed', 45, 12),
(1, '2025-07-21', 'Yaba - VI', 'Completed', 30, 9), 
(1, '2025-07-22', 'Ikeja - Apapa', 'Completed', 38, 10),
(2, '2025-07-20', 'Ajah - Ikeja', 'Completed', 50, 15), 
(2, '2025-07-21', 'VI - Surulere', 'Pending', 35, 0), 
(2, '2025-07-22', 'Ikeja - CMS', 'Completed', 42, 13),
(3, '2025-07-20', 'Ibadan North - East', 'Completed', 28, 8), 
(3, '2025-07-21', 'Challenge - Bodija', 'Completed', 22, 7), 
(3, '2025-07-22', 'Dugbe - Eleyele', 'Completed', 30, 9),
(4, '2025-07-20', 'UI - Iwo Road', 'Completed', 18, 6), 
(4, '2025-07-21', 'Moniya - Gate', 'Cancelled', 0, 0), 
(4, '2025-07-22', 'Bodija - Sango', 'Completed', 21, 7),
(5, '2025-07-20', 'Wuse - Maitama', 'Completed', 25, 9), 
(5, '2025-07-21', 'Garki - Utako', 'Completed', 20, 7), 
(5, '2025-07-22', 'Asokoro - Nyanya', 'Completed', 27, 10),
(6, '2025-07-20', 'Jabi - Airport Rd', 'Completed', 30, 11), 
(6, '2025-07-21', 'Area 1 - Area 10', 'Completed', 26, 8), 
(6, '2025-07-22', 'Lugbe - Wuye', 'Completed', 31, 9),
(7, '2025-07-20', 'Festac - VI', 'Completed', 33, 8), 
(7, '2025-07-21', 'Iyana Ipaja - Maryland', 'Completed', 29, 7), 
(7, '2025-07-22', 'Agege - Ojota', 'Completed', 36, 9),
(8, '2025-07-20', 'Ibadan - Akobo', 'Completed', 38, 12), 
(8, '2025-07-21', 'Ring Rd - Sango', 'Completed', 33, 11), 
(8, '2025-07-22', 'Ojo - UI', 'Completed', 35, 10),
(9, '2025-07-20', 'Abuja - Mararaba', 'Completed', 34, 10), 
(9, '2025-07-21', 'Gwarimpa - Asokoro', 'Completed', 31, 9), 
(9, '2025-07-22', 'Kubwa - Apo', 'Completed', 29, 8),
(10, '2025-07-20', 'Yaba - Lekki', 'Completed', 27, 9), 
(10, '2025-07-21', 'Ikeja - Apapa', 'Completed', 35, 10), 
(10, '2025-07-22', 'CMS - Agege', 'Completed', 38, 12);
