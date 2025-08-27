INSERT INTO Persona (nombre, instrumento) 
VALUES 
    ('Juan Pérez', 'Violín'), 
    ('Ana Gómez', 'Piano'), 
    ('Carlos Ruiz', 'Flauta');

INSERT INTO Orquesta (comuna, provincia, region) 
VALUES 
    ('Santiago', 'Santiago', 'Metropolitana'), 
    ('Valparaíso', 'Valparaíso', 'Valparaíso'), 
    ('Concepción', 'Biobío', 'Biobío');

INSERT INTO Pertenece (id_persona, id_orquesta, fecha_inicio, fecha_fin) 
VALUES 
    (1, 1, '2022-01-01', NULL),  
    (2, 2, '2021-06-15', NULL),  
    (3, 1, '2023-03-20', NULL);

INSERT INTO Presentacion (id_orquesta, teatro, fecha, hora) 
VALUES 
    (1, 'Teatro Municipal de Santiago', '2025-05-15', '19:30'), 
    (2, 'Teatro Coliseo', '2025-06-10', '20:00');

INSERT INTO Participa (id_persona, id_presentacion, tipo_presentacion) 
VALUES 
    (1, 1, 'titular'),   
    (2, 1, 'invitado'),  
    (3, 2, 'titular');

INSERT INTO Director (nombre, edad) 
VALUES 
    ('Francisco García', 45), 
    ('Luis Rodríguez', 50);

INSERT INTO Dirige (id_director, id_orquesta) 
VALUES 
    (1, 1),  
    (2, 2);
