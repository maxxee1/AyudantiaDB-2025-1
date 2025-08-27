-- Listar todos Jedi y su rango
SELECT nombre, rango
FROM jedi;

-- Listar todos los sables laser de 'Anakin Skywalker'
SELECT sables.id_sable, color, modelo
FROM sables
JOIN tiene_sable ON sables.id_sable = tiene_sable.id_sable
JOIN jedi ON tiene_sable.id_dueño = jedi.id_jedi
WHERE jedi.nombre = 'Anakin Skywalker';


-- Listar todos los sables con el nombre de su propietario actual
SELECT id_sable AS id, jedi.nombre 
FROM tiene_sable
JOIN jedi ON id_jedi = id_dueño
WHERE fecha_fin IS NULL;


-- Contar cuantos clones hay en cada unidad
SELECT unidad, count(*) as cantidad_clones
FROM clones
GROUP BY unidad;


-- Listar todos los participantes de una guerra especifica (id_guerra = 1)
SELECT *
FROM participaciones
WHERE id_guerra = 1;


-- Numero de guerras en la que participo cada clon y su unidad
SELECT id_clon, COUNT(DISTINCT id_guerra) AS cantidad_guerras, unidad
FROM participaciones
JOIN clones ON id_participante = id_clon
WHERE tipo_participante = 'Clon'
GROUP BY id_clon;


-- Buscar todos los droides de un modelo especifico (IG-88)
SELECT * 
FROM droides
WHERE modelo LIKE '%IG-88%';


-- Jedi con mejor desempeño proporcional ASI quedaria god
/*
SELECT nombre, id_participante, COUNT(*) AS total_participaciones,
COUNT(CASE WHEN resultado = 'Gano' THEN 1 END) AS total_ganadas,
CONCAT(ROUND(COUNT(CASE WHEN resultado = 'Gano' THEN 1 END) * 100.0 / COUNT(*), 2), '%') AS desempeño
FROM Participaciones
JOIN jedi ON id_participante = id_jedi
WHERE tipo_participante = 'Jedi'
GROUP BY id_participante, nombre
ORDER BY (COUNT(CASE WHEN resultado = 'Gano' THEN 1 END) * 1.0 / COUNT(*)) DESC;
*/


-- asi bastaba
SELECT id_participante, COUNT(*) AS total_participaciones,
COUNT(CASE WHEN resultado = 'Gano' THEN 1 END) AS total_ganadas,
COUNT(CASE WHEN resultado = 'Gano' THEN 1 END) * 100.0 / COUNT(*) AS desempeño
FROM Participaciones
WHERE tipo_participante = 'Jedi'
GROUP BY id_participante
ORDER BY desempeño DESC
LIMIT 1;


-- Contar numeros de jedi por rango
SELECT count(*) AS cant_jedi, rango
FROM jedi
GROUP BY rango;


-- Promedio de victorias jedi
SELECT AVG(CASE WHEN resultado = 'Gano' THEN 1.0 ELSE 0 END) AS promedio_victorias
FROM Participaciones
WHERE tipo_participante = 'Jedi';


-- Numero de guerras ganadas por cada tipo de participante
SELECT tipo_participante, COUNT(*) AS guerras_ganadas
FROM Participaciones
WHERE resultado = 'Gano'
GROUP BY tipo_participante
ORDER BY guerras_ganadas DESC;


-- Droides que no participaron en ninguna guerra
-- aca no funciona pq hay otros participantes con el mismo id que son clones por ejemplo
-- para arreglar eso con la tabla personas se normaliza la base de datos tipo_persona
-- y las tablas jedi, sith, clon, droide tiene atributos propios de cada uno
/*
SELECT droides.*
FROM Droides
LEFT JOIN Participaciones ON id_droide = id_participante
WHERE id_participante IS NULL;
*/
-- otra opcion es asumir que los id no se repiten en ninguna tabla es decir si hay un jedi con id 1 
-- en nignguna otra tabla puede estar el 1, otra opcion es en el left join agregar que el participante tiene que ser droide
SELECT droides.*
FROM Droides
LEFT JOIN Participaciones ON id_droide = id_participante AND tipo_participante = 'Droide'
WHERE id_participante IS NULL;


-- Listar sables que han cambiado de dueño mas de 1 vez
SELECT sables.id_sable, color, modelo, COUNT(DISTINCT id_dueño) -1  AS veces_cambiado
FROM tiene_sable
JOIN sables ON sables.id_sable = tiene_sable.id_sable
GROUP BY sables.id_sable
HAVING COUNT(DISTINCT id_dueño) > 2;


-- Listar todas las guerras y cuantos clones participaron 
SELECT guerras.id_guerra,guerras.nombre,
COUNT(participaciones.id_participante) AS clones_participantes
FROM guerras
LEFT JOIN participaciones ON guerras.id_guerra = participaciones.id_guerra
AND tipo_participante = 'Clon'
GROUP BY guerras.id_guerra;


-- Nombre de todos los jedi que alguna vez usaron un sable de color verde
SELECT DISTINCT nombre
FROM jedi
JOIN tiene_sable ON id_dueño = id_jedi
JOIN sables ON sables.id_sable = tiene_sable.id_sable
WHERE color = 'Verde';


-- Listar todos los sith y sus maestros
SELECT nombre AS nombre_sith, maestro
FROM sith;


-- Listar todos los bandos
SELECT  DISTINCT bando
FROM bandos;


-- Total miembros de cualquier bando ejemplo Imperio
SELECT COUNT(*) AS miembros_imperio
FROM bandos
WHERE bando = 'Imperio';


-- Todas las participaciones de guerra en los ultimos 30 dias 
SELECT * 
FROM participaciones
WHERE fecha_participacion BETWEEN '2025-04-15' AND '2025-05-15';


-- Sables con mas de 2 años con Luke Skywalker
SELECT sables.*
FROM tiene_sable 
JOIN jedi ON id_jedi = id_dueño
JOIN sables ON sables.id_sable = tiene_sable.id_sable
WHERE fecha_fin - fecha_inicio > 730 AND nombre = 'Luke Skywalker';
