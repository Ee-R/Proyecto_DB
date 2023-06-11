-- DELETE FROM idiomas;
-- DELETE FROM departamentos;
-- DELETE FROM roles;
-- DELETE FROM rol_departamento;

-- INSERT INTO idiomas(nombre_iso,codigo_iso) VALUES 
-- ("Spanish","es"), -- 1
-- ("German","de"), -- 2
-- ("English","en"), -- 3
-- ("French","fr"), -- 4
-- ("Griego","el"), -- 5
-- ("Italian","it"), -- 6
-- ("Japanese","ja"); -- 7
-- 
-- INSERT INTO roles(nombre) VALUES
-- ("director fotografia"), -- camaras
-- ("diseno de produccion"),("direccion arte"),("decoracion del set"), -- arte
-- ("vestuarista"), ("maquillaje"),
-- ("editor"), -- edicion
-- ("director"),-- direccion
-- ("productor"),("casting"),("manager produccion"),("supervisor postproduccion"),
-- ("supervisor produccion"),("coproductor"),("productor ejecutivo"), 
-- ("actor principal"),("actor secundario"), ("actor de voz"), -- actores
-- ("guionista"),("autor"),("personajes"), -- guiones
-- ("compositor"), -- sonido
-- ("animacion");
-- 
-- 
-- 
INSERT INTO personas(nombre,apellido) VALUES
-- titanic
("Kate", "Winslet"),        
("Leonardo", "DiCaprio"),   
("Frances", "Fisher"),
("Billy", "Zane"),          
("Kathy", "Bates"),         
("Gloria", "Stuart"),       
("Bill", "Paxton"),         
("Bernard" ,"Hill"),        
("Peter", "Lamont"),        
("Martin", "Laing"),        
("Deborah", "Scott"),       
("Michael", "Ford"),        
("Conrad", "Buff IV"),      
("James", "Cameron"),       
("Richard", "Harris"),      
("Mali", "Finn"),           
("Sharon", "Mann"),         
("Anna", "Roth"),           
("Lisa Denis", "Kennedy"),  
("Giedra", "Rackauskas"),   
("Hayao", "Miyazaki"),      
("Toshio", "Suzuki"),       
("Rumi", "Hîragi"),         
("Miyu", "Irino"),          
("Mari", "Natsuki"),        
("Takeshi", "Seyama"),      
("Kaori", "Fujii"),         
("Naoya", "Furukawa"),      
("Makiko", "Futaki"),       
("Hideyoshi", "Hamatsu"),   
("Shinji", "Hashimoto"),    
("Takeshi", "Imamura"),     
("Kuniyuki", "Ishii"),      
("Norobu", "Yoshida"),      
("Yôji", "Takeshige"),      
("Joe", "Hisaishi"),        
("Atsushi", "Okui"),        
("Yasuyoshi", "Tokuma"),    
("Mark", "Hamill"),         
("Carrie", "Fisher"),       
("Peter", "Cushing"),       
("Anthony", "Daniels"),     
("Kenny", "Baker"),         
("Alec", "Guinness"),       
("George", "Lucas"),        
("Gary", "Kurtz"),          
("Gilbert", "Taylor"),      
("John", "Williams"),       
("Rob", "Bottin"),          
("John", "Mollo"),          
("Rick", "McCallum"),       
("Pete", "Docter"),         
("Meg", "LeFauve"),         
("Josh", "Cooley"),         
("Amy", "Poehler"),         
("Phyllis", "Smith"),       
("Richard", "Kind"),        
("Bill", "Hader"),          
("Lewis", "Black"),         
("Mindy", "Kaling"),        
("Mel", "Gibson"),          
("Patsy", "Pollock"),       
("Bruce", "Davey"),         
("John", "Toll"),           
("Tom", "Sanders"),         
("Steven", "Rosenblum"),    
("Catherine", "McCormack"), 
("Sophie", "Marceau"),      
("Patrick", "McGoohan"),    
("Angus", "Macfadyen"),     
("Brendan", "Gleeson"),     
("James", "Robinson"),      
("James", "Cosmo"),         
("Robert", "Zemeckis"),     
("Bob", "Gale"),            
("Michael J.", "Fox"),      
("Christopher", "Lloyd"),   
("Lea", "Thompson"),        
("Crispin", "Glover"),      
("Thomas F.", "Wilson"),    
("James", "Tolkan"),        
("Claudia", "Wells"),       
("Dean", "Cundey"),         
("Alan", "Silvestri"),      
("Lawrence G", "Paul"),     
("Harry", "Keramidas"),     
("Arthur", "Schmidt"),      
("Tom", "Hanks"),           
("Robin", "Wright"),        
("Gary", "Sinise"),         
("Sally", "Field"),         
("Mykelti", "Williamson"),  
("Rebecca", "Williams"),    
("Wendy", "Finerman"),      
("Steve", "Tisch"),         
("Peter S.", "Seaman"),     
("Charles", "Fleischer"),   
("Steven", "Spielberg"),    
("Steve", "Starkey"),       
("Robert", "Watts"),        
("Joanna", "Johnston"),     
("Roger", "Cain"),          
("Harrison", "Ford"),       
("Sean", "Connery"),        
("Denholm", "Elliott"),     
("Alison", "Doody"),        
("John", "Rhys-Davies"),    
("Julian", "Glover"),       
("River", "Phoenix"),       
("Douglas", "Slocombe"),    
("Ben", "Burtt"),           
("Elliot", "Scott"),        
("Michael", "Kahn"),        
("Frank", "Marshall"),      
("Michael D.", "Moore"),    
("Philip", "Kaufman"),      
("Menno", "Meyjes"),        
("Jeffrey", "Boam"),        
("Arthur F", "Repola"),     
("Maggie", "Cartier"),      
("Mike", "Fenton"),         
("Valorie", "Massalas"),    
("Chris", "Van Allsburg"),  
("Jonathan", "Hensleigh"),  
("Greg", "Taylor"),         
("Jim", "Strain"),          
("William", "Teitler"),     
("Scott", "Kroopf"),        
("Larry J.", "Franco"),     
("Joe", "Johnston"),        
("Robin", "Williams"),      
("Jonathan", "Hyde"),       
("Kirsten", "Dunst"),       
("Bradley", "Pierce"),      
("Bonnie", "Hunt"),         
("Bebe", "Neuwirth"),       
("Thomas E. ", "Ackerman"), 
("James", "Horner"),        
("James D. ", "Bissell"),   
("Robert", "Dalva");
                             
                             
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
--42
("Ritorno al futuro"),
("Ritorno al futuro II"),
("Ritorno al futuro III"),
-- 45
("Braveheart: Cuore impavido");

INSERT INTO titulo_pelicula(id_pelicula,id_titulo,id_idioma) VALUES
(1,5,3),(1,6,2),(1,7,4),(1,8,1),(1,39,6),
(2,1,3),(2,2,2),(2,3,3),(2,4,1),(2,37,5),(2,38,6),
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

INSERT INTO generos_de_peliculas(nombres) VALUES
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
(7,8),(7,9),(7,7),
(8,1),(8,5),(8,7),
(9,4),(9,5),(8,6),
(10,4),(9,5),(8,6),
(11,4),(9,5),(8,6),
(12,3),(9,7),(8,9);

INSERT INTO idioma_pelicula(id_pelicula,id_idioma,idioma_original) VALUES
(1,5,TRUE),(1,3,TRUE),(1,2,TRUE),(1,6,FALSE),(1,4,FALSE),(1,7,FALSE),
(2,7,TRUE),(2,3,FALSE),(2,4,FALSE),(2,6,TRUE),(2,7,TRUE),
(3,3,TRUE),(3,1,FALSE),(3,6,FALSE),(3,5,FALSE),(3,2,FALSE),(3,4,FALSE),
(4,3,TRUE),(4,2,FALSE),(4,4,TRUE),(4,1,FALSE),(4,3,FALSE),(4,3,FALSE),
(5,3,TRUE),(5,1,FALSE),
(6,3,TRUE),(6,1,FALSE),
(7,3,TRUE),(7,1,FALSE),
(8,3,TRUE),(8,1,FALSE),
(9,3,TRUE),(9,1,FALSE),
(10,3,TRUE),(10,1,FALSE),
(11,3,TRUE),(10,1,FALSE),
(12,3,TRUE),(12,4,TRUE),(12,1,FALSE);

INSERT INTO participaciones(id_pelicula,id_persona) VALUES
(1,48),(1,134),(1,135),(1,109),(1,131),(1,137),(1,138)
