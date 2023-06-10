DROP TABLE IF EXISTS idiomas;
DROP TABLE IF EXISTS idioma_pelicula;
DROP TABLE IF EXISTS peliculas;
DROP TABLE IF EXISTS titulo_pelicula;
DROP TABLE IF EXISTS titulos_de_peliculas;
DROP TABLE IF EXISTS departamentos;
DROP TABLE IF EXISTS referencias_peliculas;
DROP TABLE IF EXISTS personas;
DROP TABLE IF EXISTS trabajan;
DROP TABLE IF EXISTS roles;
DROP TABLE IF EXISTS genero_pelicula;
DROP TABLE IF EXISTS generos_de_peliculas;


--CREATE TABLE peliculas(
--    id INT AUTO_INCREMENT PRIMARY KEY,
--    fecha_estreno DATE,
--    oscar BOOLEAN NOT NULL,
--    id_precuela INT,
--    id_secuela INT,
--    duracion_minutos INT NOT NULL
--);
--
--CREATE TABLE idioma_pelicula(
--    id_pelicula INT,
--    id_idioma INT,
--    idioma_original BOOLEAN NOT NULL,
--    CONSTRAINT idioma_pelicula_pk PRIMARY KEY(id_pelicula,id_idioma)
--);
--
CREATE TABLE idiomas(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_iso VARCHAR(64) NOT NULL,
    codigo_iso VARCHAR(4) NOT NULL
);
--
--CREATE TABLE titulo_pelicula(
--    id_pelicula INT,
--    id_titulo INT,
--    id_idioma INT,
--    CONSTRAINT titulo_pelicula_pk PRIMARY KEY (id_pelicula,id_titulo,id_idioma)
--);
--
--CREATE TABLE titulos_de_peliculas(
--    id INT AUTO_INCREMENT PRIMARY KEY,
--    titulo VARCHAR(128)
--);
--
--
--CREATE TABLE trabajan(
--    id_pelicula INT NOT NULL,
--    id_rol INT NOT NULL,
--    id_departamento INT NOT NULL,
--    id_persona INT NOT NULL
--);
--
--CREATE TABLE personas(
--    id INT AUTO_INCREMENT PRIMARY KEY,
--    fecha_nacimiento DATE,
--    nombre VARCHAR(128) NOT NULL
--);
--
--
--CREATE TABLE roles(
--    id INT AUTO_INCREMENT PRIMARY KEY,
--    nombre VARCHAR(64) NOT NULL
--);
--
--CREATE TABLE departamentos(
--    id INT AUTO_INCREMENT PRIMARY KEY,
--    nombre VARCHAR(64) NOT NULL
--);
--
--
--CREATE TABLE genero_pelicula(
--    id_pelicula INT,
--    id_genero_de_pelicula INT,
--    CONSTRAINT genero_pelicula_pk PRIMARY KEY (id_pelicula,id_genero_de_pelicula)
--);
--
--CREATE TABLE generos_de_peliculas(
--    id INT AUTO_INCREMENT PRIMARY KEY,
--    nombre VARCHAR(32) NOT NULL
--);
--
--
--CREATE TABLE referencias_peliculas(
--    id_referenciadora INT,
--    id_referenciada INT,
--    CONSTRAINT referencias_peliculas_pk PRIMARY KEY (id_referenciadora,id_referenciada)
--);
