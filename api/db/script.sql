CREATE DATABASE IF NOT EXISTS databaseteste;
USE databaseteste;

CREATE TABLE IF NOT EXISTS products (
  id INT(11) AUTO_INCREMENT,
  name VARCHAR(255),
  price DECIMAL(10, 2),
  PRIMARY KEY (id)
);

INSERT INTO products VALUE(0, 'Curso Marketing', 1500);
INSERT INTO products VALUE(0, 'Curso Python', 700);