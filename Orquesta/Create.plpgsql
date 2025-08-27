CREATE TABLE Persona (
id_persona SERIAL PRIMARY KEY,
nombre VARCHAR(100) NOT NULL,
instrumento VARCHAR(50) NOT NULL
);
CREATE TABLE Orquesta (
id_orquesta SERIAL PRIMARY KEY,
comuna VARCHAR(50) NOT NULL,
provincia VARCHAR(50) NOT NULL,
region VARCHAR(50) NOT NULL
);
CREATE TABLE Pertenece (
id_persona INT NOT NULL,
id_orquesta INT NOT NULL,
fecha_inicio DATE NOT NULL,
fecha_fin DATE,
PRIMARY KEY (id_persona, id_orquesta),
FOREIGN KEY (id_persona) REFERENCES Persona(id_persona),
FOREIGN KEY (id_orquesta) REFERENCES Orquesta(id_orquesta)
);
CREATE TABLE Presentacion (
id_presentacion SERIAL PRIMARY KEY,
id_orquesta INT NOT NULL,
teatro VARCHAR(100) NOT NULL,
fecha DATE NOT NULL,
hora TIME NOT NULL,
FOREIGN KEY (id_orquesta) REFERENCES Orquesta(id_orquesta)
);
CREATE TABLE Participa (
id_persona INT NOT NULL,
id_presentacion INT NOT NULL,
tipo_presentacion VARCHAR(20) CHECK (tipo_presentacion IN ('titular',
'invitado')),
PRIMARY KEY (id_persona, id_presentacion),
FOREIGN KEY (id_persona) REFERENCES Persona(id_persona),
FOREIGN KEY (id_presentacion) REFERENCES Presentacion(id_presentacion)
);
CREATE TABLE Director (
id_director SERIAL PRIMARY KEY,
nombre VARCHAR(100) NOT NULL,
edad INT CHECK (edad > 0)
);
CREATE TABLE Dirige (
id_director INT NOT NULL,
id_orquesta INT NOT NULL,
PRIMARY KEY (id_director, id_orquesta),
FOREIGN KEY (id_director) REFERENCES Director(id_director),
FOREIGN KEY (id_orquesta) REFERENCES Orquesta(id_orquesta)
);
