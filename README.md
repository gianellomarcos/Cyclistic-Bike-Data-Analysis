# Análisis de Uso de Bicicletas - Caso Cyclistic (2019)

Análisis del comportamiento de usuarios de un servicio de bicicletas compartidas para identificar diferencias entre usuarios suscritos y usuarios ocasionales.
Proyecto: Caso de estudio del Certificado Profesional de Análisis de Datos de Google
Herramientas: Excel - SQL Server - Power BI

---

## Objetivo

Analizar los datos históricos de viajes de Cyclistic para identificar diferencias en el comportamiento de los usuarios **Subscribers** y **Customers**, con el fin de encontrar oportunidades para aumentar la conversión de usuarios ocasionales a suscripciones anuales.

---

## Proceso

Dataset → Excel → SQL Server → Power BI → Insights

- Exploración y limpieza inicial de los datos.
- Creación de variables para el análisis.
- Tratamiento de valores inconsistentes.
- Estandarización de fechas.
- Análisis de duración y frecuencia de viajes.
- Comparación del comportamiento según tipo de usuario.
- Análisis del uso por día de la semana.
- Creación de dashboard interactivo en Power BI.

---

## Preparación de datos

Durante la preparación de los datos se realizaron las siguientes transformaciones:

- Creación de `ride_length_min` para calcular la duración de cada viaje en minutos.
- Creación de `day_of_week` para analizar los viajes según el día de la semana.
- Tratamiento de años de nacimiento inconsistentes, convirtiéndolos en valores `NULL` para evitar afectar el análisis.
- Estandarización de las fechas de inicio y fin para su procesamiento en SQL Server.

---

## Análisis y Visualizaciones

### 1. Dashboard General

![Dashboard General](dashboard_general.png)

Dashboard interactivo para analizar el comportamiento general de los viajes y comparar los diferentes tipos de usuarios.

---

### 2. Viajes por Tipo de Usuario

![Gráficos de Usuario](visual_viajes.png)

La visualización permite comparar la cantidad de viajes realizados por **Subscribers** y **Customers**.

Insight: El **93.6% de los viajes** corresponde a usuarios Subscribers, mientras que los Customers representan una proporción menor del total de viajes.

---

### 3. Duración Promedio de los Viajes

![Duración Promedio](visual_prom_viaje_duracion.png)

Insight: Aunque los Subscribers realizan la mayoría de los viajes, los **Customers presentan una duración promedio de viaje mayor**.

---

### 4. Uso por Día de la Semana

![Gráfico por Día](visual_usos_semana.png)

Insight: Los Subscribers presentan un uso más constante durante los días laborales, mientras que los Customers muestran un mayor uso durante los fines de semana.

---

## Principales hallazgos

Tipo de usuario
Los Subscribers concentran la gran mayoría de los viajes realizados.

Duración
Los Customers realizan viajes menos frecuentes, pero con una duración promedio mayor.

Día de la semana
Los patrones de uso son diferentes entre ambos grupos: los Subscribers presentan mayor actividad durante los días laborales, mientras que los Customers tienen mayor presencia durante los fines de semana.

Oportunidad de negocio
El comportamiento de los Customers representa una oportunidad para desarrollar estrategias orientadas a convertir usuarios ocasionales en suscriptores.

---
