USE universidad;

/* INSERT INTO grado VALUES (id, tipo, nombre) */
INSERT INTO grado VALUES (NULL, 'Tipo 1', 'Matematicas');
INSERT INTO grado VALUES (NULL, 'Tipo 2', 'Informatica');
INSERT INTO grado VALUES (NULL, 'Tipo 1', 'Quimica');
DELETE FROM grado WHERE id=3;
INSERT INTO grado VALUES (30, 'Tipo 2', 'Fisica');

ALTER TABLE persona MODIFY fecha_nacimiento DATE;

/* 
	En esta opcion no hace falta marcarle los campos en los que introduzco.
    El id o PK tiene que ir a NULL
 */
INSERT INTO persona VALUES (NULL, '12345679','s','d','f','g','7','2022 01 01','profesor','Hombre');


/*
	En esta opcion, puedo introducir los campos que quiera.
    Tener en cuenta los UK, los NOT NULL, los DEFAULT...
    No ponemos id
*/
INSERT INTO persona (nif, nombre, apellido1, apellido2, direccion, telefono, fecha_nacimiento, tipo, sexo) 
VALUES ('5534567','s','d','f','g','7','2022-01-01','profesor','Hombre');
