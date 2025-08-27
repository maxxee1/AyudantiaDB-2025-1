CREATE TABLE region (
id_region SERIAL PRIMARY KEY ,
nombre_r VARCHAR (100) NOT NULL
);

CREATE TABLE comuna (
id_comuna SERIAL PRIMARY KEY ,
nombre_c VARCHAR (100) NOT NULL ,
id_region INT NOT NULL ,
FOREIGN KEY ( id_region ) REFERENCES region ( id_region )
);


CREATE TABLE centros (
id_centro SERIAL PRIMARY KEY ,
nombre_centro VARCHAR (100) NOT NULL ,
id_comuna INT NOT NULL ,
FOREIGN KEY ( id_comuna ) REFERENCES comuna ( id_comuna )
);


CREATE TABLE empleados (
id_t SERIAL PRIMARY KEY ,
nombre_e VARCHAR (100) NOT NULL ,
id_centro INT NOT NULL ,
FOREIGN KEY ( id_centro ) REFERENCES centros ( id_centro )
);


CREATE TABLE grifos (
id_grifo SERIAL PRIMARY KEY ,
id_centro INT NOT NULL ,
latitud DECIMAL (9 ,6) ,
altitud DECIMAL (9 ,6) ,
cerca_colegio BOOLEAN DEFAULT FALSE ,
cerca_hospital BOOLEAN DEFAULT FALSE ,
cerca_policia BOOLEAN DEFAULT FALSE ,
FOREIGN KEY ( id_centro ) REFERENCES centros ( id_centro )
);


CREATE TABLE mantencion (
id_mantencion SERIAL PRIMARY KEY ,
descripcion_acciones TEXT NOT NULL
);


CREATE TABLE hace (
id_grifo INT NOT NULL ,
id_t INT NOT NULL ,
id_mantencion INT NOT NULL ,
fecha DATE NOT NULL ,
PRIMARY KEY ( id_grifo , id_t , id_mantencion ) ,
FOREIGN KEY ( id_grifo ) REFERENCES grifos ( id_grifo ) ,
FOREIGN KEY ( id_t ) REFERENCES empleados ( id_t ) ,
FOREIGN KEY ( id_mantencion ) REFERENCES mantencion (
id_mantencion )
);


ALTER TABLE grifos 
DROP COLUMN cerca_colegio,
DROP COLUMN cerca_hospital,
DROP COLUMN cerca_policia;


CREATE TABLE instituciones (
    id_institucion SERIAL PRIMARY KEY,
    tipo VARCHAR(50) NOT NULL
);


CREATE TABLE grifo_institucion (
    id_grifo INT NOT NULL,
    id_institucion INT NOT NULL,
    distancia_metros DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (id_grifo, id_institucion),
    FOREIGN KEY (id_grifo) REFERENCES grifos(id_grifo),
    FOREIGN KEY (id_institucion) REFERENCES instituciones(id_institucion)
);
