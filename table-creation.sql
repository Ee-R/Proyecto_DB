DROP TABLE IF EXISTS idiomas;
DROP TABLE IF EXISTS idioma_pelicula;
DROP TABLE IF EXISTS peliculas;
DROP TABLE IF EXISTS titulo_pelicula;
DROP TABLE IF EXISTS titulos_de_peliculas;
DROP TABLE IF EXISTS personas;
DROP TABLE IF EXISTS roles;
DROP TABLE IF EXISTS participaciones;
DROP TABLE IF EXISTS participacion_rol;
DROP TABLE IF EXISTS genero_pelicula;
DROP TABLE IF EXISTS generos_de_peliculas;

-- CREACION

CREATE TABLE peliculas(
    id INT AUTO_INCREMENT PRIMARY KEY,
    fecha_estreno DATE NOT NULL,
    oscar BOOLEAN NOT NULL,
    id_precuela INT,
    id_secuela INT,
    duracion_minutos INT NOT NULL
);

CREATE TABLE idioma_pelicula(
    id_pelicula INT,
    id_idioma INT,
    idioma_original BOOLEAN NOT NULL,
    CONSTRAINT idioma_pelicula_pk PRIMARY KEY(id_pelicula,id_idioma)
);

CREATE TABLE idiomas(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_iso VARCHAR(64) NOT NULL,
    codigo_iso VARCHAR(4) NOT NULL
);

CREATE TABLE titulo_pelicula(
    id_pelicula INT,
    id_titulo INT,
    id_idioma INT,
    CONSTRAINT titulo_pelicula_pk PRIMARY KEY (id_pelicula,id_titulo,id_idioma)
);

CREATE TABLE titulos_de_peliculas(
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(128)
);


CREATE TABLE participaciones(
    id_pelicula INT,
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_persona INT,
    CONSTRAINT participaciones_pk UNIQUE KEY (id_pelicula,id_persona)
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

CREATE TABLE participacion_rol(
    id_rol INT,
    id_participacion INT,
    CONSTRAINT participacion_rol_pk PRIMARY KEY (id_participacion,id_rol)
);

-- ALTERS
ALTER TABLE idioma_pelicula 
ADD CONSTRAINT idioma_fk
FOREIGN KEY (id_idioma) REFERENCES idiomas(id) ON DELETE CASCADE,
ADD CONSTRAINT pelicula_fk 
FOREIGN KEY (id_pelicula) REFERENCES peliculas(id) ON DELETE CASCADE;

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

ALTER TABLE titulo_pelicula 
ADD CONSTRAINT titulo_pelicula_p_fk
FOREIGN KEY (id_pelicula) REFERENCES peliculas(id) ON DELETE CASCADE,
ADD CONSTRAINT titulo_pelicula_t_fk
FOREIGN KEY (id_titulo) REFERENCES titulos_de_peliculas(id) ON DELETE CASCADE,
ADD CONSTRAINT titulo_pelicula_i_fk
FOREIGN KEY (id_idioma) REFERENCES idiomas(id) ON DELETE CASCADE;


ALTER TABLE participaciones 
ADD CONSTRAINT participaciones_pelicula_fk
FOREIGN KEY (id_pelicula) REFERENCES peliculas(id) ON DELETE CASCADE,
ADD CONSTRAINT participaciones_persona_fk
FOREIGN KEY (id_persona) REFERENCES personas(id) ON DELETE CASCADE;

ALTER TABLE participacion_rol 
ADD CONSTRAINT participacion_rol_id_rol
FOREIGN KEY (id_rol) REFERENCES roles(id) ON DELETE CASCADE,
ADD CONSTRAINT participacion_rol_id_participacion
FOREIGN KEY (id_participacion) REFERENCES participaciones(id) ON DELETE CASCADE;
