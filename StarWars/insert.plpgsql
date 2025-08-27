INSERT INTO Jedi (id_jedi, nombre, especie, rango)
VALUES
(1, 'Anakin Skywalker', 'Humano', 'Caballero'),
(2, 'Obi-Wan Kenobi', 'Humano', 'Maestro'),
(3, 'Luke Skywalker', 'Humano', 'Caballero'),
(4, 'Mace Windu', 'Humano', 'Maestro'),
(5, 'Qui-Gon Jinn', 'Humano', 'Maestro'),
(6, 'Ahsoka Tano', 'Togruta', 'Padawan'),
(7, 'Kit Fisto', 'Nautolano', 'Maestro'),
(8, 'Rey Palpatine', 'Humano', NULL);

INSERT INTO Sith (id_sith, nombre, maestro)
VALUES
(9, 'General Grievous', 'Conde Dooku'),
(10, 'Darth Vader', 'Darth Sidious'),
(11, 'Darth Maul', 'Darth Sidious'),
(12, 'Emperador Palpatine', 'Plagueis'),
(13, 'Conde Dooku', 'Yoda'),
(14, 'Kylo Ren', 'Snoke');

INSERT INTO Clones (id_clon, nombre_clave, unidad)
VALUES
(20, 'Rex', '501st'),
(21, 'Cody', '212th'),
(22, 'Bly', '327th'),
(23, 'Hevy', 'Domino'),
(24, 'Echo', '501st'),
(25, 'Fives', '501st');

INSERT INTO Droides (id_droide, modelo, fabricante)
VALUES
(15, 'Droide de combate', 'Techno Union'),
(16, 'Droide de taller', 'Tatooine Works'),
(18, 'R2-D2', 'Industrial Automaton'),
(19, 'Droide Asesino IG-88', 'Laboratorios Holowan'),
(17, 'C-3PO', 'Cybot Galactica');

INSERT INTO Sables (id_sable, color, modelo)
VALUES
(1, 'Azul', 'Sable original de Anakin'),
(2, 'Azul', 'Sable reconstruido de Anakin'),
(3, 'Rojo', 'Sable de Darth Vader'),
(5, 'Verde', 'Sable construido por Luke'),
(6, 'Morado', 'Sable de Mace Windu'),
(7, 'Rojo', 'Triple piedra rota de Kylo Ren'),
(8, 'Rojo', 'Doble hoja de Darth Maul'),
(9, 'Verde', 'Sable de Ahsoka'),
(4, 'Azul', 'Sable de Obi Wan');

INSERT INTO Tiene_Sable (id_sable, id_dueño, fecha_inicio, fecha_fin)
VALUES
(1, 1, '2000-01-01', '2005-05-04'),
(2, 1, '2005-05-04', '2005-05-19'),
(5, 3, '2010-01-01', NULL),
(6, 4, '2000-01-01', '2005-01-01'),
(1, 8, '2019-12-20', NULL),
(4, 2, '2005-05-19', '2008-01-01'),
(1, 3, '1999-01-01', '2001-01-01'),
(9, 6, '2008-01-01', NULL),
(7, 14, '2015-01-01', NULL);

INSERT INTO Bandos (id_dueño, bando, fecha_inicio, fecha_fin, tipo_dueño)
VALUES
(1, 'República', '2000-01-01', '2005-05-19', 'Jedi'),
(2, 'República', '2000-01-01', '2005-05-19', 'Jedi'),
(3, 'Rebeldes', '2000-01-01', '2035-12-20', 'Jedi'),
(4, 'República', '2000-01-01', '2005-05-19', 'Jedi'),
(5, 'República', '2000-01-01', '2000-12-01', 'Jedi'),
(6, 'República', '2000-01-01', '2003-12-31', 'Jedi'),
(7, 'República', '2000-01-01', '2005-05-19', 'Jedi'),
(20, 'República', '2002-01-01', '2005-05-19', 'Clon'),
(10, 'Imperio', '2005-05-19', '2008-01-01', 'Sith'),
(25, 'República', '2002-01-01', '2005-05-19', 'Clon'),
(15, 'Separatistas', '2001-05-01', '2005-05-19', 'Droide'),
(18, 'Rebeldes', '2000-07-08', '2035-12-20', 'Droide'),
(21, 'República', '2002-01-01', '2005-05-19', 'Clon'),
(13, 'Separatistas', '1999-01-01', '2000-12-01', 'Sith'),
(11, 'Imperio', '2000-01-01', '2004-12-31', 'Sith'),
(17, 'Rebeldes', '2000-01-06', '2035-12-20', 'Droide'),
(22, 'República', '2002-01-01', '2005-05-19', 'Clon'),
(23, 'República', '2002-01-01', '2005-05-19', 'Clon'),
(12, 'Separatistas', '2000-01-01', '2002-01-01', 'Sith'),
(14, 'Imperio', '2015-01-01', '2035-12-20', 'Sith'),
(24, 'República', '2002-01-01', '2005-05-19', 'Clon'),
(9, 'Separatistas', '1999-04-01', '2005-05-19', 'Sith');

INSERT INTO Guerras (id_guerra, nombre, fecha_inicio, fecha_fin)
VALUES
(1, 'Guerra de los Clones', '2002-01-01', '2005-05-19'),
(2, 'Guerra Civil Galactica', '2000-01-01', '2004-10-30'),
(3, 'Guerra Rebelde', '2002-01-01', '2000-12-15'),
(4, 'El Imperio Contraataca', '2003-01-01', '2003-12-31'),
(5, 'El Ascenso de Skywalker', '2035-01-01', '2035-12-20');

INSERT INTO Participaciones (id_participante, id_guerra, fecha_participacion, tipo_participante, resultado)
VALUES
(1, 1, '2002-01-01', 'Jedi', 'Gano'),
(2, 1, '2002-01-01', 'Jedi', 'Gano'),
(3, 2, '2000-01-01', 'Jedi', 'Gano'),
(4, 1, '2002-01-01', 'Jedi', 'Gano'),
(5, 1, '2002-01-01', 'Jedi', 'Perdio'),
(6, 2, '2000-01-01', 'Jedi', 'Gano'),
(7, 2, '2000-01-01', 'Jedi', 'Gano'),
(2, 3, '2002-01-01', 'Jedi', 'Perdio'),
(3, 4, '2003-01-01', 'Jedi', 'Perdio'),
(3, 5, '2035-01-01', 'Jedi', 'Gano'),
(4, 2, '2005-05-15', 'Clon', 'Gano'),
(23, 5, '2002-01-01', 'Clon', 'Perdio'),
(20, 1, '2005-05-15', 'Clon', 'Gano'),
(24, 1, '2035-01-01', 'Clon', 'Gano'),
(25, 2, '2005-05-15', 'Clon', 'Gano');
