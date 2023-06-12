SELECT id_pelicula,COUNT(*) "cuenta_actor_director" 
FROM participaciones part 
INNER JOIN participacion_rol partr ON partr.id_participacion = part.id
INNER JOIN roles r ON r.id = partr.id_rol
WHERE r.nombre IN ("actor principal","director")
GROUP BY part.id HAVING cuenta_actor_director >=2 ;

-- El group by, en teoria forma grupos (que quedaran en especies de tablas nuevas) que tienen los mismos 
-- valores en determinada columna seleccionada, luego "colapsa" todo en un registro y termino no teniendo
-- datos sobre el colapso, oculta informacion.
-- Las funciones de columna, tratan cada grupo como una tabla nueva antes de que se colapsen
-- en el group by, y aplica la funcion en cada grupo formado 

-- El having sirve como un where, para columnas, los registros que cumplan
-- con las condiciones en la columna seran tomados, si no, no.

-- CREATE VIEW myview AS ...query... me deja guardar vistas, o sea consultas
-- del tipo select
