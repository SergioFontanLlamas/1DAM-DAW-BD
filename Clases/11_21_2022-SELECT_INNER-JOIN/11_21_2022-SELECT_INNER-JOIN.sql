use concesionario;

SELECT * FROM clientes;
SELECT * FROM vendedores;

/* LIMIT proporciona un numero maximo de registros */
SELECT * FROM clientes LIMIT 7;

/* IN comprueba si el valor de un campo esta en la tabla */
SELECT * FROM vendedores WHERE cargo IN ("Vendedor", "Encargado", "Practicas" "Novato");
SELECT * FROM vendedores WHERE cargo = "Vendedor" || cargo = "Encargado" OR cargo = "Practicas" OR cargo = "Novato";
SELECT * FROM vendedores WHERE cargo IN ("Vendedor", "Encargado", "Practicas" "Novato") LIMIT 2;

/* BETWEEN establece un rango para una query */
SELECT * FROM vendedores WHERE sueldo BETWEEN 10000 AND 30000;
SELECT * FROM vendedores WHERE cargo IN ("Vendedor") AND sueldo BETWEEN 10000 AND 30000 LIMIT 1;

/* MAX() funcion que retorna el maximo valor de una columna */
SELECT MAX(sueldo), nombre, apellidos FROM vendedores;

/* AS personaliza el nombre de la columna que utilizo en mi sentencia */
SELECT MAX(sueldo) AS mayor, nombre, apellidos FROM vendedores;

/* MIN() funcion que retorna el minimo valor de una columna 
	ERROR con nombre y apellidos (de aqui coge siempre el primero y queremos el que tenga menor sueldo)
*/
SELECT nombre, apellidos, MIN(sueldo) FROM vendedores;

/* AVG() funcion que retorna el promedio de los valores del campo concreto */
SELECT AVG(sueldo) FROM vendedores WHERE cargo IN ("Jefe de Ventas");
SELECT AVG(sueldo) FROM vendedores WHERE cargo IN ("Vendedor");

/* SUM() funcion que retorna la suma total de los valores de una columna */
SELECT SUM(sueldo) AS sueldo_total FROM vendedores;

/* Retorna cero porque son cadenas de caracteres y no numeros */
SELECT SUM(nombre) FROM vendedores;

/* DATE_ADD(fecha, intervalo de tiempo) */
/*SELECT DATE_ADD(fecha_inicio, INTERVAL 1 day);*/

/* CURDATE() es una funcion que proporciona el dia actual en formato DATE */
UPDATE vendedores SET fecha_inicio = CURDATE() WHERE fecha_inicio = '0000-00-00';

/* NOW() es una funcion que proporciona el dia actual en formato DATETIME */
UPDATE vendedores SET fecha_inicio = NOW() WHERE fecha_inicio = '2015-12-30';
UPDATE vendedores SET fecha_inicio = NOW() WHERE id = 3;

/* 
	YEAR() es una funcion que retorna el año de una fecha determinada 
    MONTH() es una funcion que retorna el mes de una fecha determinada
    DAY() es una funcion que retorna el dia de una fecha determinada
    */
SELECT YEAR(fecha_inicio) FROM vendedores;
SELECT MONTH(fecha_inicio) FROM vendedores;
SELECT DAY(fecha_inicio) FROM vendedores;

UPDATE vendedores SET fecha_inicio = NOW() WHERE YEAR(fecha_inicio) = 2021;
ALTER TABLE vendedores MODIFY fecha_inicio DATETIME;

/* COUNT() es una funcion que retorna el total de registros */
SELECT COUNT(cargo) AS total_vendedores FROM vendedores WHERE cargo IN ("Vendedor");

/* GROUP BY agrupar las filas que tienen los mismos valores */
SELECT vendedor_id, COUNT(vendedor_id) FROM clientes GROUP BY vendedor_id;

/* HAVING */

/* INNER JOIN selecciona los registros que tienen valores en dos tablas en comun */
SELECT clientes.*, vendedores.nombre AS nombre_vendedor, vendedores.apellidos AS apellido_vendedor
FROM clientes
INNER JOIN vendedores ON vendedores.id = clientes.vendedor_id;

use nba;
SELECT * FROM jugadores;

/* Retorna la ciudad y equipo del jugador con id 13 */
SELECT equipos.ciudad, equipos.nombre
FROM jugadores
INNER JOIN equipos ON equipos.id = jugadores.equipo_id
WHERE jugadores.id = 13;
/* Query anterior sin hacer el INNER JOIN */
SELECT equipo_id FROM jugadores WHERE id = 13;
SELECT ciudad, nombre FROM equipos WHERE id = 1;

SELECT * FROM equipos;
SELECT * FROM jugadores;
SELECT * FROM estadisticas;

/* Retorna el nombre de jugador y estadisticas de los jugadores de mas de 15 puntos en la temporada 20-21 */
SELECT jugadores.nombre, estadisticas.puntos, estadisticas.asistencias, estadisticas.tapones, estadisticas.rebotes
FROM jugadores
INNER JOIN estadisticas ON estadisticas.jugador_id = jugadores.id
INNER JOIN temporadas ON temporadas.id = estadisticas.temporada_id
WHERE estadisticas.puntos > 15 AND temporadas.nombre="20-21";
