-- 1. Obtener todos los empleados
SELECT * FROM empleados;


-- 2. Obtener todos los centros
SELECT * FROM centros;


-- 3. Obtener todas las regiones
SELECT * FROM region;


-- 4. Obtener todas las comunas de una región específica (por ejemplo, región 1)
SELECT * FROM comuna WHERE id_region = 1;


-- 5. Obtener todos los grifos que están cerca de un colegio
SELECT grifos.id_grifo, grifos.id_centro, grifos.latitud, grifos.altitud, 
       instituciones.tipo, grifo_institucion.distancia_metros
FROM grifos
JOIN grifo_institucion ON grifos.id_grifo = grifo_institucion.id_grifo
JOIN instituciones ON grifo_institucion.id_institucion = instituciones.id_institucion
WHERE instituciones.tipo = 'colegio';


-- 6. Obtener los nombres de los grifos y sus coordenadas
SELECT nombre_centro, latitud, altitud 
FROM grifos
JOIN centros ON grifos.id_centro = centros.id_centro;


-- 7. Obtener el nombre y la comuna de un centro específico (por ejemplo, con id_comuna 1)
SELECT centros.nombre_centro, comuna.nombre_c 
FROM centros
JOIN comuna ON centros.id_comuna = comuna.id_comuna
WHERE centros.id_comuna = 1;


-- 8. Contar cuántos grifos hay en total
SELECT COUNT(*) FROM grifos;


-- 9. Obtener todos los empleados de un centro específico (por ejemplo, con id_centro 1)
SELECT nombre_e FROM empleados WHERE id_centro = 1;


-- 10. Obtener todas las mantenciones realizadas
SELECT * FROM mantencion;