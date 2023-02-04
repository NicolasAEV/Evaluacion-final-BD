--1 Crear una consulta para obtener todos los actores que participaron en ambas teleseries,
--el sueldo que obtuvieron en cada una y la suma de ambos sueldos, todo esto ordenado por el name
--del actor
SELECT R.nombre , R.sueldo AS Sueldo_Papi_ricky, S.sueldo AS Sueldo_Soltera_Otra_vez,(R.sueldo + S.sueldo )AS sueldoTotal
FROM reparto_papi_ricky AS R
INNER JOIN reparto_soltera_otra_vez AS S
ON R.nombre = S.nombre
ORDER BY R.nombre ASC;

--2 Crear una consulta para obtener solo los actores que participaron exclusivamente en soltera otra vez 
-- con un sueldo mayor a 90 RIGHT OUTER JOIN
--SELECT * FROM reparto_soltera_otra_vez WHERE sueldo > 90;

SELECT S.nombre AS "reparto soltera otra vez",R.nombre AS "reparto papi ricky", S.sueldo 
FROM reparto_papi_ricky AS R
FULL OUTER JOIN  reparto_soltera_otra_vez AS S
ON R.nombre = S.nombre 
WHERE R.nombre ISNULL 
AND S.sueldo > 90;

--3 Crear una consulta para obtener los actores con sueldo inferior a 85 que actuaron en cualquiiera de las dos 
-- teleseries pero no en las dos CON 

SELECT CONCAT (S.nombre, R.nombre)AS NOMBRE,
CONCAT (S.sueldo, R.sueldo) AS SUELDO
FROM reparto_soltera_otra_vez AS S
FULL OUTER JOIN reparto_papi_ricky AS R
ON R.nombre = S.nombre 
WHERE (R.nombre = S.nombre IS NULL) 
AND (S.sueldo < 85 OR R.sueldo <85);
