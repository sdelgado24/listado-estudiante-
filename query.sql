CREATE DATABASE BDEstudiantes;


USE BDEstudiantes;

CREATE TABLE estudiantes (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(255) NOT NULL,
  edad INT NOT NULL,
  email VARCHAR(255) NOT NULL,
  telefono VARCHAR(255) NOT NULL
);



DELIMITER //

CREATE PROCEDURE InsertarEstudiante(
  IN nombre_param VARCHAR(255),
  IN edad_param INT,
  IN email_param VARCHAR(255),
  IN telefono_param VARCHAR(255)
)
BEGIN
  INSERT INTO estudiantes (nombre, edad, email, telefono)
  VALUES (nombre_param, edad_param, email_param, telefono_param);
END //

DELIMITER ;



DELIMITER //

CREATE PROCEDURE ActualizarEstudiante(
  IN id_param INT,
  IN nombre_param VARCHAR(255),
  IN edad_param INT,
  IN email_param VARCHAR(255),
  IN telefono_param VARCHAR(255)
)
BEGIN
  UPDATE estudiantes
  SET nombre = nombre_param, edad = edad_param, email = email_param, telefono = telefono_param
  WHERE id = id_param;
END //

DELIMITER ;



DELIMITER //

CREATE PROCEDURE EliminarEstudiante(
  IN id_param INT
)
BEGIN
  DELETE FROM estudiantes WHERE id = id_param;
END //

DELIMITER ;
