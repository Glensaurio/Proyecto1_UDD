## Proyecto1

Este algoritmo en PSeInt calcula el costo final de un producto considerando varios factores como el precio original, el peso del paquete, la cantidad de zapatos, la existencia de un cupón de descuento y el destino del envío. A continuación se presenta un breve resumen del funcionamiento del código:

### Funcionamiento del Algoritmo:

1. **Definición de Variables:**
   - Se definen las variables necesarias para el cálculo, como PrecioOriginal, Cantidad, Peso, CostoFijo, CostoTotalEnvio, Descuento, IVA, DescuentoPar, CostoFinal, DescuentoCliente, TieneDescuento y Destino.

2. **Definición de Destinos:**
   - Se definen los destinos posibles de envío en un array y se solicita al usuario que seleccione uno.

3. **Datos del Cliente:**
   - Se solicitan al usuario el precio original del producto, el peso del paquete y la cantidad de zapatos.

4. **Verificación de Descuento:**
   - Se verifica si el cliente tiene un cupón de descuento, solicitando una respuesta "Si" o "No" y convirtiendo la respuesta a minúsculas. Se repite hasta obtener una respuesta válida.

5. **Cálculo del Descuento y Precio Final:**
   - Dependiendo de si el cliente tiene o no un cupón de descuento, se aplica un descuento al precio original.

6. **Aplicación de Impuestos y Descuentos:**
   - Se aplica el IVA y un posible descuento por cantidad de pares de zapatos.

7. **Costos por Ciudades:**
   - Se definen los costos de envío por ciudad en un array y se calcula el costo total de envío según el destino y el peso del paquete.

8. **Cálculo del Costo Final:**
   - Se calcula el costo final del producto sumando el precio con impuestos y descuentos, más el costo total de envío.

9. **Resultados:**
   - Se muestran al usuario el precio original del producto, el descuento aplicado, el costo de envío, el IVA, el costo final del producto y el destino del paquete.

### Uso del Algoritmo:
1. Ejecutar el algoritmo.
2. Ingresar el precio original del producto.
3. Seleccionar el destino del envío.
4. Ingresar el peso del paquete.
5. Ingresar la cantidad de zapatos.
6. Indicar si el cliente tiene un cupón de descuento.
7. Obtener el resultado con el costo final del producto y demás detalles.

### Notas:
- El código está diseñado para trabajar con datos específicos y cálculos predeterminados, ajuste los valores según sea necesario.
- Este código no contempla casos extremos o excepcionales, por lo que podría necesitar modificaciones para cubrir todos los posibles escenarios.

¡Gracias por revisar este README!