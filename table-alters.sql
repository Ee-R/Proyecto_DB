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
