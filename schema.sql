CREATE TABLE users (
    id CHAR(24) PRIMARY KEY, 
    user_name VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    address VARCHAR(255),
    season_count INT DEFAULT 0,
    phone_number VARCHAR(20),
    status VARCHAR(50),
    role_id INT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- Field profile first
CREATE TABLE field_profile (
    profile_id INT AUTO_INCREMENT PRIMARY KEY,
    profile_name VARCHAR(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    status VARCHAR(50),
    start_date DATETIME,
    end_date DATETIME,
    user_id CHAR(24),
    address VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    area FLOAT,
    CONSTRAINT fk_fieldprofile_user FOREIGN KEY (user_id) REFERENCES users(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE prediction_session (
    session_id INT AUTO_INCREMENT PRIMARY KEY,
    date DATETIME,
    session_name VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    model_name VARCHAR(100),
    duration INT,
    profile_id INT,
    CONSTRAINT fk_session_profile FOREIGN KEY (profile_id) REFERENCES field_profile(profile_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE field_sensor_data (
    `field_sensor_data_id` int NOT NULL AUTO_INCREMENT,
  `avg_rainfall` float DEFAULT NULL,
  `avg_temp` float DEFAULT NULL,
  `soil_moisture` float DEFAULT NULL,
  `soil_temp` float DEFAULT NULL,
  `soil_ph` float DEFAULT NULL,
  `air_moisture` float DEFAULT NULL,
  `solar_mj_m2_day` float DEFAULT NULL,
  `wind_speed` float DEFAULT NULL,
  `year` int DEFAULT NULL,
  `season` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `province` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_id` int DEFAULT NULL,
  `timestamp` datetime DEFAULT CURRENT_TIMESTAMP,
  `session_id` int DEFAULT NULL,
PRIMARY KEY (`field_sensor_data_id`),
  KEY `fk_sensor_profile` (`profile_id`),
  KEY `FK_sensor_predict` (`session_id`),
  CONSTRAINT `FK_sensor_predict` FOREIGN KEY (`session_id`) REFERENCES `prediction_session` (`session_id`),
  CONSTRAINT `fk_sensor_profile` FOREIGN KEY (`profile_id`) REFERENCES `field_profile` (`profile_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE image_bucket (
    img_id INT AUTO_INCREMENT PRIMARY KEY,
    url VARCHAR(255),
    profile_id INT,
    CONSTRAINT fk_image_profile FOREIGN KEY (profile_id) REFERENCES field_profile(profile_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



CREATE TABLE `original_result_log` (
  `or_log_id` int NOT NULL AUTO_INCREMENT,
  `or_yp` float DEFAULT NULL,
  `avg_rainfall` float DEFAULT NULL,
  `avg_temp` float DEFAULT NULL,
  `soil_moisture` float DEFAULT NULL,
  `soil_temp` float DEFAULT NULL,
  `ph` float DEFAULT NULL,
  `air_moisture` float DEFAULT NULL,
  `solar_radiation` float DEFAULT NULL,
  `wind_speed` float DEFAULT NULL,
  `year` int DEFAULT NULL,
  `season` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `session_id` int DEFAULT NULL,
  PRIMARY KEY (`or_log_id`),
  KEY `fk_orlog_session` (`session_id`),
  CONSTRAINT `fk_orlog_session` FOREIGN KEY (`session_id`) REFERENCES `prediction_session` (`session_id`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


