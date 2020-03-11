-- Acevedo Cardona Adelaid Lesdeymariet [16211957]

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
  ("Horde", 
  [
   ("Hellig Usvart",1994,12,"40:30 min"), 
   ("Alive in Oslo",2007,10,"36:04 min")
  ], 
  1994, 
  "Unblack Metal",
  [
  ("Jayson Sherlock", "Bateria", 49, 1994, False)
  ],
  "",
  []),

  -- Grupo 2

  ("Homeshake", 
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
  "",
  []),

  -- Grupo 3

  ("Burzum", 
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
  "",
  []),

  -- Grupo 4

  ("Seltzer", 
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
  "",
  []),

  -- Grupo 5

  ("City and Colour", 
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
  "",
  []),

  -- Grupo 6

  ("Aries", 
  [("Falli",2004,15,"1:00 hr")],
  2004, 
  "Country Alternativo", 
  [
  ("Isabel Fernández Reviriego", "Teclado" , 40, 2004, True)
  ],
  "",
  []),

  -- Grupo 7

  ("Twenty One Pilots", 
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
  ("Tyler Joseph", "Vocalista" , 31, 2009, True),
  ("","",1,1,True)
  ],
  "",
  []),

  -- Grupo 8

  ("Magic!", 
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
  ("Isabel Fernández Reviriego", "Teclado" , 40, 2004, True)
  ],
  "",
  []),

   -- Grupo 9

  ("The Chainsmokers", 
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
  ("Isabel Fernández Reviriego", "Teclado" , 40, 2004, True)
  ],
  "",
  [])
  ]

-- Funcion por Año de Debut → Devuelve los Grupos Musicales que Debutaron en el Mismo Año

fad :: Grupos -> AñoDebut -> [Grupo]
fad lista n = [(nombregrupo, albumes, añodebut, genero, integrantes, touractual, ciudadesdeltour) | (nombregrupo, albumes, añodebut, genero, integrantes, touractual, ciudadesdeltour) <- lista, añodebut == n]

-- Funcion de Integrantes Activos → Devuelve la informacion de los Integrantes

fia :: Grupos -> Integrantes
fia lista = [(nombreintegrante, instrumentos, edad, añoingreso, status) | (nombregrupo, albumes, añodebut, genero, integrantes, touractual, ciudadesdeltour) <- lista, (nombreintegrante, instrumentos, edad, añoingreso, status) <- integrantes, status == True]

{-encontrarPorActivo :: Bandas -> BandaNombre -> Integrantes
encontrarPorActivo lista x =  [(nombre, instrumento, edad, activo, integracion) | (bandaNombre, añoDebut, genero, albumes, integrantes, tourActual, ciudadesDelTour) <- (encontrarBanda lista x), (nombre, instrumento, edad, activo, integracion) <- integrantes, activo == True]-}

-- Funcion de Albumes → Devuelve la informacion del Grupo Musical 

fa :: Grupos -> NombreAlbum -> [Grupo]
fa lista n = [(nombregrupo, albumes, añodebut, genero, integrantes, touractual, ciudadesdeltour) | (nombregrupo, albumes, añodebut, genero, integrantes, touractual, ciudadesdeltour) <- lista , (nombrealbum, año, nocanciones, duracion) <- albumes, nombrealbum == n]

-- Funcion de Bateristas → Devuelve la informacion de los Integrantes

fb :: Grupos -> Integrantes
fb lista = [(nombreintegrante, instrumentos, edad, añoingreso, status) | (nombregrupo, albumes, añodebut, genero, integrantes, touractual, ciudadesdeltour) <- lista, (nombreintegrante, instrumentos, edad, añoingreso, status) <- integrantes, instrumentos == "Bateria"]

-- Funcion por Genero →

fg :: Grupos -> Genero -> [Grupo]
fg lista n = [(nombregrupo, albumes, añodebut, genero, integrantes, touractual, ciudadesdeltour) | (nombregrupo, albumes, añodebut, genero, integrantes, touractual, ciudadesdeltour) <- lista, genero == n]

-- Funcion de Guitarristas Inactivos →

fgi :: Grupos -> Integrantes
fgi lista = [(nombreintegrante, instrumentos, edad, añoingreso, status) | (nombregrupo, albumes, añodebut, genero, integrantes, touractual, ciudadesdeltour) <- lista, (nombreintegrante, instrumentos, edad, añoingreso, status) <- integrantes, instrumentos == "Guitarra" && status == False]

-- Funcion de Integrantes Posteriores al año 2000

fip :: Grupos -> Integrantes
fip lista = [(nombreintegrante, instrumentos, edad, añoingreso, status) | (nombregrupo, albumes, añodebut, genero, integrantes, touractual, ciudadesdeltour) <- lista, (nombreintegrante, instrumentos, edad, añoingreso, status) <- integrantes, añoingreso > 2000]


{- Links:
   https://es.wikipedia.org/wiki/Horde_(banda)
   https://es.wikipedia.org/wiki/Homeshake
   https://es.wikipedia.org/wiki/Burzum
   https://es.wikipedia.org/wiki/Seltzer_(banda)
   https://en.wikipedia.org/wiki/Sleep_Party_People
   https://es.wikipedia.org/wiki/City_and_Colour
   https://es.wikipedia.org/wiki/Aries_(banda)
   -}
