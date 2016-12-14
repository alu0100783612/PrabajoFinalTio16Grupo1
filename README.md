# *TrabajoFinalTio16Grupo1*

## Miembros
+ Constanza Polette León Baritussio
+ Edna Liliana Galiano Camacho
+ Kevin Estévez Expósito
+ Pablo Sebastián Caballero
+ Andrea Rodríguez Rivarés
+ Yeray Pérez Peraza

### Definir la problemática a desarrollar

Disponemos de una o varias cuentas de twwiter relacionadas con educación las cuales debemos estudiar para
saber que tráfico tienen, que usuarios interactúan o simplemente análisis la repercusión y la actividad que se
desarrolla en dicha o dichas cuentas.

### Indicar el nombre propuesto para su proyecto.

**Análisis del impacto de twitter en la educación Seattle, WA**


### Herramienta a usar

Los miembros del grupo hemos realizado una encuesta (formulario de Google), para elegir la herramienta que deseamos 
usar para el proyecto. 

![Resultado de la votación](./images/votacion.png "Resultado de las votaciones")

La herramienta más votada es [SocialMention](http://www.socialmention.com "SocialMention"), la cual usaremos 
una serie de hashtags para buscar la información relacionada con la educación. Para ello introduciremos el hastag en la barra de búsqueda y luego obtenemos los datos o relevancia de dicho hashtag, para luego realizar el estudio. 

El funcionamiento de la herramientas consiste en nuestro caso en introducir el hastag que deseamos analizar para obtener la repercusión que tiene dicho hastag, las menciones que tiene, los usuarios que lo usan. 

El uso de la herramienta consiste en buscar en twitter el hastag que queremos ver la trascendencia que tiene y el uso que se le ha dado y ya con el hastag la herramienta nos muestra la información relevante.

#### Captura de como se usaría la herramienta

![Ejemplo de uso](./images/socialmention..JPG "Pantallazo de uso de la web")

### Propuesta tecnológica concreta a desarrollar.

Se desarrollará una aplicación en el lenguaje R que tendrá como objetivo obtener diversas estadísticas como el número de tweets, palabras claves, usuarios relacionados,etc, a través de hashtags y usuarios que tengan relación con el ámbito de la educación en la red social Twitter. 

Para ello, se utilizarán herramientas de apoyo para analizar Twitter y obtener los  datos que necesitamos para su posterior análisis en R.

Las herramientas que utilizaremos son:

-Tweet Reach permite obtener un análisis del alcance de los tweets.

-Mentionmapp es una web que nos permite obtener un grafo que refleja las relaciones principales de un usuario de Twitter con otros usuarios y hashtags más utilizados. Se usará para mostrar la información de manera más visual.

-Twitter Archivist se utilizará para analizar hashtags y así obtener los últimos tweets que usaron ese hashtag. Estos datos se exportarán a un archivo CSV para su análisis en R.

### Fuentes de datos principales.

La fuente principal de nuestros datos va a ser Twitter, tras una reunión del grupo, hemos decidido  a priori usar la cuenta de Edudemic(@Edudemic), la cual tiene un gran volumen de datos relacionados con la educación y la tecnología

### Procesamiento de estos datos y transformaciones.

Una vez introducido el hashtag en la herramienta [SocialMention](http://www.socialmention.com "SocialMention"), queremos mostrar únicamente los resultados relacionados con Twitter, por lo que debemos ir a la parte inferior izquierda de la pantalla y seleccionar la red social:

![Sources](./images/sources.png "Sources")

Ahora que tenemos los datos filtrados por la red social Twitter, podemos ver los tuits relacionados con el hashtag introducido. Además, la herramienta nos muestra datos útiles como la fuerza del hashtag, la media de tiempo transcurrido entre menciones del hashtag, o el número de autores que lo han usado:

![Datos útiles](./images/useful_data_1.png "Datos útiles")

También se nos muestra el tipo de opinión de los tuits que contienen el hashtag, palabras clave, usuarios que han tuiteado con el hashtag, y otros hashtags relacionados con el que se ha buscado:

![Datos útiles](./images/useful_data_2.png "Datos útiles")

Además, SocialMention nos permite descargar los datos obtenidos en formato CSV por si queremos realizar alguna otra transformación o tatamiento de los datos:

![Descarga de los datos](./images/data_download.png "Descarga de los datos")

### Resultados esperados. 
 Los resultados que se esperan conseguir con el análisis de distintas cuentas de la red social Twitter son:
+ Número de tweets realizados.
+ Conocer la repercusión, difusión y contenido visual que tiene un tweet.
+ Hashtags más utilizados o los temas de más tendencia.
+ Número de seguidores y clasificación de los mismos.
+ Conexión entre usuarios.
+ Obtener un gráfico con el número de impresiones orgánicas que hayan alcanzado nuestros tweets, en otras palabtas, número de veces que se han mostrado un determinado mensaje.
+ Tasa de interacción, clicks que han obtenido un enlace en concreto.
+ Número de retweets.
+ Número de tweets marcados como varitos.
+ Respuestas recibidas a mensajes.

### Diagrama Gantt del desarrollo del proyecto.

#### · Tabla de contenido

![Tabla de contenido](./images/Gantt 1.png "Tabla de contenido")

#### · Diagrama de Gantt

![Diagrama de Gantt](./images/Diagrama gantt 2.png "Diagrama de Gantt")

### Propuesta de modelo de negocio para el desarrollo.
En cuanto a la importancia de las aplicaciones seleccionadas  en la sociedad actual, nuestras herramientas podrían servir para monitorear a las empresas competentes, investigar la importancia de una marca, un evento o un asunto en concreto.

Como también dos de las herramientas seleccionadas muestran los datos de forma gráfica, servirían para realizar presentaciones y mostrar los datos de una forma más visual y entendible para alguien que no tenga conocimientos en métricas.

Por último, la herramienta que no muestra los datos gráficamente lo hace mediante ficheros CSV, por lo que se pueden realizar todo tipo de transformaciones con dichos ficheros, como, por ejemplo, utilizar herramientas como Carto o RStudio para realizar un tratamiento de datos más técnico.

### Creación de un repositorio de contenidos con los aportes del proyecto.

[Repositorio](https://github.com/alu0100783612/PrabajoFinalTio16Grupo1 "Enlace al ropositorio en github")
