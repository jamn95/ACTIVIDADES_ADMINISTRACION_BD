# Normalización y Modelado de Bases de Datos Relacionales

Este repositorio contiene la solución completa a 5 ejercicios prácticos de normalización y diseño de bases de datos relacionales.

## Flujo de Trabajo
1. **Normalización en LibreOffice Calc:** Análisis de tablas desnormalizadas originales, atomización de atributos multivaluados y aplicación iterativa de Formas Normales (1FN, 2FN y 3FN).
2. **Modelado EER/MER en MySQL Workbench:** Creación de diagramas Entidad-Relación, asignación de claves primarias (`PK`), claves foráneas (`FK`) y definición de cardinalidades.
3. **Generación de Scripts SQL en MySQL Workbench:** Elaboración de código DDL (`CREATE TABLE`) y DML (`INSERT INTO`) directamente en el editor de consultas con los datos atomizados de cada ejercicio.

---

## Resumen de Actividades

### 1. Gestión de Pedidos
* **Descripción:** Registro desnormalizado de órdenes de compra de artículos deportivos con información de clientes, ítems y precios.
* **Proceso de Normalización:**
  * **1FN:** Se eliminó la repetición de ítems por orden haciendo cada registro independiente y atómico.
  * **2FN:** Se separaron los atributos del ítem (`DESC_ITEM`, `PRECIO`) para que no dependan parcialmente de la orden.
  * **3FN:** Se aisló la información del cliente (`NOM_CLIENTE`, `ESTADO`) de la transacción del pedido.
* **Tablas Resultantes:** `CLIENTE`, `ORDEN`, `ITEM` y `DETALLE_ORDEN`.

### 2. Gestión de Películas Alquiladas
* **Descripción:** Control de socios, direcciones físicas y alquileres de títulos cinematográficos.
* **Proceso de Normalización:**
  * **1FN:** Atomización del nombre completo (`FULL_NAMES`) en `FIRST_NAME` y `LAST_NAME`.
  * **2FN:** Eliminación del atributo multivaluado `MOVIES_RENTED` generando una relación independiente.
  * **3FN:** Separación de las entidades independientes `USER` y `MOVIE`.
* **Tablas Resultantes:** `USER`, `MOVIE` y `MOVIES_RENTED`.

### 3. Gestión Tienda de Tecnología
* **Descripción:** Registro de clientes y sus compras de periféricos y dispositivos tecnológicos.
* **Proceso de Normalización:**
  * **1FN:** La columna `Purchased Products` almacenaba múltiples productos separados por comas en una sola celda (`Laptop, Mouse`). Se separaron en filas atómicas.
  * **2FN & 3FN:** Se resolvió la relación Muchos a Muchos ($N:M$) entre clientes y productos creando una tabla intermedia de transacciones.
* **Tablas Resultantes:** `CUSTOMER`, `PRODUCT` y `PURCHASE`.

### 4. Gestión de Biblioteca
* **Descripción:** Registro de órdenes de compra de libros, detalles de autor, precios y datos de envío de usuarios.
* **Proceso de Normalización:**
  * **1FN:** Separación de la dirección del cliente (`Customer Address`) y atomización de registros duplicados por libro solicitado.
  * **2FN:** Desvinculación de los datos del libro (`Book Title`, `Book Author`, `Book Price`) de la cabecera de la orden.
  * **3FN:** Eliminación de dependencias transitivas entre la información personal del usuario y las compras realizadas.
* **Tablas Resultantes:** `CUSTOMER`, `BOOK`, `BOOK_ORDER` y `ORDER_DETAILS`.

### 5. Gestión de un Vivero
* **Descripción:** Control geográfico de jardines/ubicaciones, catálogo de especies botánicas y tipos de suelo.
* **Proceso de Normalización:**
  * **1FN:** Separación de combinaciones multivaluadas de tipos de suelo (`Sandstone/limestone`).
  * **2FN:** Independización de la ubicación geográfica (`location code`, `location name`) de las plantas sembradas.
  * **3FN:** Creación de una tabla de catálogo para la categoría y descripción de suelo (`Soil category`, `Soil description`) para evitar redundancias transitivas.
* **Tablas Resultantes:** `LOCATION`, `SOIL_TYPE`, `PLANT` y `LOCATION_HAS_PLANT`.

---

## Herramientas Utilizadas
* **LibreOffice Calc:** Análisis de datos crudos, descomposición tabular y estructuración en 1FN, 2FN y 3FN.
* **MySQL Workbench:** Diseñador del diagrama EER (Modelado relacional) y editor SQL para la ejecución local de scripts DDL y DML.

---

## Instrucciones de Ejecución en MySQL Workbench
1. Abrir **MySQL Workbench**.
2. Abrir el archivo `.mwb` del proyecto o crear una nueva conexión/modelo.
3. Abrir una pestaña de consulta SQL (`SQL Editor` / `Ctrl + T`).
4. Copiar y ejecutar las sentencias SQL de creación de tablas (`CREATE TABLE`) y de inserción de datos (`INSERT INTO`) correspondientes a cada actividad.
5. Ejecutar consultas `SELECT` con `JOIN` para verificar la integridad de las relaciones construidas.
