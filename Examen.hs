-- Acevedo Cardona Adelaid Lesdeymariet [16211957]

-- Atributos de Albumes
type NombreAlbum = String
type Año = Int
type NoCanciones = Int
type Duracion = String

-- Atributos de Integrantes
type NombreIntegrante = String
type Instrumento = String
type Edad = Int
type AñoIngreso = Int
type Status = String

type NombreGrupo = String
type Albumes = (NombreAlbum, Año, NoCanciones, Duracion)
type AñoDebut = Int
type Genero = String
type Integrantes = (NombreIntegrante, Instrumento, Edad, AñoIngreso, Status)
type TourActual = String
type CiudadesDelTour = [String]

type Grupo = (NombreGrupo,Albumes,AñoDebut,Genero,Integrantes,TourActual,CiudadesDelTour)

type Grupos = [Grupo] 

-- Funcion por Año de Debut

fad :: Grupos -> AñoDebut -> [Grupo]
fad lista n = [grupo | (nombregrupo,albumes,añodebut,genero,integrantes,touractual,ciudadesdeltour) <- lista, añodebut == n]

-- Funcion de Integrantes Activos

fia :: Grupos -> Status -> [Integrantes]
fia lista n = [integrantes | (nombre, instrumento, edad, añoingreso, status) <- lista, status == n == "Activo"]

-- Funcion de Album

fa :: Grupos -> NombreAlbum -> [Albumes]
fa lista n = [albumes | (nombrealbum, año, nocanciones, duracion) <- lista, nombrealbum == n]

-- Funcion de Bateristas 

fb :: Grupos -> Instrumento -> [Integrantes]
fb lista n = [integrantes | (nombre, instrumento, edad, añoingreso, status) <- lista, instrumento == n == "Bateria"]

-- Funcion por Genero 

fg :: Grupos -> Genero -> [Grupo]
fg lista n = [grupo | (nombregrupo, albumes, añodebut, genero, integrantes, touractual, ciudadesdeltour) <- lista, genero == n]

-- Funcion de Guitarristas Inactivos

fgi :: Grupos -> Instrumento -> Activo -> [Integrantes]
fgi lista n r = [integrantes | (nombre, instrumento, edad, añoingreso,status) <- lista, instrumento == n == "Guitarra" && status == r == "Inactivo"]

-- Funcion de Integrantes Posteriores al 2000

fip :: Grupos -> AñoIngreso -> [Integrantes]
fip lista n = [integrantes | (nombre, instrumento, edad, añoingreso, status) <- lista, añoingreso == n == "2000"]
