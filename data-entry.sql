INSERT INTO peliculas(
  titulo_castellano,
  titulo,
  resumen,
  oscar,
  fecha_estreno,
  duracion_minutos
) VALUES (
  "Volver al Futuro",
  "Back to the Future",
  "Back to the Future is an extremely successful film trilogy starring Marty Mcfly as a hip 1980’s teenager who travels back in time with help from his friend and time machine inventor Dr. Brown. Written by Bob Gale and produced by Robert Zemeckis.",
  FALSE,
  -- las fechas van tipo %Y-%m-%d, hay una tabla de opciones si se busca DATE_FORMAT
  -- tambien el case importa, te dice si van 2 o 1 digitos, cambia el significado
  "1985-07-03",
  111
),
(
  "Titanic",
  "Titanic",
  "Titanic is the blockbuster film from James Cameron starring Leonardo DiCaprio and Kate Winslet as the young lovers on the doomed maiden voyage of the Titanic across the Atlantic Ocean. Commercially the film became the most successful movie of all time.",
  TRUE,
  "1997-12-18",
  194
)
(
  "Star Wars : Episodio IV - Una nueva esperanza",
  "Star Wars : Episode IV - A New Hope",
  "A New Hope was the first Star Wars film from the director, screenwriter, and producer George Lucas, although it is the fourth episode in the series of six. Luke Skywalker, Princes Leia, Darth Vader, C3PO, R2D2 and many other characters from the film are now house-hold-names from one of the most successful film projects of all time.",

)
-- Titanic (597)
--Star Wars: Episode IV – A New Hope (11)
--Spirited Away (129)
--Inside Out (59170)
--Braveheart (197)
--Back to the future (264)
--Forrest Gump (13)
--Who Framed Roger Rabbit (856)
--Indiana Jones and the Last Crusade (89)
--Jumanji (8844)
INSERT INTO idiomas(nombre) VALUES ("Español"),("Deutsch"),("English"),("Portuguese");
