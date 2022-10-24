CREATE DATABASE damdaw; /* CREAR BASE DE DATOS (POSIBLE ERROR)*/

CREATE DATABASE IF NOT EXISTS damdaw; /* CREAR BASE DE DATOS SI NO EXISTE (NO ERROR) */

DROP DATABASE damdaw; /* ELIMINAR BASE DE DATOS (POSIBLE ERROR) */

DROP DATABASE IF EXISTS damdaw; /* ELIMINAR BASE DE DATOS (NO ERROR) */

USE damdaw;

/* CREA TABLA CON INDICES (columnas):
1. id con su definicion completa
2. nombre con su tipo, espacio disponible y no nulo
3. matricula con su tipo, espacio disponible y no nulo
 */
CREATE TABLE IF NOT EXISTS alumnos(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(15) NOT NULL,
    matricula VARCHAR(15) NOT NULL UNIQUE
);

/* Eliminar tabla alumnos en caso de estar creada */
DROP TABLE IF EXISTS alumnos;

/* Cambiar el nombre de la tabla antigua a la tabla nueva */
RENAME TABLE alumnos TO alumnosDAMDAW;

/* Introducir un campo llamado apellido dentro de la tabla alumnosdamdaw y despudes de nombre */
ALTER TABLE alumnosdamdaw ADD apellido VARCHAR(20) NOT NULL AFTER nombre;

/* Eliminar columna apellido dentro de la tabla alumnosdamdaw */
ALTER TABLE alumnosdamdaw DROP apellido;

/* Cambiar nombre de tabla antigua a tabla nueva */
ALTER TABLE alumnosdamdaw RENAME alumnos;

/* Crear campo dni sobre la tabla alumnos (si no especifico, se pone al final) */
ALTER TABLE alumnos ADD dni VARCHAR(10);

/* Crear un indice llamado unique_dni sobre el campo dni de la tabla alumnos */
CREATE INDEX unique_dni ON alumnos(dni);
