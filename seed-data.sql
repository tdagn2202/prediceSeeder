
INSERT INTO users (id, user_name, email, created_at, updated_at, address, season_count, phone_number, status, role_id)
VALUES ('64b1a2c3d4e5f67890123458','Nguyễn Thị Anh Thư','thub2203xxx@student.ctu.edu.vn','2025-10-01 16:14:44','2025-10-01 16:14:44','An Giang',0,'555888111','inactive',2),
       ('64b1a2c3d4e5f67890123459','Trương Minh Mẫn','quocb22035xx@student.ctu.edu.vn','2025-10-01 16:14:44','2025-10-01 16:14:44','Unknown',0,'555888111','inactive',3),
       ('64b1a2c3d4e5f6789012345a','Trần Nguyễn Khánh Quốc','manb22035xx@student.ctu.edu.vn','2025-10-01 16:14:44','2025-10-01 16:14:44','Cà Mau',0,'555888111','inactive',3),
       ('68da7fa20ad21dbd42e36c92','Nguyễn Thanh Ngân','nganb2203569@student.ctu.edu.vn','2025-10-01 16:14:44','2025-10-01 16:14:44','Trà Ôn, Vĩnh Long',5,'987654321','active',2),
       ('68da229d45a6ac015821312e','Trần Hải Đăng','contactxx@tdang2202.id.vn','2025-10-02 11:17:06','2025-10-02 11:17:06',NULL,0,NULL,NULL,NULL);


-- Field profiles
INSERT INTO field_profile (profile_id, profile_name, status, start_date, end_date, user_id, address, area)
VALUES (1,'Ruộng Cần Thơ','active','2024-01-01 00:00:00','2024-06-01 00:00:00','68da229d45a6ac015821312e','Cần Thơ Test, , Cần Thơ',100),
       (2,'Ruộng thử nghiệm PR02','completed','2024-05-10 00:00:00','2024-08-25 00:00:00','68da7fa20ad21dbd42e36c92','Trà Ôn, Vĩnh Long',10),
       (3,'Ruộng thử nghiệm PR03','completed','2025-02-15 00:00:00','2025-05-30 00:00:00','68da7fa20ad21dbd42e36c92','An Giang',8.5),
       (4,'Ruộng thử nghiệm PR04','active','2025-07-05 00:00:00','2025-10-25 00:00:00','68da7fa20ad21dbd42e36c92','Unknown',12),
       (35,'Ruộng Vĩnh Long','active','2025-02-20 00:00:00','2025-10-23 00:00:00','68da229d45a6ac015821312e','Detail Addreess, Phường 1, Thành phố Vĩnh Long, Vĩnh Long, , Vĩnh Long',100),
       (36,'Ruộng PR02','active','2025-10-02 00:00:00','2025-10-31 00:00:00','64b1a2c3d4e5f6789012345a','ADĐ, Xã Long An, Huyện Long Hồ, Vĩnh Long',NULL),
       (37,'Ruộng Cà Mau','active','2025-10-09 00:00:00','2025-12-24 00:00:00','68da229d45a6ac015821312e','Detail Addreess, Phường 1, Thành phố Vĩnh Long, Vĩnh Long, , Cà Mau',100),
       (40,'Ruong test a','active','2025-10-09 00:00:00','2025-10-23 00:00:00','64b1a2c3d4e5f67890123458','ADĐ, Phường An Thới, Quận Bình Thủy, Cần Thơ',NULL),
       (41,'Ruộng Hải Đăng 111','active','2025-10-10 00:00:00','2025-10-31 00:00:00','68da7fa20ad21dbd42e36c92','ADĐ, Phường Bình Tuỷ, Quận Bình Thủy, Cần Thơ',NULL),
       (42,'Ruong test a','active','2025-07-01 00:00:00','2025-10-25 00:00:00','68da7fa20ad21dbd42e36c92','ADĐ, Phường 2, Thành phố Vĩnh Long, Vĩnh Long',NULL),
       (44,'Ruộng Hậu Giang','active','2025-10-27 00:00:00','2025-10-30 00:00:00','68da229d45a6ac015821312e','Ấp Hòa Sơn, xã Hòa An, Hậu Giang',57);


-- Sensor data
INSERT INTO field_sensor_data (field_sensor_data_id, avg_rainfall, avg_temp, soil_moisture, soil_temp, soil_ph, air_moisture, solar_mj_m2_day, wind_speed, year, season, province, profile_id, timestamp, session_id)
VALUES (13,230.549,26.3173,0.377424,27.3438,57.3723,80.2295,17.6394,2.11978,2017,'dong xuan','Hau Giang',44,NULL,NULL),
       (14,104.705,27.7728,0.253779,29.798,57.3723,69.9341,20.5577,2.61166,2016,'dong xuan','Hau Giang',44,NULL,NULL),
       (15,985.305,27.5108,0.423972,29.0552,57.3723,83.8436,16.7439,2.35112,2016,'he thu','Hau Giang',44,NULL,NULL),
       (16,91.7973,27.692,0.208677,29.4948,58.3076,71.0488,20.8241,2.4348,2016,'dong xuan','Vinh Long',35,NULL,NULL),
       (17,856.04,27.5237,0.392306,28.8342,58.3076,84.3897,17.2542,2.2829,2016,'he thu','Vinh Long',35,NULL,NULL),
       (18,86.8559,28.4065,0.212812,30.6516,55.6946,65.3464,20.7779,1.87026,2016,'dong xuan','An Giang',1,NULL,NULL),
       (19,725.601,27.8892,0.394784,29.5988,55.6946,81.7663,17.5812,2.53133,2016,'he thu','An Giang',1,NULL,NULL),
       (20,942.49,26.5046,0.432791,27.8828,55.6946,86.1466,14.3219,1.87881,2016,'thu dong','An Giang',1,NULL,NULL),
       (21,83.4616,27.4819,0.227571,29.4941,58.8965,73.3946,20.5533,3.54443,2016,'dong xuan','Soc Trang',1,NULL,NULL),
       (22,922.807,27.6654,0.404853,29.2119,58.8965,83.4339,17.4352,2.67959,2016,'he thu','Soc Trang',1,NULL,NULL),
       (23,985.095,26.3525,0.437948,27.4153,58.8965,87.7311,13.9116,2.64547,2016,'thu dong','Soc Trang',1,NULL,NULL),
       (24,82.393,27.4161,0.181944,29.2531,58.6357,74.0078,19.5536,3.16889,2016,'dong xuan','Ben Tre',1,NULL,NULL),
       (25,753.91,27.6557,0.377597,28.9715,58.6357,84.2855,18.4741,2.47579,2016,'he thu','Ben Tre',1,NULL,NULL),
       (26,964.825,26.4008,0.417558,27.3333,58.6357,88.8699,14.1045,2.20039,2016,'thu dong','Ben Tre',1,NULL,NULL),
       (27,177.524,26.4923,0.307344,27.5319,58.6357,80.7868,17.1909,2.61031,2017,'dong xuan','Ben Tre',1,NULL,NULL),
       (28,1011.53,27.8065,0.432593,29.6499,58.0493,83.4613,17.7256,2.90438,2016,'he thu','Ca Mau',37,NULL,NULL),
       (29,1022.4,26.4203,0.457657,27.6448,58.0493,87.5812,12.3817,3.04919,2016,'thu dong','Ca Mau',37,NULL,NULL),
       (30,253.202,26.575,0.381765,28.0179,58.0493,80.1212,15.6469,3.05467,2017,'dong xuan','Ca Mau',37,NULL,NULL),
       (31,84.4772,27.9367,0.220749,29.9581,54.4115,68.5726,20.6428,2.22724,2016,'dong xuan','Can Tho',1,NULL,NULL),
       (32,830.193,27.6466,0.401117,29.1941,54.4115,83.1451,16.9187,2.46054,2016,'he thu','Can Tho',1,NULL,NULL),
       (33,226.054,26.3066,0.355586,27.2902,54.4115,80.6906,17.9454,1.8037,2017,'dong xuan','Can Tho',1,NULL,NULL),
       (34,119.18,27.6966,0.238063,29.9082,58.3408,72.3609,20.4567,3.61564,2016,'dong xuan','Bac Lieu',1,NULL,NULL),
       (35,1033.07,27.7453,0.417719,29.4909,58.3408,83.0901,17.1598,2.76294,2016,'he thu','Bac Lieu',1,NULL,NULL),
       (36,1026.18,26.3911,0.447388,27.5666,58.3408,87.2352,13.7335,2.80626,2016,'thu dong','Bac Lieu',1,NULL,NULL),
       (37,221.006,26.5345,0.36533,27.8487,58.3408,79.5044,17.5491,3.03178,2017,'dong xuan','Bac Lieu',1,NULL,NULL);


-- Images
INSERT INTO image_bucket (img_id, url, profile_id)
VALUES (7,'https://res.cloudinary.com/dndkucyhf/image/upload/v1759382285/Predice/ro180ot84ie634kebnco.jpg',35),
       (8,'https://res.cloudinary.com/dndkucyhf/image/upload/v1759382354/Predice/a0q0gogefmrhafca51re.jpg',36),
       (13,'https://res.cloudinary.com/dndkucyhf/image/upload/v1760025625/Predice/twu57uvsjcfe5r3peh9c.jpg',37),
       (14,'https://res.cloudinary.com/dndkucyhf/image/upload/v1760025627/Predice/wxcqtqae0sofstilw4ew.jpg',37),
       (15,'https://res.cloudinary.com/dndkucyhf/image/upload/v1760025628/Predice/qlzlzhxedxq4thkiausi.jpg',37),
       (16,'https://res.cloudinary.com/dndkucyhf/image/upload/v1760071949/Predice/pbap42oebckxatapkebi.jpg',40),
       (19,'https://res.cloudinary.com/dndkucyhf/image/upload/v1760112981/Predice/s0lb7txqy08gp5npyejl.jpg',42),
       (20,'https://res.cloudinary.com/dndkucyhf/image/upload/v1760112982/Predice/qjuonp28mcwintcuwddd.jpg',42),
       (21,'https://res.cloudinary.com/dndkucyhf/image/upload/v1760112983/Predice/kiqljlex6flqjr9dlpzt.jpg',42),
       (22,'https://res.cloudinary.com/dndkucyhf/image/upload/v1760283116/Predice/v31rpmkbgzy9ab46uqzi.jpg',1),
       (39,'https://res.cloudinary.com/dndkucyhf/image/upload/v1761469843/Predice/zcenuzvnjbhjd1fsianp.jpg',1),
       (40,'https://res.cloudinary.com/dndkucyhf/image/upload/v1761473180/Predice/rrtylcrogizcbbpevmaa.jpg',1),
       (45,'https://mjnmcnijbjrzhrutvlfd.supabase.co/storage/v1/object/public/predice_files/Predice/Sentinel2_Multispectral_0.tif',35),
       (46,'https://res.cloudinary.com/dndkucyhf/image/upload/v1761581674/Predice/c2iyykmjs4fgft2l3srx.jpg',44),
       (50,'https://mjnmcnijbjrzhrutvlfd.supabase.co/storage/v1/object/public/predice_files/Predice/Sentinel2_Multispectral_0.tif',1),
       (51,'https://mjnmcnijbjrzhrutvlfd.supabase.co/storage/v1/object/public/predice_files/Predice/Sentinel2_Multispectral_1.tif',35);

-- Prediction session
INSERT INTO prediction_session (session_id, date, session_name, model_name, duration, profile_id)
VALUES (135,'2025-10-28 04:21:09','Session 01','rice-yield-model-v1',NULL,1),
       (136,'2025-10-28 07:28:08','Session 02','rice-yield-model-v1',NULL,35);
-- Original result log


