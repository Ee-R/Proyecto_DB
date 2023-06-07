ALTER TABLE idioma_pelicula 
ADD CONSTRAINT idioma_fk
FOREIGN KEY (id_idioma) REFERENCES idiomas(id),
ADD CONSTRAINT pelicula_fk 
FOREIGN KEY (id_pelicula) REFERENCES peliculas(id);

ALTER TABLE peliculas 
ADD CONSTRAINT precuela_fk
FOREIGN KEY (id_precuela) REFERENCES peliculas(id),
ADD CONSTRAINT secuela_fk
FOREIGN KEY (id_secuela) REFERENCES peliculas(id);


ALTER TABLE titulo_pelicula 
ADD CONSTRAINT titulo_pelicula_p_fk
FOREIGN KEY (id_pelicula) REFERENCES peliculas(id),
ADD CONSTRAINT titulo_pelicula_t_fk
FOREIGN KEY (id_titulo) REFERENCES titulos_de_peliculas(id);
