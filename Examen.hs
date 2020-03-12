-- Acevedo Cardona Adelaid Lesdeymariet [16211957]

{- 

Notas: 

1.- La primera funcion de cada tipo devuelve todos los atributos relacionados con el registro evaluado, mientras que la segunda solo imprime el nombre.

2.- Todos aquellos integrantes cuyo valor de edad es igual a 0 es porque se desconoce su edad.

-}

-- Atributos de Albumes
type NombreAlbum = String
type Año = Int
type NoCanciones = Int
type Duracion = String

-- Atributos de Integrantes
type NombreIntegrante = String
type Instrumentos = String
type Edad = Int
type AñoIngreso = Int
type Status = Bool

type NombreGrupo = String
type Albumes = [(NombreAlbum, Año, NoCanciones, Duracion)]
type AñoDebut = Int
type Genero = String
type Integrantes = [(NombreIntegrante, Instrumentos, Edad, AñoIngreso, Status)]
type TourActual = String
type CiudadesDelTour = [String]

type Grupo = (NombreGrupo,Albumes,AñoDebut,Genero,Integrantes,TourActual,CiudadesDelTour)

type Grupos = [Grupo] 

listas :: Grupos

listas = 

  -- Grupo 1

  [
  (
   "Horde", 
  [
   ("Hellig Usvart",1994,12,"40:30 min"), 
   ("Alive in Oslo",2007,10,"36:04 min")
  ], 
   1994, 
   "Unblack Metal",
  [
   ("Jayson Sherlock", "Bateria", 49, 1994, False)
  ],
   "Ningun Tour Actual",
  [
  ]
  ),

  -- Grupo 2

  (
   "Homeshake", 
  [
   ("In the Shower",2014,10,"29:45 min"), 
   ("Midnight Snack",2015,12,"33:14 min"), 
   ("Fresh Air",2017,14,"43:13 min"),
   ("Helium",2019,13,"33:11 min")
  ],
   2012, 
   "Hypnagogic Pop", 
  [
   ("Peter Sagar", "Guitarra" , 29, 2012, True)
  ],
   "Ningun Tour Actual",
  [
  ]
  ),

  -- Grupo 3

  (
   "Burzum", 
  [
   ("Burzum",1992,9,"46:07 min"),
   ("Aske",1993,3,"20:02 min"),
   ("Det Som Engang Var",1993,8,"39:59 min"),
   ("Hvis lyset tar oss",1994,4,"44:30 min"),
   ("Filosofem",1996,6,"64:34 min"),
   ("Dauði Baldrs",1997,6,"39:10 min"),
   ("Hliðskjálf",1999,8,"39:10 min"),
   ("Belus",2010,8,"52:16 min"),
   ("Fallen",2011,7,"47:41 min"),
   ("From the Depths of Darkness",2011,11,"62:27 min"),
   ("Umskiptar",2012,11,"64:25 min"),
   ("Sôl austan, Mâni vestan",2013,11,"58:03 min"),
   ("The Ways of Yore",2014,13,"1:08:35 hrs"),
   ("Thulêan Mysteries",2020,23,"1:29:46 hrs")
  ],
   1991, 
   "Black Metal", 
  [
   ("Varg Vikernes", "Bajo" , 47, 1991, True)
  ], 
   "Ningun Tour Actual",
  [
  ]
  ),

  -- Grupo 4

  (
   "Seltzer", 
  [
   ("Fenómeno de Astronautas",2010,9,"34:54 min"),
   ("Puertas Dentro de Puertas",2014,14,"53:17 min"),
   ("Universopolis",2017,5,"22:01 min") 
  ],
   2010, 
   "Folk", 
  [
   ("Gabriel Marcelo García Rodríguez", "Guitarra" , 31, 2010, True)
  ],
   "Ningun Tour Actual",
  [
  ]
  ),

  -- Grupo 5

  (
   "City and Colour", 
  [
   ("Sometimes",2005,10,"44:37 min"),
   ("Live",2007,13,"59:20 min"),
   ("Bring Me Your Love (Standard Edition)",2008,12,"48:19 min"),
   ("Bring Me Your Love (Special Limited Edition)",2008,28,"1:50:47 hrs"),
   ("Little Hell",2011,11,"47:27 min"),
   ("The Hurry and the Harm",2013,12,"50:49 min"),
   ("Rose Ave",2014,10,"36:59 min"),
   ("If I Should Go Before You",2015,11,"50:54 min"),
   ("Guide Me Back Home",2018,20,"97:44 min"),
   ("A Pill for Loneliness",2019,11,"52:17 min")
  ],
   2004, 
   "Country Alternativo", 
  [
   ("Dallas Green", "Guitarra" , 39, 2004, True)
  ],
   "Ningun Tour Actual",
  [
  ]
  ),

  -- Grupo 6

  (
   "Evanescence", 
  [
   ("Fallen",2003,11,"48:55 min"),
   ("Anywhere But Home",2004,14,"61:47 min"),
   ("The Open Door",2006,13,"51:29 min"),
   ("Evanescence",2011,12,"47:15 min"),
   ("Synthesis",2017,16,"62:17 min")
  ],
   1995, 
   "Metal Gótico", 
  [
   ("Amy Lynn Lee", "Piano" , 38, 1995, True),
   ("Timothy Todd McCord", "Bajo", 40, 2006, True),
   ("William Martin Hunt", "Bateria", 48, 2007, True),
   ("William Troy McLawhorn", "Guitarra", 51,2007, True),
   ("Jennifer Majura Indrasen", "Guitarra", 36, 2015, True),
   ("Ben Robert Moody", "Guitarra", 39, 1995, False),
   ("David Hall Hodges", "Teclado", 41, 1999, False),
   ("John Charles LeCompt", "Guitarra", 46, 2002, False),
   ("William Gray", "Bateria", 45, 2002, False),
   ("William James Boyd", "Bajo", 40, 2002, False),
   ("Terry Balsamo", "Guitarra", 47, 2003, False),
   ("Robert Maron Grathanine", "Bateria", 45, 1997, False)
  ],
   "Worlds Collide Tour",
  [
   "Bruselas (Belgica)","Paris (Francia)", "Londres (Reino Unido)","Berlin (Alemania)", "Fráncfort (Alemania)", "Zúrich (Suiza)","Milán (Italia)", "Múnich (Alemania)", "Hamburgo (Alemania)", "Leipzig (Alemania)", "Düsseldorf (Alemania)", "Ámsterdan (Paises Bajos)"
  ]
  ),

  -- Grupo 7

  (
   "Twenty One Pilots", 
  [
   ("Twenty One Pilots",2009,14,"62:00 min"),
   ("Regional At Best",2011,15,"66:25 min"),
   ("Vessel",2013,12,"47:44 min"),
   ("Blurryface",2015,14,"52:17 min"),
   ("Trench",2018,14,"56:04 min")
  ],
   2009, 
   "Hip Hop Alternativo", 
  [
   ("Tyler Robert Joseph", "Vocalista" , 31, 2009, True),
   ("Joshua William Dun","Bateria",31,2011,True),
   ("Nick Thomas","Bajo",0,2009,False),
   ("Chris Salih","Bateria",34,2009,False)
  ],
   "The Bandito Tour 2020",
  [
   "Ciudad de Mexico (Mexico)","Cincinnati (Ohio - Estados Unidos)","Landgraaf (Holanda)","Scheessel (Alemania)","Neuhausen ob Eck (Alemania)","Dublin (Irlanda)","St. Gallen (Suiza)","Gdynia (Polonia)","Rotselaar (Belgica)","Arras (Francia)","Kyiv (Ucrania)","Madrid (España)","Moscu (Rusia)","Ostrava (Republica Checa)","Cluj-Napoca (Rumania)"
  ]
  ),

  -- Grupo 8

  (
   "Magic!", 
  [
   ("Don't Kill the Magic",2014,11,"42:10 min"),
   ("Primary Colours",2016,10,"35:16 min"),
   ("Expectations",2018,13,"42:21 min")
  ],
   2012, 
   "Reggae", 
  [
   ("Nasri Tony Atweh","Vocalista",39,2012,True),
   ("Mark Pellizzer","Guitarra",39,2012,True),
   ("Ben Spivak","Bajo",37,2012,True),
   ("Alexander Tanasijczuk","Bateria",34,2012,True)
  ],
   "Ningun Tour Actual",
  [
  ]
  ),

   -- Grupo 9

  (
   "The Chainsmokers", 
  [
   ("Memories...Do Not Open",2017,12,"43:19 min"),
   ("Sick Boy",2018,10,"32:46 min"),
   ("World War Joy",2019,10,"33:43 min")
  ],
   2012, 
   "Electropop", 
  [
   ("Andrew Taggart","Guitarra" ,30, 2012, True),
   ("Alex Pall","Piano",34,2012,True),
   ("Matt McGuire","Bateria",26,2012,True),
   ("Rhett Bixler","DJ",33,2012,False),
   ("Tony Ann","Piano",26,2017,False)
  ],
   "Ningun Tour Actual",
  [
  ]
  ),

   -- Grupo 10

  (
   "Imagen Dragons",
  [
   ("Speak to Me",2008,5,"19:23 min"),
   ("Imagine Dragons",2009,5,"20:20 min"),
   ("Hell and Silence",2010,5,"17:50 min"),
   ("It's Time",2011,8,"32:01 min"),
   ("Continued Silence",2012,6,"19:25 min"),
   ("Nigth Visions",2012,11,"40:10 min"),
   ("Smoke + Mirrors",2015,13,"50:55 min"),
   ("Evole",2017,11,"40:12 min"),
   ("Origins",2018,12,"40:02 min")
  ],
   2008,
   "Pop Rock",
  [
   ("Dan Reynolds","Voz",32,2008,True),
   ("Ben McKee","Bajo",31,2009,True),
   ("Daniel Wayne Sermon","Mandolina",33,2009,True),
   ("Daniel Platzman","Viola",31,2011,True),
   ("Andrew Tolman","Bateria",32,2008,False),
   ("Brittany Tolman","Guitarra",34,2009,False),
   ("Theresa Flaminio","Piano",33,2011,False),
   ("Dave Lemke","Bajo",32,2008,False),
   ("Aurora Florence","Violin",33,2008,False),
   ("Andrew Beck","Guitarra",33,2008,False)
  ],
   "Ningun Tour Actual",
  [
  ]
  ),

   -- Grupo 11

  (
   "Within Temptation",
  [
   ("Enter",1997,8,"45:00 min"),
   ("Mother Earth",2000,14,"76:07 min"),
   ("The Silent Force",2004,13,"46:24 min"),
   ("The Heart of Everything",2007,11,"57:06 min"),
   ("The Unforgiving",2011,12,"58:10 min"),
   ("Hydra",2014,10,"49:16 min"),
   ("Resist",2019,10,"47:35 min")
  ],
   1996,
   "Metal Sinfónico",
  [
   ("Sharon den Adel","Voz",45,1996,True),
   ("Robert Westerholt","Guitarra",45,1996,True),
   ("Jeroen van Veen","Bajo",45,1996,True),
   ("Rudolf Adrianus Jolie","Guitarra",43,2001,True),
   ("Martijn Spierenburg","Teclado",45,2001,True),
   ("Mike Coolen","Bateria",44,2011,True),
   ("Stefan Helleblade","Guitarra",41,2011,True),
   ("Stephen van Haestregt","Bateria",47,2001,False),
   ("Ciro Palma","Bateria",0,1998,False),
   ("David Martijn Westerholt","Teclado",40,1996,False),
   ("Ivar de Graaf", "Bateria", 46, 1996,False),
   ("Michiel Papenhove", "Guitarra", 44, 1996, False),
   ("Jelle Bakker", "Guitarra", 33, 2001, False),
   ("Dennis Leeflang", "Bateria", 40, 1996, False),
   ("Richard Willemse", "Bateria", 0, 1996, False)
  ],
   "Worlds Collide Tour",
  [
   "Bruselas (Belgica)","Paris (Francia)", "Londres (Reino Unido)","Berlin (Alemania)", "Fráncfort (Alemania)", "Zúrich (Suiza)","Milán (Italia)", "Múnich (Alemania)", "Hamburgo (Alemania)", "Leipzig (Alemania)", "Düsseldorf (Alemania)", "Ámsterdan (Paises Bajos)"
  ]
  ),

   -- Grupo 12

  (
   "Trading Yesterday",
  [
   ("The Beauty and the Tragedy",2004,12,"48:10 min"),
   ("More than This",2006,12,"53:24 min"),
   ("Everything is Broken",2007,6,"23:26 min")
  ],
   2003,
   "Rock Alternativo",
  [
   ("David Hall Hodges","Voz",41,2003,True),
   ("Steven McMorran","Bajo",0,2003,True),
   ("Josh Dunahoo","Guitarra",0,2003,True),
   ("William Barry Hunt","Bateria",42,2006,True),
   ("Mark Colbert", "Bateria", 0, 2003, False)
  ],
   "Ningun Tour Actual",
  [
  ]
  ),

   -- Grupo 13
  
  (
   "Marianas Trench",
  [
   ("Fix Me",2006,11,"39:09 min"),
   ("Masterpiece Theatre",2009,12,"45:41 min"),
   ("Ever After",2011,12,"52:16 min"),
   ("Astoria",2015,17,"57:11 min"),
   ("Phantoms",2019,10,"40:34 min")
  ],
   2001,
   "Pop Punk",
  [
   ("Josh Ramsay","Voz",34,2001,True),
   ("Matt Webb","Guitarra",33,2001,True),
   ("Mike Ayley","Trompeta",39,2001,True),
   ("Ian Casselman","Bateria",36,2001,True),
   ("Royce Whittaker", "Teclado", 24, 2019, True)
  ],
   "Marianas Trench Tour 2020",
  [
   "Fortitude Valley, Queensland (Australia)","Melbourne (Australia)","Sydney, NSW (Australia)","Honolulu, Hawaii (Estados Unidos)","Derby (Reino Unido)"
  ]
  ),

   -- Grupo 14

  (
   "Stuck in the Sound",
  [
   ("Stuck In The Sound",2004,10,"58:80 min"),
   ("Nevermind the Living Dead",2006,13,"56:38 min"),
   ("Shoegazing Kids",2009,12,"45:16 min"),
   ("Pursuit",2012,14,"49:05 min"),
   ("Survivor",2016,11,"42:41 min"),
   ("Billy Believe",2019,12,"44:38 min")
  ],
   2002,
   "Rock Indie",
  [
   ("José Reis Fontão","Voz",0,2002,True),
   ("Emmanuel Barichasse","Guitarra",0,2002,True),
   ("Arno Bordas","Bajo",0,2002,True),
   ("François Ernie","Bateria",0,2002,True),
   ("Romain Della Valle","Piano",0,2012,True)
  ],
   "Ningun Tour Actual",
  [
  ]
  ),

   -- Grupo 15

  (
   "OneRepublic",
  [
   ("Dreaming Out Loud",2007,13,"57:25 min"),
   ("Waking Up",2009,11,"47:28 min"),
   ("Native",2013,12,"46:44 min"),
   ("Oh My My",2016,16,"60:26 min")
  ],
   2002,
   "Pop Rock",
  [
   ("Ryan Benjamin Tedder","Voz",40,2002,True),
   ("Zachary Douglas Filkins","Guitarra",41,2002,True),
   ("Andrew John Brown","Piano",36,2002,True),
   ("Eddie Ray Fisher","Bateria",46,2005,True),
   ("Brent Michael Kutzle","Bajo",34,2007,True),
   ("Brian Willett","Teclado",48,2012,True),
   ("Jerrod Bettis", "Bateria", 0, 2002, False),
   ("Timothy Myers", "Bajo", 35, 2002, False)
  ],
   "Ningun Tour Actual",
  [
  ""
  ]
  )
  ]


fgr :: Grupos -> NombreGrupo -> [Grupo]
fgr lista n = [(nombregrupo, albumes, añodebut, genero, integrantes, touractual, ciudadesdeltour) | (nombregrupo, albumes, añodebut, genero, integrantes, touractual, ciudadesdeltour) <- lista, nombregrupo == n]

-- Funcion por Año de Debut

fad1 :: Grupos -> AñoDebut -> [Grupo]
fad1 lista n = [(nombregrupo, albumes, añodebut, genero, integrantes, touractual, ciudadesdeltour) | (nombregrupo, albumes, añodebut, genero, integrantes, touractual, ciudadesdeltour) <- lista, añodebut == n]

fad2 :: Grupos -> AñoDebut -> [NombreGrupo]
fad2 lista n = [nombregrupo | (nombregrupo, albumes, añodebut, genero, integrantes, touractual, ciudadesdeltour) <- lista, añodebut == n]

-- Funcion de Integrantes Activos 

fia1 :: Grupos -> Integrantes
fia1 lista = [(nombreintegrante, instrumentos, edad, añoingreso, status) | (nombregrupo, albumes, añodebut, genero, integrantes, touractual, ciudadesdeltour) <- lista, (nombreintegrante, instrumentos, edad, añoingreso, status) <- integrantes, status == True]

fia2 :: Grupos -> [NombreIntegrante]
fia2 lista = [nombreintegrante | (nombregrupo, albumes, añodebut, genero, integrantes, touractual, ciudadesdeltour) <- lista, (nombreintegrante, instrumentos, edad, añoingreso, status) <- integrantes, status == True]

-- Funcion de Albumes 

fa1 :: Grupos -> NombreAlbum -> [Grupo]
fa1 lista n = [(nombregrupo, albumes, añodebut, genero, integrantes, touractual, ciudadesdeltour) | (nombregrupo, albumes, añodebut, genero, integrantes, touractual, ciudadesdeltour) <- lista , (nombrealbum, año, nocanciones, duracion) <- albumes, nombrealbum == n]

fa2 :: Grupos -> NombreAlbum -> [NombreGrupo]
fa2 lista n = [nombregrupo | (nombregrupo, albumes, añodebut, genero, integrantes, touractual, ciudadesdeltour) <- lista , (nombrealbum, año, nocanciones, duracion) <- albumes, nombrealbum == n]

-- Funcion de Bateristas 

fb1 :: Grupos -> Integrantes
fb1 lista = [(nombreintegrante, instrumentos, edad, añoingreso, status) | (nombregrupo, albumes, añodebut, genero, integrantes, touractual, ciudadesdeltour) <- lista, (nombreintegrante, instrumentos, edad, añoingreso, status) <- integrantes, instrumentos == "Bateria"]

fb2 :: Grupos -> [NombreIntegrante]
fb2 lista = [nombreintegrante | (nombregrupo, albumes, añodebut, genero, integrantes, touractual, ciudadesdeltour) <- lista, (nombreintegrante, instrumentos, edad, añoingreso, status) <- integrantes, instrumentos == "Bateria"]

-- Funcion por Genero 

fg1 :: Grupos -> Genero -> [Grupo]
fg1 lista n = [(nombregrupo, albumes, añodebut, genero, integrantes, touractual, ciudadesdeltour) | (nombregrupo, albumes, añodebut, genero, integrantes, touractual, ciudadesdeltour) <- lista, genero == n]

fg2 :: Grupos -> Genero -> [NombreGrupo]
fg2 lista n = [nombregrupo | (nombregrupo, albumes, añodebut, genero, integrantes, touractual, ciudadesdeltour) <- lista, genero == n]

-- Funcion de Guitarristas Inactivos 

fgi1 :: Grupos -> Integrantes
fgi1 lista = [(nombreintegrante, instrumentos, edad, añoingreso, status) | (nombregrupo, albumes, añodebut, genero, integrantes, touractual, ciudadesdeltour) <- lista, (nombreintegrante, instrumentos, edad, añoingreso, status) <- integrantes, instrumentos == "Guitarra" && status == False]

fgi2 :: Grupos -> [NombreIntegrante]
fgi2 lista = [nombreintegrante | (nombregrupo, albumes, añodebut, genero, integrantes, touractual, ciudadesdeltour) <- lista, (nombreintegrante, instrumentos, edad, añoingreso, status) <- integrantes, instrumentos == "Guitarra" && status == False] 

-- Funcion de Integrantes Posteriores al año 2000

fip1 :: Grupos -> Integrantes
fip1 lista = [(nombreintegrante, instrumentos, edad, añoingreso, status) | (nombregrupo, albumes, añodebut, genero, integrantes, touractual, ciudadesdeltour) <- lista, (nombreintegrante, instrumentos, edad, añoingreso, status) <- integrantes, añoingreso > 2000]

fip2 :: Grupos -> [NombreIntegrante]
fip2 lista = [nombreintegrante | (nombregrupo, albumes, añodebut, genero, integrantes, touractual, ciudadesdeltour) <- lista, (nombreintegrante, instrumentos, edad, añoingreso, status) <- integrantes, añoingreso > 2000]

