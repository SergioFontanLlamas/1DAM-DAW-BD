/* Mostrar todos los jugadores */
SELECT * FROM jugadores;

/* Mostrar nombre y procedencia de los jugadores */
SELECT nombre, procedencia FROM jugadores;

/* Mostrar jugadores que miden mas de dos metros */
SELECT nombre FROM jugadores WHERE altura > 2.00 && peso < 100;

/* Mostrar jugadores que proceden de liga española*/
SELECT nombre FROM jugadores WHERE procedencia='España';

/* Eliminar jugador */
DELETE FROM jugadores WHERE id=1;

/* Eliminar jugadores del equipo_id = 1*/
DELETE FROM jugadores WHERE equipo_id = 1;

/*Eliminar jugadores con id del 1 al 100*/
DELETE FROM jugadores WHERE id>=1 && id<=100; 

/* Actualizar jugador con id=101. Actualizo su nombre, altura y equipo */
UPDATE jugadores SET nombre='Sergio Fontan', altura=1.92, equipo_id=22 WHERE id=101;

/* Modificar el campo peso para que admita decimales y actualizar peso de jugador con id=101*/
ALTER TABLE jugadores MODIFY peso DECIMAL (10,2);
ALTER TABLE jugadores MODIFY peso VARCHAR(45);
UPDATE jugadores SET peso=87.5 WHERE id=101;

UPDATE jugadores SET altura='Sergio' WHERE id=101;

/*Vaciar tabla jugadores*/
TRUNCATE jugadores;