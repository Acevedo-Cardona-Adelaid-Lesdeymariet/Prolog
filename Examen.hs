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
  [("Skillet", [("Fall",2005,15,"1:00 hr")], 2000, "Rock Evangelico", [("Juan", "Bateria", 15, 2002, True)], "Loco", ["Tijuana", "Mx"]),
  ("Skillet2", [("Falli",2005,15,"1:00 hr")], 2001, "Rock Evangeliczo", [("Juan2", "Guitarra" , 15, 2002, False)], "Loco", ["Tijuana", "Mx"])]

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

