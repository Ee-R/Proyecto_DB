DROP TABLE IF EXISTS idiomas;
DROP TABLE IF EXISTS idioma_pelicula;
DROP TABLE IF EXISTS peliculas;
DROP TABLE IF EXISTS titulos_de_peliculas;
DROP TABLE IF EXISTS personas;
DROP TABLE IF EXISTS roles;
DROP TABLE IF EXISTS participaciones;
DROP TABLE IF EXISTS genero_pelicula;
DROP TABLE IF EXISTS generos_de_peliculas;
DROP TABLE IF EXISTS serie_pelicula;
DROP TABLE IF EXISTS series_de_peliculas;

-- CREACION
CREATE TABLE series_de_peliculas(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(64) NOT NULL
);

CREATE TABLE peliculas(
    id INT AUTO_INCREMENT PRIMARY KEY,
    fecha_estreno DATE NOT NULL,
    oscar BOOLEAN NOT NULL,
    duracion_minutos INT NOT NULL
);

CREATE TABLE idioma_pelicula(
    id_pelicula INT,
    id_idioma INT,
    idioma_original BOOLEAN NOT NULL DEFAULT FALSE,
    id_titulo INT,
    CONSTRAINT idioma_pelicula_pk PRIMARY KEY(id_pelicula,id_idioma,id_titulo)
);

CREATE TABLE idiomas(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_iso VARCHAR(64) NOT NULL,
    codigo_iso VARCHAR(4) NOT NULL
);

CREATE TABLE titulos_de_peliculas(
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(128)
);

CREATE TABLE participaciones(
    id_pelicula INT,
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_persona INT,
    id_rol INT,
    CONSTRAINT participaciones_pk UNIQUE KEY (id_pelicula,id_persona,id_rol)
);

CREATE TABLE personas(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(128) ,
    apellido VARCHAR(128),
    CONSTRAINT personas_uk UNIQUE KEY (nombre,apellido)
);

CREATE TABLE roles(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(64) NOT NULL
);

CREATE TABLE genero_pelicula(
    id_pelicula INT,
    id_genero_de_pelicula INT,
    CONSTRAINT genero_pelicula_pk PRIMARY KEY (id_pelicula,id_genero_de_pelicula)
);

CREATE TABLE generos_de_peliculas(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(32) NOT NULL
);

CREATE TABLE serie_pelicula(
    id_pelicula INT,
    id_serie INT,
    parte INT NOT NULL,
    CONSTRAINT serie_pelicula_pk PRIMARY KEY (id_pelicula,id_serie)
);

-- ALTER
ALTER TABLE serie_pelicula 
ADD CONSTRAINT serie_pelicula_pelicula_fk 
FOREIGN KEY (id_pelicula) REFERENCES peliculas(id) ON DELETE CASCADE,
ADD CONSTRAINT serie_pelicula_serie_fk
FOREIGN KEY (id_titulo) REFERENCES series_de_peliculas(id) ON DELETE CASCADE;

ALTER TABLE idioma_pelicula 
ADD CONSTRAINT idioma_fk
FOREIGN KEY (id_idioma) REFERENCES idiomas(id) ON DELETE CASCADE,
ADD CONSTRAINT pelicula_fk 
FOREIGN KEY (id_pelicula) REFERENCES peliculas(id) ON DELETE CASCADE,
ADD CONSTRAINT titulo_fk
FOREIGN KEY (id_titulo) REFERENCES titulos_de_peliculas(id) ON DELETE CASCADE;

ALTER TABLE peliculas 
ADD CONSTRAINT precuela_fk
FOREIGN KEY (id_precuela) REFERENCES peliculas(id) ON DELETE CASCADE,
ADD CONSTRAINT secuela_fk
FOREIGN KEY (id_secuela) REFERENCES peliculas(id) ON DELETE CASCADE;

ALTER TABLE genero_pelicula 
ADD CONSTRAINT genero_pelicula_id_pelicula
FOREIGN KEY (id_pelicula) REFERENCES peliculas(id) ON DELETE CASCADE,
ADD CONSTRAINT genero_pelicula_id_genero_pelicula
FOREIGN KEY (id_genero_de_pelicula) REFERENCES generos_de_peliculas(id) ON DELETE CASCADE;

ALTER TABLE participaciones 
ADD CONSTRAINT participaciones_pelicula_fk
FOREIGN KEY (id_pelicula) REFERENCES peliculas(id) ON DELETE CASCADE,
ADD CONSTRAINT participaciones_persona_fk
FOREIGN KEY (id_persona) REFERENCES personas(id) ON DELETE CASCADE,
ADD CONSTRAINT participaciones_rol_fk
FOREIGN KEY (id_rol) REFERENCES rol(id) ON DELETE CASCADE;
