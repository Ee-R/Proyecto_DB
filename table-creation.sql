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

