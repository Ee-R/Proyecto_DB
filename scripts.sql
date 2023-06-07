CREATE TABLE peliculas(
  id INT,
  idioma_original INT,
  oscar BOOLEAN,
  nombre_original VARCHAR(128),
  nombre_castellano VARCHAR(128),
  resumen VARCHAR(1024),
  id_precuela INT,
  id_secuela INT,
  duracion_minutos INT
);


CREATE TABLE trabajan(
  id_pelicula INT,
  id_rol INT,
  id_departamento INT,
  id_persona INT
);

CREATE TABLE personas(
  id INT,
  fecha_nacimiento DATE,
  pais_nacimiento INT
);

CREATE TABLE idiomas(
  id INT,
  nombre VARCHAR(64);
);

CREATE TABLE roles(
  id INT,
  nombre VARCHAR(64);
);

CREATE TABLE departamentos(
  id INT,
  nombre VARCHAR(64);
);

CREATE TABLE generos_de_peliculas(
  id INT,
  nombre VARCHAR(64);
);

CREATE TABLE razones_edicion(
  id INT,
  nombre VARCHAR(64);
);

