CREATE DATABASE IF NOT EXISTS clase_siete_nov;

USE clase_siete_nov;

CREATE TABLE IF NOT EXISTS equipo(
	id INT AUTO_INCREMENT,
    nombre VARCHAR (45),
    PRIMARY KEY(id)
)ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS personas(
	id INT AUTO_INCREMENT,
    nombressss VARCHAR (45),
    fecha_nacimiento DATETIME,
    equipo_id INT,
    PRIMARY KEY(id)
);

/* 
	ALTER modifica elementos de mi base de datos
    IF NOT EXISTS da error porque espera el nombre de una tabla existente
 */
 
 ALTER TABLE personas;
 
/*	Eliminar el campo equipo_id */
ALTER TABLE personas DROP FOREIGN KEY personas_ibfk_1;
ALTER TABLE personas DROP equipo_id;

/* Agregar un campo llamado equipo_id de tipo entero */
ALTER TABLE personas ADD equipo_id INT;

/* Agregar un indice de clave foranea a mi equipo_id que referencia al id de la tabla equipo */
ALTER TABLE personas ADD CONSTRAINT FOREIGN KEY (equipo_id) REFERENCES equipo(id); 

/* Modificar el campo fecha_ncaimiento de DATETIME a DATE  */
ALTER TABLE personas MODIFY fecha_nacimiento DATE;

/* Modificar el nombre del campo nombressss por el campo nombre con tipo VARCHAR (45) */
ALTER TABLE personas CHANGE nombressss nombre VARCHAR(45);
ALTER TABLE personas CHANGE nombre nombres VARCHAR(45);
INSERT INTO personas (nombre, fecha_nacimiento, equipo_id) VALUES ('hola', null, null);

/* Modificar el motor de personas a InnoDB */
ALTER TABLE personas ENGINE = InnoDB;