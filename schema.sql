CREATE TABLE role (
    role_id INT AUTO_INCREMENT PRIMARY KEY,
    role_title VARCHAR(100) NOT NULL,
    role_desc TEXT
);

CREATE TABLE users (
    id CHAR(24) PRIMARY KEY, -- MongoDB ObjectId
    user_name VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    address VARCHAR(255),
    season_count INT DEFAULT 0,
    phone_number VARCHAR(20),
    status VARCHAR(50),
    role_id INT,
    FOREIGN KEY (role_id) REFERENCES role(role_id)
);

CREATE TABLE list_contact (
    contact_item_id INT AUTO_INCREMENT PRIMARY KEY,
    contact_content VARCHAR(255),
    user_id CHAR(24),
    FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE expert_list (
    el_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id CHAR(24),
    FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE field_general_data (
    field_gen_data_id INT AUTO_INCREMENT PRIMARY KEY,
    location VARCHAR(255),
    area FLOAT
);

CREATE TABLE field_profile (
    profile_id INT AUTO_INCREMENT PRIMARY KEY,
    profile_name VARCHAR(150),
    status VARCHAR(50),
    start_date DATETIME,
    end_date DATETIME,
    field_gen_data_id INT,
    user_id CHAR(24),
    FOREIGN KEY (field_gen_data_id) REFERENCES field_general_data(field_gen_data_id),
    FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE field_sensor_data (
    field_sensor_data_id INT AUTO_INCREMENT PRIMARY KEY,
    avg_rainfall FLOAT,
    pesticide_ton FLOAT,
    avg_temp FLOAT,
    area FLOAT,
    profile_id INT,
    FOREIGN KEY (profile_id) REFERENCES field_profile(profile_id)
);

CREATE TABLE image_bucket (
    img_id INT AUTO_INCREMENT PRIMARY KEY,
    url VARCHAR(255),
    profile_id INT,
    FOREIGN KEY (profile_id) REFERENCES field_profile(profile_id)
);

CREATE TABLE prediction_session (
    session_id INT AUTO_INCREMENT PRIMARY KEY,
    date DATETIME,
    model_name VARCHAR(100),
    duration INT,
    profile_id INT,
    FOREIGN KEY (profile_id) REFERENCES field_profile(profile_id)
);

CREATE TABLE original_result_log (
    or_log_id INT AUTO_INCREMENT PRIMARY KEY,
    or_log_content TEXT,
    date DATETIME,
    session_id INT,
    FOREIGN KEY (session_id) REFERENCES prediction_session(session_id)
);

CREATE TABLE analyzed_result_log (
    ar_log_id INT AUTO_INCREMENT PRIMARY KEY,
    ar_income FLOAT,
    ar_log_content TEXT,
    date DATETIME,
    session_id INT,
    FOREIGN KEY (session_id) REFERENCES prediction_session(session_id)
);

CREATE TABLE feedback (
    feedback_id INT AUTO_INCREMENT PRIMARY KEY,
    feedback_content TEXT,
    date DATETIME,
    vote INT,
    user_id CHAR(24),
    ar_log_id INT,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (ar_log_id) REFERENCES analyzed_result_log(ar_log_id)
);
