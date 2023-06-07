ALTER TABLE idioma_pelicula 
ADD CONSTRAINT idioma_fk
FOREIGN KEY (id_idioma) 
REFERENCES idiomas(id);

ALTER TABLE idioma_pelicula 
ADD CONSTRAINT pelicula_fk
FOREIGN KEY (id_pelicula) 
REFERENCES peliculas(id);

ALTER TABLE peliculas
ADD CONSTRAINT precuela_fk
FOREIGN KEY (id_precuela) 
REFERENCES peliculas(id);


ALTER TABLE peliculas
ADD CONSTRAINT secuela_fk
FOREIGN KEY (id_secuela) 
REFERENCES peliculas(id);


