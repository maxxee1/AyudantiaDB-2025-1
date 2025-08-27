CREATE TABLE Jedi (
    id_jedi SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    especie VARCHAR(50),
    rango VARCHAR(50)
);

CREATE TABLE Sith (
    id_sith SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    maestro VARCHAR(100)
);

CREATE TABLE Clones (
    id_clon SERIAL PRIMARY KEY,
    nombre_clave VARCHAR(100),
    unidad VARCHAR(100)
);

CREATE TABLE Droides (
    id_droide SERIAL PRIMARY KEY,
    modelo VARCHAR(100),
    fabricante VARCHAR(100)
);

CREATE TABLE Sables (
    id_sable SERIAL PRIMARY KEY,
    color VARCHAR(50),
    modelo VARCHAR(50)
);

CREATE TABLE Tiene_Sable (
    id_sable INT REFERENCES Sables(id_sable),
    id_dueño INT,
    fecha_inicio DATE,
    fecha_fin DATE,
    PRIMARY KEY (id_sable, id_dueño, fecha_inicio)
);

CREATE TABLE Bandos (
    id_dueño INT,
    bando VARCHAR(50),
    fecha_inicio DATE,
    fecha_fin DATE,
    tipo_dueño VARCHAR(10) CHECK (tipo_dueño IN ('Jedi', 'Sith', 'Clon', 'Droide')),
    PRIMARY KEY (id_dueño, bando, fecha_inicio)
);

CREATE TABLE Guerras (
    id_guerra SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    fecha_inicio DATE,
    fecha_fin DATE
);

CREATE TABLE Participaciones (
    id_participante INT,
    id_guerra INT REFERENCES Guerras(id_guerra),
    fecha_participacion DATE,
    tipo_participante VARCHAR(10) CHECK (tipo_participante IN ('Jedi', 'Sith', 'Clon', 'Droide')),
    resultado VARCHAR(10) CHECK (resultado IN ('Gano', 'Perdio', 'Empate')),
    PRIMARY KEY (id_participante, id_guerra, fecha_participacion)
);
