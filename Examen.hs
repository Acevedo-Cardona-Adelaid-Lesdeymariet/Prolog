
type NombreAlbum = String
type Año = Int
type NoCanciones = Int
type Duracion = String

type NombreIntegrante = String
type Instrumento = String
type Edad = Int
type AñoIngreso = Int
type Activo = String

type NombreGrupo = String
type Albumes = (NombreAlbum, Año, NoCanciones, Duracion)
type AñoDebut = Int
type Genero = String
type Integrantes = (NombreIntegrante, Instrumento, Edad, AñoIngreso, Activo)
type TourActual = String
type CiudadesDelTour = [String]

type Grupo = (NombreGrupo,Albumes,AñoDebut,Genero,Integrantes,TourActual,CiudadesDelTour)

type Grupos = [Grupo] 

-- Funcion por Año de Debut

fad :: Grupos -> AñoDebut -> [Grupo]
fad lista n = [grupo | (nombregrupo,albumes,añodebut,genero,integrantes,touractual,ciudadesdeltour) <- lista, añodebut == n]

-- Funcion de Integrantes Activos

fia :: Grupos -> Activo -> [Integrantes]
fia lista n = [integrantes | (nombre, instrumento, edad, añoingreso, activo) <- lista, activo == n]

-- Funcion de Album

fa :: Grupos -> NombreAlbum -> [Albumes]
fa lista n = [albumes | (nombrealbum, año, nocanciones, duracion) <- lista, nombrealbum == n]

-- Funcion de Bateristas 

fb :: 

-- Funcion por Genero 

-- Funcion de Guitarristas Inactivos

-- Funcion de Integrantes Posteriores al 2000
