{- HASKELL -> FÓRMULA GENERAL

La fórmula general nos ayuda a resolver cualquier ecuación cuadrática. 
Primero ponemos la ecuación en la forma ax² + bx + c = 0, donde a, b y c son coeficientes. 
Luego sustituimos estos coeficientes en la fórmula: (-b ± √(b²-4ac)) / (2a).

-}

fgen :: Double -> Double -> Double -> [Double]
           
fgen a b c 

-- Un discriminante negativo indica que ninguna de las soluciones son números reales. 
| discriminante < 0 = error "Raíces Complejas" 
-- Un discriminante de cero indica que la ecuación cuadrática tiene una solución real repetida.
| discriminante == 0 = [-b/(2*a)]
-- Un discriminante positivo indica que la ecuación cuadrática tiene dos soluciones reales distintas. 
| discriminante > 0 = [-b / (2*a) + resultadoraiz / (2*a), -b / (2*a) - resultadoraiz / (2*a)]

where 
    -- El discriminante es la parte de la fórmula cuadrática dentro del símbolo de raíz cuadrada.
    discriminante = b*b - 4*a*c
    resultadoraiz = sqrt discriminante
