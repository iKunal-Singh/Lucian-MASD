CREATE USER 'auth_user'@'65.0.168.99' IDENTIFIED BY 'Aauth123';

CREATE DATABASE auth;

GRANT ALL PRIVILEGES ON auth.* TO 'auth_user'@'65.0.168.99';

USE auth;

CREATE TABLE user (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	email VARCHAR(255) NOT NULL UNIQUE,
	password VARCHAR(255) NOT NULL
);

INSERT INTO user (email, password) VALUES ('kunal@email.com', 'Admin123')
