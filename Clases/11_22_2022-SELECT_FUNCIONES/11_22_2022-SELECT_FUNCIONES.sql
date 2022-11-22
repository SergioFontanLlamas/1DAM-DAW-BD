use concesionario;

SELECT * FROM vendedores;

/* 
FUNCIONES
MAX()
MIN()
AVG()
COUNT()
SUM()
(ROUND NO ENTRA EN EL EXAMEN 2)
ROUND() -- redondea
 */
SELECT SUM(sueldo) FROM vendedores;
SELECT SUM(sueldo) AS sueldo_total FROM vendedores WHERE cargo IN("Jefe de ventas");
SELECT AVG(sueldo) FROM vendedores WHERE cargo IN("Jefe de ventas");
SELECT AVG(sueldo) FROM vendedores;
SELECT ROUND(AVG(sueldo),2) FROM vendedores;
SELECT MAX(sueldo) FROM vendedores WHERE cargo IN ("Vendedor", "Practicas");
SELECT MAX(sueldo) FROM vendedores WHERE cargo  = "Vendedor" || cargo= "Practicas";
SELECT MIN(sueldo) FROM vendedores;
SELECT COUNT(sueldo) FROM vendedores WHERE cargo IN ("Vendedor");
SELECT apellidos, nombre, sueldo FROM vendedores WHERE sueldo BETWEEN 20000 AND 40000;
SELECT apellidos, nombre, sueldo FROM vendedores WHERE sueldo >= "20000" AND sueldo <= "40000" LIMIT 1;
SELECT sueldo, AVG(sueldo) FROM vendedores WHERE cargo IN ("Vendedor");

/* Muestra nombres y apellidos de los vendedores con sueldo mayor a 30000 */
SELECT nombre, apellidos FROM vendedores WHERE sueldo > 30000;