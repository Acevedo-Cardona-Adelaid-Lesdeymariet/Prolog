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
  [
  ("Horde", 
  [("Hellig Usvart",1994,12,"40:30"), ("Alive in Oslo",2007,10,"34:44")], 
  1994, 
  "Unblack Metal",
  [("Jayson Sherlock", "Bateria", 49, 1994, False)],
  "",
  []),
  
  ("Homeshake", 
  [("Falli",2005,15,"1:00 hr")],
  2012, 
  "Hypnagogic Pop", 
  [("Peter Sagar", "Guitarra" , 29, 2012, True)],
  "",
  []),

  ("Burzum", 
  [("Falli",2005,15,"1:00 hr")],
  1991, 
  "Black Metal", 
  [("Varg Vikernes", "Bajo" , 47, 1991, True)], 
  "",
  []),
  
  ("Seltzer", 
  [("Falli",2005,15,"1:00 hr")],
  2010, 
  "Folk", 
  [("Gabriel Marcelo García Rodríguez", "Guitarra" , 31, 2010, True)],
  "",
  []),

  ("City and Colour", 
  [("Falli",2004,15,"1:00 hr")],
  2004, 
  "Country Alternativo", 
  [("Dallas Green", "Guitarra" , 39, 2004, True)],
  "",
  []),

  ("Aries", 
  [("Falli",2004,15,"1:00 hr")],
  2004, 
  "Country Alternativo", 
  [("Isabel Fernández Reviriego", "Teclado" , 40, 2004, True)],
  "",
  [])
  ]

-- Funcion por Año de Debut → Devuelve los Grupos Musicales que Debutaron en el Mismo Año

fad :: Grupos -> AñoDebut -> [Grupo]
fad lista n = [(nombregrupo, albumes, añodebut, genero, integrantes, touractual, ciudadesdeltour) | (nombregrupo, albumes, añodebut, genero, integrantes, touractual, ciudadesdeltour) <- lista, añodebut == n]

-- Funcion de Integrantes Activos → Devuelve la informacion de los Integrantes

fia :: Grupos -> Integrantes
fia lista = [(nombreintegrante, instrumentos, edad, añoingreso, status) | (nombregrupo, albumes, añodebut, genero, integrantes, touractual, ciudadesdeltour) <- lista, (nombreintegrante, instrumentos, edad, añoingreso, status) <- integrantes, status == True]

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
