type NombreA = String
type AñoDebut = Integer
type Duracion = Float
type NoCanciones = Integer
type BandaNombre = String
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

type Banda = (BandaNombre, AñoDebut, Genero, Albumes, Integrantes)

type Bandas = [Banda]

test :: Bandas
test = [("Test", 2010, "test2", [("insane", 12, 2.5)], [("Mike", "Bateria", 26, True, 1999), ("Yorch", "Guitarra", 24, False, 2000)]), ("Hola", 2010, "test2", [("test2", 12, 2.5)], [("Jason", "Xilofono", 26, True, 2001), ("Michael", "Guitarra", 24, False, 2015)])]

encontrarPorAñoDebut :: Bandas -> AñoDebut -> [BandaNombre]
encontrarPorAñoDebut lista x = [bandaNombre | (bandaNombre, añoDebut, genero, albumes, integrantes) <- lista, añoDebut == x]

encontrarPorAñoDebut2 :: Bandas -> AñoDebut -> [Banda]
encontrarPorAñoDebut2 lista x = [(bandaNombre, añoDebut, genero, albumes, integrantes) | (bandaNombre, añoDebut, genero, albumes, integrantes) <- lista, añoDebut == x]

encontrarPorActivo :: Bandas -> [Nombre]
encontrarPorActivo lista = [nombre | (bandaNombre, añoDebut, genero, albumes, integrantes) <- lista, (nombre, instrumento, edad, activo, integracion) <- integrantes, activo == True]

encontrarPorActivo2 :: Bandas -> Integrantes
encontrarPorActivo2 lista = [(nombre, instrumento, edad, activo, integracion) | (bandaNombre, añoDebut, genero, albumes, integrantes) <- lista, (nombre, instrumento, edad, activo, integracion) <- integrantes, activo == True]

encontrarPorAlbum :: Bandas -> NombreA -> [BandaNombre]
encontrarPorAlbum lista x = [bandaNombre | (bandaNombre, añoDebut, genero, albumes, integrantes) <- lista , (nombreA, noCanciones, duracion) <- albumes, nombreA == x]

encontrarPorAlbum2 :: Bandas -> NombreA -> [Banda]
encontrarPorAlbum2 lista x = [(bandaNombre, añoDebut, genero, albumes, integrantes) | (bandaNombre, añoDebut, genero, albumes, integrantes) <- lista , (nombreA, noCanciones, duracion) <- albumes, nombreA == x]

encontrarPorBaterista :: Bandas -> [Nombre]
encontrarPorBaterista lista = [nombre | (bandaNombre, añoDebut, genero, albumes, integrantes) <- lista, (nombre, instrumento, edad, activo, integracion) <- integrantes, instrumento == "Bateria"]

encontrarPorBaterista2 :: Bandas -> Integrantes
encontrarPorBaterista2 lista = [(nombre, instrumento, edad, activo, integracion) | (bandaNombre, añoDebut, genero, albumes, integrantes) <- lista, (nombre, instrumento, edad, activo, integracion) <- integrantes, instrumento == "Bateria"]

encontrarPorGenero :: Bandas -> Genero -> [BandaNombre]
encontrarPorGenero lista x = [bandaNombre | (bandaNombre, añoDebut, genero, albumes, integrantes) <- lista, genero == x]

encontrarPorGenero2 :: Bandas -> Genero -> [Banda]
encontrarPorGenero2 lista x = [(bandaNombre, añoDebut, genero, albumes, integrantes) | (bandaNombre, añoDebut, genero, albumes, integrantes) <- lista, genero == x]

encontrarPorGuitInactivo :: Bandas -> [Nombre]
encontrarPorGuitInactivo lista = [nombre | (bandaNombre, añoDebut, genero, albumes, integrantes) <- lista, (nombre, instrumento, edad, activo, integracion) <- integrantes, instrumento == "Guitarra" && activo == False]

encontrarPorGuitInactivo2 :: Bandas -> Integrantes
encontrarPorGuitInactivo2 lista = [(nombre, instrumento, edad, activo, integracion) | (bandaNombre, añoDebut, genero, albumes, integrantes) <- lista, (nombre, instrumento, edad, activo, integracion) <- integrantes, instrumento == "Guitarra" && activo == False]

encontrarPost2000 :: Bandas -> [Nombre]
encontrarPost2000 lista = [nombre | (bandaNombre, añoDebut, genero, albumes, integrantes) <- lista, (nombre, instrumento, edad, activo, integracion) <- integrantes, integracion > 2000]

encontrarPost20002 :: Bandas -> Integrantes
encontrarPost20002 lista = [(nombre, instrumento, edad, activo, integracion) | (bandaNombre, añoDebut, genero, albumes, integrantes) <- lista, (nombre, instrumento, edad, activo, integracion) <- integrantes, integracion > 2000]

-- función por año de AñoDebut
-- función por integrante Activo
-- función por álbum
-- función de bateristas
-- función por género
-- función de guitarrista inactivos
-- función de integrantes posteriores al año 2000
