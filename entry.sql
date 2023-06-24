TRUNCATE TABLE idiomas;
TRUNCATE TABLE idioma_pelicula;
TRUNCATE TABLE peliculas;
TRUNCATE TABLE titulos_de_peliculas;
TRUNCATE TABLE personas;
TRUNCATE TABLE roles;
TRUNCATE TABLE participaciones;
TRUNCATE TABLE genero_pelicula;
TRUNCATE TABLE generos_de_peliculas;
TRUNCATE TABLE serie_pelicula;
TRUNCATE TABLE series_de_peliculas;

-- Las tablas no es que no estan normalizadas, solo aplique desnormalizacion,
-- total los valores no van a cambiar (?)

INSERT INTO series_de_peliculas(nombre) VALUES 
("Back to the future");

INSERT INTO serie_pelicula(id_pelicula,id_serie,parte) VALUES (9,1,1),(10,1,2),(11,1,3);
-- no esta totalmente normalizado, perdon profe, se repite el 1

INSERT INTO peliculas(oscar,duracion_minutos,fecha_estreno) VALUES
(TRUE,127,'1989-05-24'), -- indiana jones
(TRUE,125,'2001-07-20'), -- chihiro
(TRUE,121,'1977-05-25'), -- star wars IV
(FALSE,101,'1995-12-15'), -- jumanji
(TRUE,142,'1994-06-23'), -- forrest gump
(TRUE,103,'1988-06-21'), -- who framed roger rabbit
(TRUE,194,'1997-12-18'), -- titanic
(FALSE,102,'2015-05-18'), -- inside out
(TRUE,111,'1985-07-03'), -- back to the future I
(FALSE,108,'1989-11-22'), -- back to the future II
(FALSE,118,'1990-05-25'), -- back to the future III
(TRUE,177,'1995-05-24'); -- braveheart

INSERT INTO idiomas(nombre_iso,codigo_iso) VALUES 
("Spanish","es"), -- 1
("German","de"), -- 2
("English","en"), -- 3
("French","fr"), -- 4
("Greek","el"), -- 5
("Italian","it"), -- 6
("Japanese","ja"); -- 7

INSERT INTO roles(nombre) VALUES
("director fotografia"), -- camaras
("diseno de produccion"),("direccion arte"),("decoracion del set"), -- arte
("vestuarista"), ("maquillaje"),
("editor"), -- edicion
("director"),-- direccion
("productor"),("casting"),("manager produccion"),("supervisor postproduccion"),
("supervisor produccion"),("coproductor"),("productor ejecutivo"), 
("actor principal"),("actor secundario"), ("actor de voz"), -- actores
("guionista"),("autor"),("personajes"), -- guiones
("compositor"), -- sonido
("animacion"),
("historia");
 
 
 
INSERT INTO personas(nombre,apellido) VALUES
("Kate","Winslet"),
("Leonardo","DiCaprio"),
("Frances","Fisher"),
("Billy","Zane"),
("Kathy","Bates"),
("Gloria","Stuart"),
("Bill","Paxton"),
("Bernard","Hill"),
("Peter","Lamont"),
("Martin","Laing"),
("Deborah","Scott"),
("Michael","Ford"),
("Conrad","Buff IV"),
("James","Cameron"),
("Richard","Harris"),
("Mali","Finn"),
("Sharon","Mann"),
("Anna","Roth"),
("Eric","Roth"),
("Lisa Denis","Kennedy"),
("Giedra","Rackauskas"),
("Hayao","Miyazaki"),
("Toshio","Suzuki"),
("Rumi","Hîragi"),
("Miyu","Irino"),
("Mari","Natsuki"),
("Takeshi","Seyama"),
("Kaori","Fujii"),
("Naoya","Furukawa"),
("Makiko","Futaki"),
("Hideyoshi","Hamatsu"),
("Shinji","Hashimoto"),
("Takeshi","Imamura"),
("Kuniyuki","Ishii"),
("Norobu","Yoshida"),
("Yôji","Takeshige"),
("Joe","Hisaishi"),
("Atsushi","Okui"),
("Yasuyoshi","Tokuma"),
("Mark","Hamill"),
("Carrie","Fisher"),
("Peter","Cushing"),
("Anthony","Daniels"),
("Kenny","Baker"),
("Alec","Guinness"),
("George","Lucas"),
("Gary","Kurtz"),
("Gilbert","Taylor"),
("John","Williams"),
("Rob","Bottin"),
("John","Mollo"),
("Rick","McCallum"),
("Pete","Docter"),
("Meg","LeFauve"),
("Josh","Cooley"),
("Amy","Poehler"),
("Phyllis","Smith"),
("Richard","Kind"),
("Bill","Hader"),
("Lewis","Black"),
("Mindy","Kaling"),
("Mel","Gibson"),
("Patsy","Pollock"),
("Bruce","Davey"),
("John","Toll"),
("Tom","Sanders"),
("Steven","Rosenblum"),
("Catherine","McCormack"),
("Winston","Groom"),
("Sophie","Marceau"),
("Patrick","McGoohan"),
("Angus","Macfadyen"),
("Brendan","Gleeson"),
("James","Robinson"),
("James","Cosmo"),
("Robert","Zemeckis"),
("Bob","Gale"),
("Michael J.","Fox"),
("Christopher","Lloyd"),
("Lea","Thompson"),
("Crispin","Glover"),
("Thomas F.","Wilson"),
("James","Tolkan"),
("Claudia","Wells"),
("Dean","Cundey"),
("Gary K.","Wolf"),
("Alan","Silvestri"),
("Lawrence G","Paul"),
("Harry","Keramidas"),
("Arthur","Schmidt"),
("Tom","Hanks"),
("Bob","Hoskins"),
("Robin","Wright"),
("Gary","Sinise"),
("Sally","Field"),
("Mykelti","Williamson"),
("Rebecca","Williams"),
("Wendy","Finerman"),
("Steve","Tisch"),
("Peter S.","Seaman"),
("Charles","Fleischer"),
("Steven","Spielberg"),
("Steve","Starkey"),
("Robert","Watts"),
("Joanna","Johnston"),
("Roger","Cain"),
("Harrison","Ford"),
("Sean","Connery"),
("Denholm","Elliott"),
("Alison","Doody"),
("John","Rhys-Davies"),
("Julian","Glover"),
("River","Phoenix"),
("Douglas","Slocombe"),
("Ben","Burtt"),
("Elliot","Scott"),
("Michael","Kahn"),
("Frank","Marshall"),
("Michael D.","Moore"),
("Philip","Kaufman"),
("Menno","Meyjes"),
("Jeffrey","Boam"),
("Arthur F","Repola"),
("Maggie","Cartier"),
("Mike","Fenton"),
("Valorie","Massalas"),
("Chris","Van Allsburg"),
("Jonathan","Hensleigh"),
("Greg","Taylor"),
("Jim","Strain"),
("William","Teitler"),
("Scott","Kroopf"),
("Larry J.","Franco"),
("Joe","Johnston"),
("Robin","Williams"),
("Jonathan","Hyde"),
("Kirsten","Dunst"),
("Bradley","Pierce"),
("Bonnie","Hunt"),
("Bebe","Neuwirth"),
("Thomas E. ","Ackerman"),
("James","Horner"),
("James D. ","Bissell"),
("Robert","Dalva"),
("Randall","Wallace"),
("Don","Hahn");
                             
INSERT INTO titulos_de_peliculas(titulo) VALUES
-- Sen to Chihiro no Kamikakushi
-- 1
("Spirited Away"),
("Chihiros Reise ins Zauberland"),
("Le Voyage de Chihiro"),
("El viaje de Chihiro"),
-- 5
("Indiana Jones and the Last Crusade"),
("Indiana Jones und der letzte Kreuzzug"),
("Indiana Jones et la Dernière Croisade"),
("Indiana Jones y la última cruzada"),
-- 9
("Star Wars: Episode IV – A New Hope"),
("Star Wars: Episode IV – Eine neue Hoffnung"),
("Star Wars: episodio IV - una nueva esperanza"),
("Star Wars, épisode IV : Un nouvel espoir"),

-- 13
("Jumanji"),

-- 14
("Forrest Gump"),

-- 15
("Who Framed Roger Rabbit"),
("Falsches Spiel mit Roger Rabbit"),
("Qui veut la peau de Roger Rabbit"),
("¿Quién engañó a Roger Rabbit?"),

-- 19
("Titanic"),

-- 20
("Inside Out"),
("Alles steht Kopf"),
("Vice-Versa"),

-- 23
("Back to the Future "),
("Retour vers le futur"),
("Zurück in die Zukunft"),
("Volver Al Futuro"),

-- 27
("Back to the Future II"),
("Retour vers le futur II"),
("Zurück in die Zukunft II"),
("Volver Al Futuro II"),

-- 31
("Back to the Future III"),
("Retour vers le futur III"),
("Zurück in die Zukunft III"),
("Volver Al Futuro III"),

-- 35
("Braveheart"),
("Corazón valiente"),
-- 37
("Sen to Chihiro no Kamikakushi"),
("La città incantata"),
-- 39
("Indiana Jones e l'ultima crociata"),
-- 40
("Guerre stellari"),
-- 41
("Chi ha incastrato Roger Rabbit"),
-- 42
("Ritorno al futuro"),
("Ritorno al futuro II"),
("Ritorno al futuro III"),
-- 45
("Braveheart: Cuore impavido");


INSERT INTO generos_de_peliculas(nombre) VALUES
("Animacion"),
("Fantasia"),
("Accion"),
("Aventura"),
("Comedia"),
("Ciencia Ficcion"),
("Drama"),
("Desastres"),
("Historico");

INSERT INTO genero_pelicula(id_pelicula,id_genero_de_pelicula) VALUES
(1,3),(1,4),(1,5),
(2,1),(2,2),
(3,4),(3,2),(3,6),
(4,5),(4,2),
(5,5),(5,7),
(6,1),(6,5),(6,7),
(7,8),(7,9),(7,7),
(8,1),(8,5),(8,7),
(9,4),(9,5),(9,6),
(10,4),(10,5),(10,6),
(11,4),(11,5),(11,6),
(12,3),(12,7),(12,9);

-- 1-es 2-de 3-en 4-fr 5-el 6-it 7-ja
INSERT INTO idioma_pelicula(id_pelicula,id_titulo,id_idioma) VALUES
(1,5,3),(1,6,2),(1,7,4),(1,8,1),(1,39,6),
(2,1,3),(2,2,2),(2,3,4),(2,4,1),(2,37,7),(2,38,6),
(3,9,3),(3,10,2),(3,11,1),(3,12,4),(3,40,6),
(4,13,3),(4,13,2),(4,13,1),(4,13,4),
(5,14,3),(5,14,2),(5,14,1),(5,14,4),
(6,15,3),(6,16,2),(6,17,4),(6,13,1),(6,41,6),
(7,19,3),(7,19,2),(7,19,4),(7,19,1),
(8,20,3),(8,20,1),(8,21,2),(8,22,4),
(9,23,3),(9,24,4),(9,25,2),(9,26,1),(9,42,6),
(10,27,3),(10,28,4),(10,29,2),(10,30,1),(10,43,6),
(11,31,3),(11,32,4),(11,33,2),(11,34,1),(11,44,6),
(12,35,3),(12,35,4),(12,35,2),(12,36,1),(12,45,6);

UPDATE idioma_pelicula ip SET ip.idioma_original=TRUE WHERE
(ip.id_pelicula=1 AND ip.id_idioma IN (2,3)) OR
(ip.id_pelicula=2 AND ip.id_idioma=7) OR
(ip.id_pelicula=3 AND ip.id_idioma=3) OR
(ip.id_pelicula=4 AND ip.id_idioma=3) OR
(ip.id_pelicula=5 AND ip.id_idioma=3) OR
(ip.id_pelicula=6 AND ip.id_idioma=3) OR
(ip.id_pelicula=7 AND ip.id_idioma=3) OR
(ip.id_pelicula=8 AND ip.id_idioma=3) OR
(ip.id_pelicula=9 AND ip.id_idioma=3) OR
(ip.id_pelicula=10 AND ip.id_idioma=3) OR
(ip.id_pelicula=11 AND ip.id_idioma=3) OR (ip.id_pelicula=12 AND ip.id_idioma IN (3,4));

-- indiana jones
-- chihiro
-- star wars IV
-- jumanji
-- forrest gump
-- who framed roger rabbit
-- titanic
-- inside out
-- back to the future I
-- back to the future II
-- back to the future III
-- braveheart

INSERT INTO participaciones(id_pelicula,id_persona,id_rol) VALUES
(1,46,7),(1,46,15),(1,46,21),(1,46,24),(1,120,21),(1,121,24),(1,122,19),(1,104,9),(1,123,14),(1,124,10),(1,125,10),(1,126,10),(1,102,10),(1,107,16),(1,108,16),(1,109,17),(1,110,16),(1,111,17),(1,112,16),(1,113,17),(1,49,22),(1,115,22),(1,116,2),(1,117,7),(1,118,14),(1,119,14),(2,22,8),(2,22,19),(2,23,9),(2,24,18),(2,25,18),(2,26,18),(2,27,18),(2,28,23),(2,29,23),(2,30,23),(2,31,23),(2,32,23),(2,33,23),(2,34,23),(2,35,2),(2,36,3),(2,37,22),(2,39,15),(3,46,7),(3,46,8),(3,46,15),(3,46,20),(3,47,9),(3,52,9),(3,40,16),(3,41,16),(3,42,17),(3,107,16),(3,43,17),(3,44,17),(3,45,16),(3,49,22),(3,50,6),(3,51,5),(4,127,20),(4,128,19),(4,129,19),(4,130,19),(4,131,9),(4,132,9),(4,133,15),(4,134,8),(4,135,16),(4,136,17),(4,137,16),(4,138,16),(4,139,16),(4,140,17),(4,142,22),(4,143,2),(4,144,7),(5,99,9),(5,76,8),(5,91,16),(5,93,17),(5,94,17),(5,95,17),(5,96,17),(5,98,9),(5,87,22),(5,90,7),(6,86,20),(6,100,19),(6,146,14),(6,118,9),(6,103,14),(6,104,9),(6,76,8),(6,92,16),(6,79,17),(6,101,18),(6,87,22),(6,106,2),(6,116,2),(6,105,5),(6,90,7),(7,1,16),(7,2,16),(7,3,17),(7,4,17),(7,5,17),(7,6,17),(7,7,17),(7,8,17),(7,9,2),(7,10,3),(7,11,5),(7,12,4),(7,13,7),(7,14,7),(7,14,8),(7,14,19),(7,15,7),(7,16,10),(7,17,11),(7,18,11),(7,20,12),(7,21,13),(8,53,8),(8,53,18),(8,53,19),(8,54,19),(8,55,18),(8,55,19),(8,56,18),(8,57,18),(8,58,18),(8,59,18),(8,60,18),(8,61,18),(9,76,8),(9,76,20),(9,77,9),(9,77,20),(9,78,16),(9,79,16),(9,80,16),(9,81,16),(9,82,17),(9,83,17),(9,84,17),(9,87,22),(9,89,7),(9,88,2),(9,90,7),(10,76,8),(10,76,20),(10,77,9),(10,77,20),(10,78,16),(10,79,16),(10,80,16),(10,81,17),(10,82,17),(10,83,17),(10,85,22),(10,89,7),(10,88,2),(10,90,7),(10,125,10),(11,76,8),(11,76,20),(11,77,9),(11,77,20),(11,78,16),(11,79,16),(11,80,16),(11,81,17),(11,82,17),(11,83,17),(11,85,22),(11,88,7),(11,89,2),(11,90,7),(11,125,10),(12,145,20),(12,62,8),(12,62,9),(12,62,16),(12,63,10),(12,66,2),(12,67,7),(12,68,16),(12,70,17),(12,72,17),(12,73,17),(12,74,17),(12,75,17);
-- esto tampoco esta completamente normalizado,se repite la pelicula, no me pagan lo suficiente (?
