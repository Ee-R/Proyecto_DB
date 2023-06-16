-- 2)
CREATE VIEW select_peliculas_con_un_actor_director AS
SELECT id_pelicula,COUNT(*) "cuenta_actor_director" 
FROM participaciones part 
INNER JOIN participacion_rol partr ON partr.id_participacion = part.id
INNER JOIN roles r ON r.id = partr.id_rol
WHERE r.nombre IN ("actor principal","director")
GROUP BY part.id HAVING cuenta_actor_director >=2 ;

SELECT tdp.titulo 
FROM peliculas_con_actor_director pad
INNER JOIN titulo_pelicula tp
ON tp.id_pelicula=pad.id_pelicula
INNER JOIN titulos_de_peliculas tdp ON 
tdp.id=tp.id_titulo GROUP BY tp.id_pelicula;

-- El group by, en teoria forma grupos (que quedaran en especies de tablas nuevas) que tienen los mismos 
-- valores en determinada columna seleccionada, luego "colapsa" todo en un registro y termino no teniendo
-- datos sobre el colapso, oculta informacion.
-- Las funciones de columna, tratan cada grupo como una tabla nueva antes de que se colapsen
-- en el group by, y aplica la funcion en cada grupo formado 

-- El having sirve como un where, para columnas, los registros que cumplan
-- con las condiciones en la columna seran tomados, si no, no.

-- CREATE VIEW myview AS ...query... me deja guardar vistas, o sea consultas
-- del tipo select


-- 3)
SELECT tdp.titulo, COUNT(*) "numero_actores_que_actuan"
FROM participaciones part
INNER JOIN participacion_rol partr ON part.id=partr.id_participacion 
INNER JOIN roles r ON r.id=partr.id_rol
INNER JOIN titulo_pelicula tp ON tp.id_pelicula = part.id_pelicula
INNER JOIN titulos_de_peliculas tdp ON tdp.id=tp.id_titulo
WHERE r.nombre IN ("actor principal","actor secundario") 
GROUP BY part.id_pelicula;

-- 6)
SELECT AVG(duracion_minutos) 
FROM peliculas p 
WHERE p.fecha_estreno <"2000-01-01";

-- 10
SELECT gdp.nombre,COUNT(*) 
FROM peliculas p 
INNER JOIN genero_pelicula gp ON gp.id_pelicula=p.id
INNER JOIN generos_de_peliculas gdp ON gdp.id = gp.id_genero_de_pelicula
GROUP BY(gdp.nombre);
