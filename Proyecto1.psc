Algoritmo Proyecto1
    Definir PrecioOriginal, Cantidad, Peso, CostoFijo, CostoTotalEnvio como entero
    Definir Descuento, IVA, DescuentoPar, CostoFinal, DescuentoCliente como real
    Definir TieneDescuento, Destino como caracter
    Definir i como entero
	
	
	Dimension Destino[4]
    Destino[1] <- "Florida"
    Destino[2] <- "New York"
    Destino[3] <- "Los Angeles"
    Destino[4] <- "Texas"
	
    //Datos del Cliente
    Escribir "Ingrese el precio original del producto: $"
    Leer PrecioOriginal
	Escribir "Seleccione el destino del envío siendo [Florida, New York, Los Angeles, Texas] = [1,2,3,4] respectivamente: "
	Leer i
	
	Si i >= 1 Y i <= 4 Entonces
		Escribir "El destino seleccionado es: ", Destino[i]
	Sino
		Escribir "Número de destino inválido."
	FinSi
	
    Escribir "Ingrese el peso del paquete (en kg):"
    Leer Peso
    Escribir "Cantidad de Zapatos"
    Leer Cantidad
	
    //Si el cliente posee descuento o no
    Repetir
        Escribir "¿El cliente tiene Cupón de descuento? (Si/No)"
        Leer TieneDescuento
        TieneDescuento <- Minusculas(TieneDescuento)
        Si TieneDescuento <> "si" y TieneDescuento <> "no" Entonces
            Escribir "Lo escribiste mal, por favor responde Si o No."
        FinSi
    Hasta Que TieneDescuento = "si" o TieneDescuento = "no"
	
	
	
    Si TieneDescuento = "si" Entonces
		DescuentoCliente <- 0.9
        Precio <- PrecioOriginal * DescuentoCliente
    Sino
		DescuentoCliente <- 1
        Precio <- PrecioOriginal * DescuentoCliente
    FinSi
	
    //Aplicación del IVA y CostoFijo
    IVA <- 1.12
	CostoFijo <- 10
    //Descuento por Cantidad de pares de Zapatos
    Si Cantidad > 1 Entonces
        DescuentoPar <- 0.95
    sino
        DescuentoPar <- 1
    FinSi
	
	
	//Costos por ciudades.
    Dimension CostosEnvio[4]
    CostosEnvio[1] <- 10  // Florida
    CostosEnvio[2] <- 2  // New York
    CostosEnvio[3] <- 5  // Los Angeles
    CostosEnvio[4] <- 8  // Texas
	
	CostoTotalEnvio <- CostoFijo+CostosEnvio[i]*Peso
	
    CostoFinal <- (Precio * IVA * DescuentoPar*2)+CostoTotalEnvio
	
	Escribir "Precio original del producto: $", PrecioOriginal
	Escribir "Descuento Cupón: ", (1-DescuentoCliente)*100,"%"
	Escribir "Descuento por cantidad: ", (1-DescuentoPar)*100,"%"
	Escribir "Costo de Envio: $", CostoTotalEnvio
	Escribir "IVA: ", (IVA-1)*100,"%"
    Escribir "Costo final del producto: $", CostoFinal
    Escribir "Destino del paquete: ", Destino[i]
	
FinAlgoritmo