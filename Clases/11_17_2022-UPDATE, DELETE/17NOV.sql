/* Muestra los equipos que tienen nombre Suns y ciudad Phoenix */
SELECT * FROM equipos WHERE nombre="Suns" AND ciudad="Phoenix";

/* Muestra los equipos */
SELECT * FROM equipos;

/* Selecciona jugadores que tengan equipo_id = 1 */
SELECT * FROM jugadores WHERE equipo_id = 1;

/* Muestra el id de los equipos que tengan nombre Boston Celtics */
SELECT id FROM equipos WHERE nombre='Celtics' AND ciudad='Boston';

/* Elimina de la tabla jugadores el que tenga id = 40 */
DELETE FROM jugadores WHERE id = 40; 

/* Muestra los jugadores que tengan peso 75 y posicion SG */
SELECT * FROM jugadores WHERE peso = 75 AND posicion= 'SG';

/* Actualiza la altura, peso y posicion de los jugadores que pesen más de 95 */
UPDATE jugadores SET altura=1.80, peso=75, posicion='SG' WHERE peso > 95;