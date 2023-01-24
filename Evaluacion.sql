--1 Crear una consulta para obtener todos los actores que participaron en ambas teleseries,
--el sueldo que obtuvieron en cada una y la suma de ambos sueldos, todo esto ordenado por el name
--del actor
SELECT R.nombre , R.sueldo, S.sueldo,(R.sueldo + S.sueldo )AS sueldoTotal
FROM reparto_papi_ricky AS R
INNER JOIN reparto_soltera_otra_vez AS S
ON R.nombre = S.nombre
ORDER BY R.nombre ASC;
--2 Crear una consulta para obtener solo los actores que participaron exclusivamente en soltera otra vez 
-- con un sueldo mayor a 90 RIGHT OUTER JOIN
--SELECT * FROM reparto_soltera_otra_vez WHERE sueldo > 90;
SELECT S.nombre, S.sueldo 
FROM reparto_soltera_otra_vez AS S
LEFT OUTER JOIN reparto_papi_ricky AS R
ON R.nombre = S.nombre
WHERE S.sueldo > 90;
--3 Crear una consulta para obtener los actores con sueldo inferior a 85 que actuaron en cualquiiera de las dos 
-- teleseries pero no en las dos CON 

SELECT S.nombre,S.sueldo AS SUELDO1, R.nombre, R.sueldo AS SUELDO2
FROM reparto_soltera_otra_vez AS S
FULL OUTER JOIN reparto_papi_ricky AS R
ON R.nombre = S.nombre
WHERE (R.nombre = S.nombre IS NULL) 
AND (S.sueldo < 85 or R.sueldo <85);
