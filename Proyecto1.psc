Algoritmo Proyecto1
	Definir PrecioOriginal, Cantidad, Peso, CostosEnvio como entero
    Definir Descuento, IVA, DescuentoPar, CostosEnvio como real
	Definir TieneDescuento, Destino como caracter
	
	
	//Datos del Cliente
	Escribir "Ingrese el precio original del producto: $"
	Leer PrecioOriginal
	Escribir "Seleccione el destino del envío siendo [Florida, New York, Los Angeles, Texas] = [0,1,2,3] respectivamente: "
	Para i <- 0 Hasta 3 Hacer
        Escribir i, ". ", Destino[i]
    FinPara
	Escribir "Ingrese el peso del paquete (en kg):"
    Leer Peso
	Escribir "Cantidad de Pares"
	Leer Cantidad
	
	
	//Si el cliente posee descuento o no
	Repetir
        Escribir "¿El cliente tiene un descuento? (Si/No)"
        Leer TieneDescuento
        TieneDescuento <- Minusculas(TieneDescuento)
        Si TieneDescuento <> "si" y TieneDescuento <> "no" Entonces
            Escribir "Lo escribiste mal, por favor responde Si o No."
        FinSi
    Hasta Que TieneDescuento = "si" o TieneDescuento = "no"
	
	Si TieneDescuento = "si" Entonces
        Precio <- PrecioOriginal * 0.90
    Sino
        Precio <- PrecioOriginal
    FinSi
	
	//Aplicación del IVA
	IVA <- 1.12
	
	//Descuento por Cantidad de pares de Zapatos
	Si Cantidad > 1 Entonces
        DescuentoPar <- 0.95
	sino
		DescuentoPar <- 1
    FinSi
	
	//Destinos disponibles
	dimension Destino[4]
	Destino[0] <- "Florida"
	Destino[1] <- "New York"
	Destino[2] <- "Los Angeles"
	Destino[3] <- "Texas"
	
	Dimension CostosEnvio[4]
	CostosEnvio[0] <- 10  // Florida
    CostosEnvio[1] <- 2  // New York
    CostosEnvio[2] <- 5  // Los Angeles
    CostosEnvio[3] <- 8  // Texas
	
	CostoFinal <- (Precio * IVA * DescuentoPar) * 2 
	
	
	
	
	
	
	
	Escribir "Costo final del producto: $", CostoFinal
	Escribir "Destino del paquete: ", Destino
	
	
FinAlgoritmo
