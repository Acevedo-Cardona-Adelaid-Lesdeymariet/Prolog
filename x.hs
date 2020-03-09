type NombreA = String
type AñoDebut = Integer
type Duracion = Float
type NoCanciones = Integer
type Grupo = String
type Albumes = [(NombreA, NoCanciones, Duracion)]
type Genero = String

type Nombre = String
type Instrumento = String
type Edad = Integer
type Activo = Bool
type Integracion = Integer
type Integrantes = [(Nombre, Instrumento, Edad, Activo, Integracion)]
type TourActual = String
type CiudadesDelTour = [String]

type Banda = (Grupo, AñoDebut, Genero, Albumes, Integrantes)

type Bandas = [Banda]

test :: Bandas
test = [("Test", 2010, "test2", [("insane", 12, 2.5)], [("Mike", "Bateria", 26, True, 1999), ("Yorch", "Guitarra", 24, False, 2000)]), ("Hola", 2010, "test2", [("holaaa", 12, 2.5)], [("Jason", "Xilofono", 26, True, 2001), ("Michael", "Guitarra", 24, False, 2015)])]

encontrarPorAñoDebut :: Bandas -> AñoDebut -> [Grupo]
encontrarPorAñoDebut lista x = [grupo | (grupo, añoDebut, genero, albumes, integrantes) <- lista, añoDebut == x]

encontrarPorActivo :: Bandas -> [Nombre]
encontrarPorActivo lista = [nombre | (grupo, añoDebut, genero, albumes, integrantes) <- lista, (nombre, instrumento, edad, activo, integracion) <- integrantes, activo == True]

encontrarPorAlbum :: Bandas -> NombreA -> [Grupo]
encontrarPorAlbum lista x = [grupo | (grupo, añoDebut, genero, albumes, integrantes) <- lista , (nombreA, noCanciones, duracion) <- albumes, nombreA == x]

encontrarPorBaterista :: Bandas -> [Nombre]
encontrarPorBaterista lista = [nombre | (grupo, añoDebut, genero, albumes, integrantes) <- lista, (nombre, instrumento, edad, activo, integracion) <- integrantes, instrumento == "Bateria"]

encontrarPorGenero :: Bandas -> Genero -> [Grupo]
encontrarPorGenero lista x = [grupo | (grupo, añoDebut, genero, albumes, integrantes) <- lista, genero == x]

encontrarPorGuitInactivo :: Bandas -> [Nombre]
encontrarPorGuitInactivo lista = [nombre | (grupo, añoDebut, genero, albumes, integrantes) <- lista, (nombre, instrumento, edad, activo, integracion) <- integrantes, instrumento == "Guitarra" && activo == False]

encontrarPost2000 :: Bandas -> [Nombre]
encontrarPost2000 lista = [nombre | (grupo, añoDebut, genero, albumes, integrantes) <- lista, (nombre, instrumento, edad, activo, integracion) <- integrantes, integracion > 2000]

-- función por año de AñoDebut
-- función por integrante Activo
-- función por álbum
-- función de bateristas
-- función por género
-- función de guitarrista inactivos
-- función de integrantes posteriores al año 2000
