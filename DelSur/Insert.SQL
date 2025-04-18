


INSERT INTO region (nombre_r)
VALUES 
    ('Región Metropolitana'), 
    ('Región de Valparaíso'), 
    ('Región de Biobío');


INSERT INTO comuna (nombre_c, id_region)
VALUES 
    ('Santiago', 1), 
    ('Valparaíso', 2), 
    ('Concepción', 3),
    ('Viña del Mar', 2);


INSERT INTO centros (nombre_centro, id_comuna)
VALUES 
    ('Centro de Servicio 1', 1), 
    ('Centro de Servicio 2', 2),
    ('Centro de Servicio 3', 3),
    ('Centro de Servicio 4', 4);


INSERT INTO empleados (nombre_e, id_centro)
VALUES 
    ('Juan Pérez', 1), 
    ('María González', 1),
    ('Carlos Herrera', 2),
    ('Ana López', 2),
    ('Luis Fernández', 3),
    ('Javier Martínez', 4);


INSERT INTO grifos (id_centro, latitud, altitud)
VALUES 
    (1, -33.4569, -70.6483),
    (1, -33.4570, -70.6485),
    (2, -33.0250, -71.5500),
    (3, -36.8250, -73.0500),
    (4, -33.0260, -71.5505);


INSERT INTO mantencion (descripcion_acciones)
VALUES 
    ('Revisión de sistemas y limpieza de filtros'), 
    ('Reemplazo de válvulas y limpieza de bombas'),
    ('Reparación de fugas y mantenimiento preventivo');


INSERT INTO hace (id_grifo, id_t, id_mantencion, fecha)
VALUES 
    (1, 1, 1, '2025-04-10'),
    (2, 1, 1, '2025-04-10'), 
    (2, 2, 1, '2025-04-10'),  
    (1, 3, 1, '2025-04-10');


INSERT INTO hace (id_grifo, id_t, id_mantencion, fecha)
VALUES 
    (3, 4, 2, '2025-04-12'),  
    (3, 5, 2, '2025-04-12');


INSERT INTO hace (id_grifo, id_t, id_mantencion, fecha)
VALUES 
    (4, 6, 3, '2025-04-14'), 
    (5, 6, 3, '2025-04-14');  


INSERT INTO instituciones (tipo)
VALUES ('colegio'), ('hospital'), ('policía');


INSERT INTO grifo_institucion (id_grifo, id_institucion, distancia_metros)
VALUES 
    (1, 1, 120.50),  
    (1, 2, 300.00),  
    (1, 3, 450.75), 
    (2, 2, 200.00),  
    (2, 3, 180.20);