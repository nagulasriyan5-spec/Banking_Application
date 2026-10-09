CREATE DATABASE IF NOT EXISTS banking_db;
USE banking_db;

CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(100) NOT NULL UNIQUE,
    password_hash VARCHAR(255) NOT NULL,
    full_name VARCHAR(100) NOT NULL DEFAULT 'Administrator'
);

ALTER TABLE users ADD COLUMN IF NOT EXISTS password_hash VARCHAR(255) NOT NULL DEFAULT '';
ALTER TABLE users ADD COLUMN IF NOT EXISTS full_name VARCHAR(100) NOT NULL DEFAULT 'Administrator';

INSERT INTO users (username, password_hash, full_name)
VALUES ('admin', '$2y$10$bbrbEeC4BH3m35NApobe2uXsmrRtBb3kYos8.sHs0/BE7L6KldnAy', 'Administrator')
ON DUPLICATE KEY UPDATE
    password_hash = VALUES(password_hash),
    full_name = IF(full_name = '', VALUES(full_name), full_name);
-- Demo password: admin123
