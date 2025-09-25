-- Roles
INSERT INTO role (role_title, role_desc) VALUES
  ('Admin', 'System administrator'),
  ('Expert', 'Agricultural expert'),
  ('Farmer', 'Registered farmer');

-- Users
INSERT INTO users (id, user_name, email, address, season_count, phone_number, status, role_id) VALUES
  ('64b1a2c3d4e5f67890123456', 'Trần Hải Đăng', 'contact@tdang2202.id.vn', 'Ấp Hòa Sơn, Xã Hòa An, Cần Thơ', 2, '123456789', 'active', 1),
  ('64b1a2c3d4e5f67890123457', 'Nguyễn Thanh Ngân', 'nganb2203569@student.ctu.edu.vn', 'Trà Ôn, Vĩnh Long', 5, '987654321', 'active', 2),
  ('64b1a2c3d4e5f67890123458', 'Nguyễn Thị Anh Thư', 'thub2203xxx@student.ctu.edu.vn', 'An Giang', 0, '555888111', 'inactive', 2),
  ('64b1a2c3d4e5f67890123459', 'Trương Minh Mẫn', 'quocb22035xx@student.ctu.edu.vn', 'Unknown', 0, '555888111', 'inactive', 3),
  ('64b1a2c3d4e5f6789012345a', 'Trần Nguyễn Khánh Quốc', 'manb22035xx@student.ctu.edu.vn', 'Cà Mau', 0, '555888111', 'inactive', 3);


-- Contacts
INSERT INTO list_contact (contact_content, user_id) VALUES
  ('alice_phone_1', '64b1a2c3d4e5f67890123456'),
  ('alice_email_2', '64b1a2c3d4e5f67890123456'),
  ('bob_whatsapp', '64b1a2c3d4e5f67890123457');

-- Expert list
INSERT INTO expert_list (user_id) VALUES
  ('64b1a2c3d4e5f67890123457'),
  ('64b1a2c3d4e5f67890123458');

-- General field data
INSERT INTO field_general_data (location, area) VALUES
  ('North Field', 5.2),
  ('East Field', 10.0);

-- Field profiles
INSERT INTO field_profile (profile_name, status, start_date, end_date, field_gen_data_id, user_id) VALUES
    ('Vụ Đông - Xuân', 'active', '2024-01-01', '2024-06-01', 1, '64b1a2c3d4e5f67890123456'),
    ('Vụ Hè - Thu', 'completed', '2023-05-01', '2023-09-30', 1, '64b1a2c3d4e5f67890123457'),
    ('Vụ Thu - Đông', 'completed', '2022-09-15', '2023-01-15', 2, '64b1a2c3d4e5f67890123458'),
    ('Vụ Xuân', 'active', '2024-02-01', '2024-05-30', 2, '64b1a2c3d4e5f67890123459'),
    ('Vụ Mùa', 'planned', '2025-07-01', '2025-11-01', 1, '64b1a2c3d4e5f6789012345a');

-- Sensor data
INSERT INTO field_sensor_data (avg_rainfall, pesticide_ton, avg_temp, area, profile_id) VALUES
    (120.5, 1.2, 28.3, 5.2, 1),
    (80.0, 0.8, 26.1, 10.0, 2),
    (95.3, 1.0, 27.5, 7.5, 3),
    (110.0, 1.5, 29.2, 6.0, 4),
    (130.7, 1.8, 30.1, 8.0, 5),
    (75.2, 0.6, 25.8, 9.0, 1),
    (140.0, 2.0, 31.0, 6.8, 2),
    (90.5, 0.9, 27.0, 7.2, 3),
    (100.3, 1.3, 28.5, 5.5, 4),
    (85.0, 0.7, 26.8, 10.5, 5),
    (115.5, 1.6, 29.7, 8.3, 1),
    (105.0, 1.2, 28.9, 7.7, 2),
    (125.8, 1.9, 30.5, 6.4, 3),
    (70.0, 0.5, 25.5, 9.8, 4),
    (135.0, 2.1, 31.5, 5.9, 5),
    (82.3, 0.8, 26.4, 8.1, 1),
    (98.7, 1.1, 27.9, 7.0, 2),
    (118.2, 1.7, 29.9, 6.7, 3),
    (145.0, 2.3, 32.0, 5.4, 4),
    (92.5, 1.0, 27.2, 9.3, 5);

-- Images
INSERT INTO image_bucket (url, profile_id) VALUES
  ('http://example.com/image1.jpg', 1),
  ('http://example.com/image2.jpg', 2);

-- Prediction session
INSERT INTO prediction_session (date, model_name, duration, profile_id) VALUES
  ('2024-06-01 10:00:00', 'YieldPredictV1', 45, 1),
  ('2023-10-15 15:30:00', 'SoilHealthAI', 30, 2),
  ('2024-07-10 08:15:00', 'YieldPredictV1', 40, 1),
  ('2024-08-05 14:20:00', 'PestDetectAI', 25, 2),
  ('2024-09-12 09:45:00', 'SoilHealthAI', 35, 1),
  ('2024-10-01 16:10:00', 'YieldPredictV2', 50, 2),
  ('2024-11-22 11:30:00', 'ClimateImpactAI', 20, 1),
  ('2024-12-03 07:50:00', 'PestDetectAI', 30, 2),
  ('2025-01-15 13:00:00', 'YieldPredictV1', 55, 1),
  ('2025-02-09 10:25:00', 'SoilHealthAI', 40, 2),
  ('2025-03-21 15:40:00', 'PestDetectAI', 28, 1),
  ('2025-04-18 08:05:00', 'ClimateImpactAI', 33, 2),
  ('2025-05-06 12:45:00', 'YieldPredictV2', 47, 1),
  ('2025-06-19 09:20:00', 'SoilHealthAI', 36, 2),
  ('2025-07-25 14:55:00', 'YieldPredictV1', 42, 1),
  ('2025-08-30 11:10:00', 'PestDetectAI', 27, 2),
  ('2025-09-14 16:35:00', 'ClimateImpactAI', 31, 1),
  ('2025-10-28 07:40:00', 'SoilHealthAI', 39, 2),
  ('2025-11-11 13:15:00', 'YieldPredictV2', 52, 1),
  ('2025-12-20 10:50:00', 'PestDetectAI', 26, 2),
  ('2026-01-08 15:05:00', 'ClimateImpactAI', 34, 1),
  ('2026-02-17 09:30:00', 'YieldPredictV1', 46, 2);

-- Original result log
INSERT INTO original_result_log (or_log_content, date, session_id) VALUES
  ('Original analysis log for session 1', '2024-06-01 10:10:00', 1),
  ('Raw results for session 2', '2023-10-15 15:40:00', 2),
  ('Original soil quality data collected', '2024-07-10 08:25:00', 3),
  ('Initial pest detection scan', '2024-08-05 14:30:00', 4),
  ('Nutrient baseline report', '2024-09-12 09:55:00', 5),
  ('Yield estimate calculations', '2024-10-01 16:20:00', 6),
  ('Climate forecast integration', '2024-11-22 11:40:00', 7),
  ('Raw pest imagery collected', '2024-12-03 08:00:00', 8),
  ('Session log: YieldPredict run', '2025-01-15 13:10:00', 9),
  ('Soil sensor sync complete', '2025-02-09 10:35:00', 10),
  ('Early pest anomaly detected', '2025-03-21 15:50:00', 11),
  ('Climate model raw import', '2025-04-18 08:15:00', 12),
  ('Yield V2 prediction cycle log', '2025-05-06 12:55:00', 13),
  ('Raw nitrogen balance analysis', '2025-06-19 09:30:00', 14),
  ('Yield metrics collected', '2025-07-25 15:05:00', 15),
  ('Raw pest monitoring batch', '2025-08-30 11:20:00', 16),
  ('Original climate anomaly report', '2025-09-14 16:45:00', 17),
  ('Soil sample sync log', '2025-10-28 07:50:00', 18),
  ('Yield V2 preliminary results', '2025-11-11 13:25:00', 19),
  ('Raw pest field report', '2025-12-20 11:00:00', 20),
  ('Climate dataset import', '2026-01-08 15:15:00', 21),
  ('Yield baseline analysis', '2026-02-17 09:40:00', 22);
  

-- Analyzed Result Log
INSERT INTO analyzed_result_log (ar_income, ar_log_content, date, session_id) VALUES
  (5000.00, 'Analyzed income prediction', '2024-06-01 10:15:00', 1),
  (3000.00, 'Yield forecast complete', '2023-10-15 15:45:00', 2),
  (4200.50, 'Soil quality analysis refined', '2024-07-10 08:40:00', 3),
  (3800.75, 'Pest detection finalized', '2024-08-05 14:45:00', 4),
  (6100.20, 'Nutrient optimization results', '2024-09-12 10:10:00', 5),
  (7000.00, 'Final yield estimation generated', '2024-10-01 16:35:00', 6),
  (5600.30, 'Climate forecast impact calculated', '2024-11-22 11:55:00', 7),
  (2900.40, 'Pest imagery analysis completed', '2024-12-03 08:20:00', 8),
  (6800.00, 'YieldPredict cycle analyzed', '2025-01-15 13:25:00', 9),
  (3100.10, 'Soil sensor fusion complete', '2025-02-09 10:50:00', 10),
  (4500.75, 'Pest anomaly analysis delivered', '2025-03-21 16:05:00', 11),
  (7200.25, 'Climate model comparison done', '2025-04-18 08:30:00', 12);

-- Feedback
INSERT INTO feedback (feedback_content, date, vote, user_id, ar_log_id) VALUES
  ('Great prediction accuracy!', '2024-06-02 09:00:00', 5, '64b1a2c3d4e5f67890123456', 1),
  ('Needs improvement on soil health data.', '2023-10-16 11:00:00', 3, '64b1a2c3d4e5f67890123457', 2);

