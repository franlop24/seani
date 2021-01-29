-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 21-01-2021 a las 20:59:33
-- Versión del servidor: 5.7.17-log
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `uttlaxca_seani`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `01_user`
--

CREATE TABLE `01_user` (
  `id` int(11) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `tipo_usuario` int(11) NOT NULL,
  `fecha_hora_alta` datetime NOT NULL,
  `estatus` int(11) NOT NULL,
  `foto` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `01_user`
--

INSERT INTO `01_user` (`id`, `username`, `password`, `email`, `tipo_usuario`, `fecha_hora_alta`, `estatus`, `foto`) VALUES
(2087, 'franlop84', '123456', 'franlopbri@gmail.com', 3, '2017-08-04 10:02:57', 1, 'http://siseac.uttlaxcala.edu.mx/profile.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos_datos_personales`
--

CREATE TABLE `alumnos_datos_personales` (
  `id` int(11) NOT NULL,
  `prf_titulo` int(11) DEFAULT NULL,
  `nombre` text,
  `ap_paterno` text,
  `ap_materno` text,
  `prf_tipo` int(11) NOT NULL,
  `fecha_incorporacion` date DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `tel_personal` varchar(45) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `genero` text,
  `curp` varchar(45) DEFAULT NULL,
  `rfc` varchar(45) DEFAULT NULL,
  `n_empleado` int(11) DEFAULT NULL,
  `direcion` text,
  `localidad` text,
  `municipio` text,
  `estado` text,
  `cp` int(11) DEFAULT NULL,
  `foto` text,
  `ultima_actualizacion` datetime DEFAULT NULL,
  `carrera` varchar(45) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bitacora_alumno`
--

CREATE TABLE `bitacora_alumno` (
  `id_bitacora` int(11) NOT NULL,
  `id_alumno` int(11) NOT NULL,
  `id_examen` int(11) NOT NULL,
  `id_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estatus`
--

CREATE TABLE `estatus` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `abreviatura` varchar(45) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `estatus`
--

INSERT INTO `estatus` (`id`, `nombre`, `abreviatura`) VALUES
(1, 'Activo', 'act'),
(2, 'Desactivado', 'desa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `examen_basicas`
--

CREATE TABLE `examen_basicas` (
  `id_basicas` int(11) NOT NULL,
  `pregunta` text NOT NULL,
  `respuesta1` varchar(200) NOT NULL,
  `respuesta2` varchar(200) NOT NULL,
  `respuesta3` varchar(200) NOT NULL,
  `respuesta4` varchar(200) NOT NULL,
  `respuesta_correcta` varchar(50) NOT NULL,
  `carrera` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `examen_basicas`
--

INSERT INTO `examen_basicas` (`id_basicas`, `pregunta`, `respuesta1`, `respuesta2`, `respuesta3`, `respuesta4`, `respuesta_correcta`, `carrera`) VALUES
(7, 'Trata de la recolección, análisis, interpretación y representación de datos numéricos. Tiene su origen en dos aéreas de interés que en apariencia tienen muy poco en común:  la ciencia política y los juegos de azar.\r\n', 'Estadística', 'Probabilidad', 'Estadística Descriptiva', 'Estadística Inferencial', '1', 'DNAM'),
(8, 'Se dedica a la visualización y resumen de datos originados a partir de los fenómenos de estudio. Los datos pueden ser resumidos numérica o gráficamente. Ejemplos básicos de parámetros estadísticos son: la media y la desviación estándar. Algunos ejemplos gráficos son: histograma, pirámide poblacional, gráfico circular, entre otros.\r\n', 'Estadística', 'Probabilidad', 'Estadística Descriptiva', 'Estadística Inferencial', '3', 'DNAM'),
(9, 'Se dedica a la generación de los modelos,  y predicciones asociadas a los fenómenos en cuestión teniendo en cuenta la aleatoriedad de las observaciones. Se usa para modelar patrones en los datos y extraer deducciones acerca de la población bajo estudio.', 'Estadística', 'Probabilidad', 'Estadística Descriptiva', 'Estadística Inferencial', '4', 'DNAM'),
(10, 'Hipótesis que establecen  simplemente relación entre las variables', 'Hipótesis descriptiva de un dato o valor que se pronostica', 'Hipótesis bivariadas', 'Hipótesis correlacionales', 'Hipótesis multivariadas', '1', 'DNAM'),
(11, 'Hipótesis  que establecen cómo es la relación entre las variables', 'Hipótesis descriptiva de un dato o valor que se pronostica', 'Hipótesis bivariadas', 'Hipótesis correlacionales', 'Hipótesis multivariadas', '3', 'DNAM'),
(12, 'La gráfica de su función de densidad tiene una forma acampanada y es simétrica respecto de un determinado parámetro estadístico. Esta curva se conoce como campana de Gauss y es el gráfico de una función gaussiana.', 'Análisis de regresión', 'Varianza', 'Correlación', 'Distribución normal', '4', 'DNAM'),
(13, 'Ayuda a entender cómo el valor de la variable dependiente varía al cambiar el valor de una de las variables independientes, manteniendo el valor de las otras variables independientes fijas.', 'Análisis de regresión', 'Varianza', 'Correlación', 'Distribución normal', '1', 'DNAM'),
(14, 'Indica la fuerza y la dirección de una relación lineal y proporcionalidad entre dos variables estadísticas.', 'Análisis de regresión', 'Varianza', 'Correlación', 'Distribución normal', '3', 'DNAM'),
(15, 'Es una medida de dispersión definida como la esperanza del cuadrado de la desviación de dicha variable respecto a su media.', 'Análisis de regresión', 'Varianza', 'Correlación', 'Distribución normal', '2', 'DNAM'),
(16, 'Hace referencia a los factores externos a la empresa que influye en esta y condicionan su actividad', 'Microambiente', 'Entorno de la empresa', 'Macroambiente', 'Empresa', '2', 'DNAM'),
(17, 'Está formado por las fuerzas cercanas a la compañía que influyen en su capacidad de satisfacer a los clientes.', 'Microambiente', 'Entorno de la empresa', 'Macroambiente', 'Empresa', '1', 'DNAM'),
(18, 'Afectan a todas las organizaciones y un cambio en uno de ellos ocasionará cambios en uno o más de los otros; generalmente estas fuerzas no pueden controlarse por los directivos de las organizaciones.', 'Microambiente', 'Entorno de la empresa', 'Macroambiente', 'Empresa', '3', 'DNAM'),
(19, 'Es una organización  dedicada a actividades o persecución de fines económicos o comerciales para satisfacer las necesidades de bienes o servicios de los solicitantes, a la par de asegurar la continuidad de la estructura productivo-comercial así como sus necesarias inversiones.', 'Microambiente', 'Entorno de la empresa', 'Macroambiente', 'Empresa', '4', 'DNAM'),
(20, 'Es el proceso cuyo objeto es la coordinación eficaz y eficiente de los recursos de un grupo social para lograr sus objetivos con la máxima productividad', 'Proceso administrativo', 'Administración', 'Fase mecánica del proceso admiistrativo', 'Fase dinámica del proceso admiistrativo', '2', 'DNAM'),
(21, 'es la herramienta que se aplica en las organizaciones para el logro de sus objetivos y satisfacer sus necesidades lucrativas y sociales.', 'Proceso administrativo', 'Administración', 'Fase mecánica del proceso admiistrativo', 'Fase dinámica del proceso admiistrativo', '1', 'DNAM'),
(22, 'Se busca establecer qué hacer y se prepara la estructura necesaria para hacerlo, comprende las actividades de planeación y organización.', 'Proceso administrativo', 'Administración', 'Fase mecánica del proceso admiistrativo', 'Fase dinámica del proceso admiistrativo', '3', 'DNAM'),
(23, 'Se refiere a cómo se maneja ese organismo social que se ha estructurado y comprende las actividades de dirección y control.', 'Proceso administrativo', 'Administración', 'Fase mecánica del proceso admiistrativo', 'Fase dinámica del proceso admiistrativo', '4', 'DNAM'),
(24, 'En esta etapa se lleva a cabo una investigación del entorno e interna, planteamiento de estrategias, políticas y propósitos, así como de acciones a ejecutar en el corto, medio y largo plazo.', 'Planeación', 'Control', 'Dirección', 'Organización', '1', 'DNAM'),
(25, 'La integran  un conjunto de reglas, cargos, comportamientos que han de respetar todas las personas que se encuentran dentro de la empresa, todo esto para  disponer y coordinar todos los recursos disponibles.', 'Planeación', 'Control', 'Dirección', 'Organización', '4', 'DNAM'),
(26, 'Dentro de ella se encuentra la ejecución de los planes, la motivación, la comunicación y la supervisión para alcanzar las metas de la organización.', 'Planeación', 'Control', 'Dirección', 'Organización', '3', 'DNAM'),
(27, 'Es la función que se encarga de evaluar el desarrollo general de una empresa.', 'Planeación', 'Control', 'Dirección', 'Organización', '2', 'DNAM'),
(28, 'Rama de la economía y la administración que estudia el intercambio de distintos bienes de capital entre individuos, empresas, o Estados y con la incertidumbre y el riesgo que estas actividades conllevan.', 'Costo de oportunidad', 'Tasa de interés', 'Finanzas', 'Prima de riesgo', '3', 'DNAM'),
(29, 'Se define como el precio que se paga por los fondos solicitados en préstamo, en un periodo de tiempo. Por lo general es expresado en porcentaje.', 'Costo de oportunidad', 'Tasa de interés', 'Finanzas', 'Prima de riesgo', '2', 'DNAM'),
(30, 'Es la diferencia entre la rentabilidad de la inversión y el tipo de interés de aquellos valores que se consideran seguros. ', 'Costo de oportunidad', 'Tasa de interés', 'Finanzas', 'Prima de riesgo', '4', 'DNAM'),
(31, 'Hace referencia al sacrificio que debe hacer cualquier agente que participe en un mercado al decidir prescindir de un consumo o de una inversión para emplear sus recursos, siendo estos por definición escasos, en otro proyecto.', 'Costo de oportunidad', 'Tasa de interés', 'Finanzas', 'Prima de riesgo', '1', 'DNAM'),
(32, 'Es conocido como la parte blanda de un equipo de cómputo', 'Software', 'Internet', 'Hardware', 'Sistema Operativo\r\n', '1', 'TICMCE'),
(33, 'Sirven para dar formato a un documento, editarlo, incluir imágenes, gráficos, esquemas, etc.', 'Procesadores de texto', 'Editores de texto', 'Computadora', 'Entorno de desarrollo', '1', 'TICMCE'),
(34, 'Es la extensión posible con la que se guardan los archivos elaborados en procesadores de texto', '.docx, .doc', '.doc, .docx, .pdf', '.xls, .ppt, .pdf', '.doc, .pdf', '1', 'TICMCE'),
(35, 'Que formula representa la manera correcta de sumar 5+10 en una hoja de cálculo para que el resultado sea 15', '= 5 + 10', '5 + 10', '= $5 + $10', '$A5 + $A10\r\n', '1', 'TICMCE'),
(36, 'Cuál será el resultado de al aplicar la siguiente formula en Excel =(3+4)*(6)/(2)*(3)', '63', '7', '0', '2', '1', 'TICMCE'),
(37, 'Cuál será el resultado de al aplicar la siguiente formula en Excel = ((3+4)*(6))/((2)*(3))', '7', '63', '0', '2', '1', 'TICMCE'),
(38, 'im21.jpg', 'A', 'B', 'C', 'D', '1', 'TICMCE'),
(39, 'im22.jpg', 'A', 'B', 'C', 'D', '1', 'TICMCE'),
(40, 'Indicar cuál es una posición cierta', '2 elevado a la 0 siempre es 1', 'Junio es el quinto mes del año', '2 elevado a la 3 es 6', 'Todos los medios de transporte poseen ruedas', '1', 'TICMCE'),
(41, 'Se escribe r ʌ s, y se lee:', 'Cinco es un número primo y es impar', 'Cinco es mayor que cuatro o menor que seis', 'Cuatro no es menor que cinco', 'Si Antonio estudia entonces aprobara el examen', '1', 'TICMCE'),
(42, 'Si Ángela habla más bajo que Rosa y Celia habla más alto que Rosa, ¿habla Ángela más alto o más bajo que Celia?', 'Más bajo', 'Hablan igual', 'Más alto', 'Ninguna', '1', 'TICMCE'),
(43, 'Tenemos cuatro perros: un galgo, un dogo, un alano y un podenco. Éste último come más que el galgo; el alano come más que el galgo y menos que el dogo, pero éste come más que el podenco. ¿Cuál de los cuatro será más barato de mantener?', 'El galgo\r\n', 'El dogo', 'El alano', 'El pondenco', '1', 'TICMCE'),
(44, 'Indique ¿cuál es un conjunto de dígitos? ', 'B = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9 }', 'P = { 6, 7, 8, 9 }', 'A = { a, e, i, o, u }', 'N = { 1, 2, 3, 4, 5, 6, … }\r\n', '1', 'TICMCE'),
(45, '¿Cuál de los siguientes pares ordenados satisfacen a la ecuación 3x − 5y− 21= 0?', '(7,0)', '(2,− 3)', '(1,5)', '(9,1)', '1', 'TICMCE'),
(46, '¿Qué resultado arroja la siguiente suma A = [ 2 0 1 ], B= [ − 6 7 3 ]?', '[-4  7  4]', '[-8  0  4]', '[4  7  4]', '[4  7  -4]', '1', 'TICMCE'),
(47, 'Encuentre la media del conjunto {2,14, 5, 1, 8,17,2}', '7', '6.89', '7.14', '1', '1', 'TICMCE'),
(48, 'Encuentre la moda del conjunto {2, 3, 5, 5, 7, 9, 9, 9, 10, 12}', '9', '2', '3', '7', '1', 'TICMCE'),
(49, 'Algebra: El algebra es una rama de las _______________________ que estudia la cantidad considerada del modo general posible\r\n', 'Estática', 'Dinámica', 'Ciencias Exactas', 'Matemáticas', '4', 'PIAA'),
(50, 'Álgebra: Para representar las cantidades conocidas que tipos de letras del alfabeto se utilizan?', 'a) a,b,c,d….', 'b) x,y,z,w,….', 'c) ax, by, cz', 'd) 2b, 4y, 3x', '1', 'PIAA'),
(51, 'Hallar la suma de los siguientes polinomios:  3a+2b-c;  2a+3b+c', 'a) 5a+5b', 'b) 3a-c', 'c) a+b', 'd) 3a+4b', '1', 'PIAA'),
(52, 'Hallar la resta del siguiente polinomio:   8a+b, -3a+4', 'a) 5a+b-4', 'b) 11a+b-4', 'c) a+b-4', 'd) 8a-b+4', '2', 'PIAA'),
(53, 'im23.jpg', 'A', 'B', 'C', 'D', '2', 'PIAA'),
(54, 'im24.jpg', 'A', 'B', 'C', 'D', '1', 'PIAA'),
(55, 'im25.jpg', 'A', 'B', 'C', 'D', '3', 'PIAA'),
(56, 'im26.jpg', '4', '7', '6', '8', '2', 'PIAA'),
(57, 'im28.jpg', 'A', 'B', 'C', 'D', '1', 'PIAA'),
(58, 'im29.jpg', 'A', 'B', 'C', 'D', '1', 'PIAA'),
(59, 'im31.jpg', 'A', 'B', 'C', 'D', '3', 'PIAA'),
(60, 'im30.jpg', 'A', 'B', 'C', 'D', '1', 'PIAA'),
(61, 'im32.jpg', 'A', 'B', 'C', 'D', '3', 'PIAA'),
(62, 'im33.jpg', 'A', 'B', 'C', 'D', '2', 'PIAA'),
(63, '¿Cuáles son los tipos en los que se clasifican los materiales?\r\n', 'Metálicos , poliméricos, cerámicos y blandos', 'Metálicos , poliméricos, cerámicos,  compuestos y semiconductores', 'Duros y blandos', 'Maleables y dúctiles', '2', 'PIAA'),
(64, '¿A qué tipo de polímeros corresponde la celulosa?', 'Sintéticos', 'Naturales', 'Mixtos', 'Elastómeros', '2', 'PIAA'),
(65, 'El Diagrama hierro carbono tiene cuatro fases, ¿ cuáles son las correctas?\r\n', 'Ferrita, austenita, martensita y cementita.', 'Cementita, austenita, perlita y bainita.', 'Ferrita, austenita, perlita y cementita.', 'Fundiciones, aceros, perlita y cementita', '4', 'PIAA'),
(66, '¿Cuáles de las siguientes pruebas son no destructivas?', 'Ultrasonido, rayos X, líquidos penetrantes', 'Partículas magnéticas, Tensíón y compresión.', 'De impacto y dureza', 'Impacto, Rockwell, Brinel y Vickers', '1', 'PIAA'),
(67, '¿Qué es estadística?  		\r\n', 'Es la ciencia que recolecta, organiza, resume, presenta, analiza e interpreta datos. ', 'Rama de las Matemáticas que se dedica al estudio de la información colectada mediante encuestas. ', 'Rama de la matemática cuyo objeto de estudio son los números y las operaciones elementales(Adición, resta, multiplicación y división).', '', '1', 'PIAA'),
(68, 'La estadística se divide en dos ramas, ¿cuáles son dichas subdivisiones?		', 'Estadística Descriptiva y Estadística Cognoscitiva.', 'Estadística Analítica y Estadística Inductiva.', 'Estadística Descriptiva y Estadística Inductiva.', '', '3', 'PIAA'),
(69, 'De la siguiente secuencia de valores estima la media aritmética, la moda y la mediana:  Datos: 0.53, 0.46, 0.50, 0.49, 0.52, 0.53, 0.44, 0.55.', 'Media: 0.001. Mediana: 0.51, Moda: No hay moda.\r\n', 'Media: 0.5025, Mediana: 0.51, Moda: 0.53\r\n', 'Media: 0.5025, Mediana: 0.525, Moda: No hay moda.\r\n', '', '2', 'PIAA'),
(70, '¿Qué es un Parámetro?		\r\n', 'Un solo valor obtenido para describir en forma resumida las características de una población.', 'Son los valores obtenidos a través de una muestra.', 'Son  valores que se pueden clasificar en discretas, cuantitativas, continuas y cualitativas.', '', '1', 'PIAA'),
(71, '¿La desviación estándar es una medida estadística que sirve para?', 'Hacer descripción general de la cantidad de los valores entre sí.', 'Crear un modelo matemático que sirve para estimar el grado de dispersión de los datos con respecto al valor promedio.', 'Diseñar un  modelo matemático usado para aproximar la relación de dependencia entre una variable dependiente Y, las variables independientes Xi', '', '2', 'PIAA'),
(72, '¿Para qué sirve un Intervalo de confianza?		\r\n', 'Sirve para determinar  el error que surge a causa de observar una muestra de la población completa', 'Es útil para determinar un rango de valores desconocidos (estimado a través de una muestra) con una determinada probabilidad de acierto sobre el parámetro que es de interés para el estudio.', 'Es útil para definir la probabilidad de tomar la decisión de rechazar una hipótesis nula cuando ésta es verdadera', '', '2', 'PIAA'),
(73, 'El número de oxidación de los metales alcalinos (Li, Na, K, Rb, Cs):\r\n', 'a)       Es siempre -1', 'b)       Es de 2', 'c)       Es +1 en óxidos y -1 en sales', 'd)      Es siempre +1', '4', 'PIAA'),
(74, 'Una reacción de combustión es la combinación de una sustancia con el:', 'a)      Carbono', 'b)      Agua', 'c)       Hidrógeno', 'd)      Oxígeno', '4', 'PIAA'),
(75, 'Las sustancias que al disolverse en el agua originan partículas eléctricas que las hacen buenas conductoras de la electricidad se denominan:', 'a)      Electrolitos', 'b)      Solutos', 'c)       Hidroxilos', 'd)    Moleculares', '1', 'PIAA'),
(76, 'Al solidificarse el agua se observa un incremento en su volumen, esto se debe a que sus moléculas están unidas por medio de:', 'a)      Puentes de hidrógeno', 'b)      Enlace iónico', 'c)       Fuerzas de London', 'd)      Dipolo-dipolo', '1', 'PIAA'),
(77, 'En los metales, la conductividad eléctrica se explica por la existencia de:', 'a)      Niveles energéticos', 'b)      Energías cuantizadas', 'c)       Electrones deslocalizados', 'd)      Átomos unidos', '3', 'PIAA'),
(78, 'Los electrones de valencia corresponden en la tabla periódica al:', 'a)      Grupo', 'b)      Bloque', 'c)       Orbital', 'd)      Periodo', '1', 'PIAA'),
(79, 'Los electrones se mueven alrededor del núcleo en niveles de energía fija (cuantizada), lo propuso:', 'a)      Rutherford', 'b)      Sommerfield', 'c)       Thomson', 'd)       Bohr', '4', 'PIAA'),
(80, 'Algebra: El algebra es una rama de las _______________________ que estudia la cantidad considerada del modo general posible\r\n', 'Estática', 'Dinámica', 'Ciencias Exactas', 'Matemáticas', '4', 'PIAP'),
(81, 'Álgebra: Para representar las cantidades conocidas que tipos de letras del alfabeto se utilizan?', 'a) a,b,c,d….', 'b) x,y,z,w,….', 'c) ax, by, cz', 'd) 2b, 4y, 3x', '1', 'PIAP'),
(82, 'Hallar la suma de los siguientes polinomios:  3a+2b-c;  2a+3b+c', 'a) 5a+5b', 'b) 3a-c', 'c) a+b', 'd) 3a+4b', '1', 'PIAP'),
(83, 'Hallar la resta del siguiente polinomio:   8a+b, -3a+4', 'a) 5a+b-4', 'b) 11a+b-4', 'c) a+b-4', 'd) 8a-b+4', '2', 'PIAP'),
(84, 'im23.jpg', 'A', 'B', 'C', 'D', '2', 'PIAP'),
(85, 'im24.jpg', 'A', 'B', 'C', 'D', '1', 'PIAP'),
(86, 'im25.jpg', 'A', 'B', 'C', 'D', '3', 'PIAP'),
(87, 'im26.jpg', '4', '7', '6', '8', '2', 'PIAP'),
(88, 'im28.jpg', 'A', 'B', 'C', 'D', '1', 'PIAP'),
(89, 'im29.jpg', 'A', 'B', 'C', 'D', '1', 'PIAP'),
(90, 'im31.jpg', 'A', 'B', 'C', 'D', '3', 'PIAP'),
(91, 'im30.jpg', 'A', 'B', 'C', 'D', '1', 'PIAP'),
(92, 'im32.jpg', 'A', 'B', 'C', 'D', '3', 'PIAP'),
(93, 'im33.jpg', 'A', 'B', 'C', 'D', '2', 'PIAP'),
(94, '¿Cuáles son los tipos en los que se clasifican los materiales?\r\n', 'Metálicos , poliméricos, cerámicos y blandos', 'Metálicos , poliméricos, cerámicos,  compuestos y semiconductores', 'Duros y blandos', 'Maleables y dúctiles', '2', 'PIAP'),
(95, '¿A qué tipo de polímeros corresponde la celulosa?', 'Sintéticos', 'Naturales', 'Mixtos', 'Elastómeros', '2', 'PIAP'),
(96, 'El Diagrama hierro carbono tiene cuatro fases, ¿ cuáles son las correctas?\r\n', 'Ferrita, austenita, martensita y cementita.', 'Cementita, austenita, perlita y bainita.', 'Ferrita, austenita, perlita y cementita.', 'Fundiciones, aceros, perlita y cementita', '4', 'PIAP'),
(97, '¿Cuáles de las siguientes pruebas son no destructivas?', 'Ultrasonido, rayos X, líquidos penetrantes', 'Partículas magnéticas, Tensíón y compresión.', 'De impacto y dureza', 'Impacto, Rockwell, Brinel y Vickers', '1', 'PIAP'),
(98, '¿Qué es estadística?  		\r\n', 'Es la ciencia que recolecta, organiza, resume, presenta, analiza e interpreta datos. ', 'Rama de las Matemáticas que se dedica al estudio de la información colectada mediante encuestas. ', 'Rama de la matemática cuyo objeto de estudio son los números y las operaciones elementales(Adición, resta, multiplicación y división).', '', '1', 'PIAP'),
(99, 'La estadística se divide en dos ramas, ¿cuáles son dichas subdivisiones?		', 'Estadística Descriptiva y Estadística Cognoscitiva.', 'Estadística Analítica y Estadística Inductiva.', 'Estadística Descriptiva y Estadística Inductiva.', '', '3', 'PIAP'),
(100, 'De la siguiente secuencia de valores estima la media aritmética, la moda y la mediana:  Datos: 0.53, 0.46, 0.50, 0.49, 0.52, 0.53, 0.44, 0.55.', 'Media: 0.001. Mediana: 0.51, Moda: No hay moda.\r\n', 'Media: 0.5025, Mediana: 0.51, Moda: 0.53\r\n', 'Media: 0.5025, Mediana: 0.525, Moda: No hay moda.\r\n', '', '2', 'PIAP'),
(101, '¿Qué es un Parámetro?		\r\n', 'Un solo valor obtenido para describir en forma resumida las características de una población.', 'Son los valores obtenidos a través de una muestra.', 'Son  valores que se pueden clasificar en discretas, cuantitativas, continuas y cualitativas.', '', '1', 'PIAP'),
(102, '¿La desviación estándar es una medida estadística que sirve para?', 'Hacer descripción general de la cantidad de los valores entre sí.', 'Crear un modelo matemático que sirve para estimar el grado de dispersión de los datos con respecto al valor promedio.', 'Diseñar un  modelo matemático usado para aproximar la relación de dependencia entre una variable dependiente Y, las variables independientes Xi', '', '2', 'PIAP'),
(103, '¿Para qué sirve un Intervalo de confianza?		\r\n', 'Sirve para determinar  el error que surge a causa de observar una muestra de la población completa', 'Es útil para determinar un rango de valores desconocidos (estimado a través de una muestra) con una determinada probabilidad de acierto sobre el parámetro que es de interés para el estudio.', 'Es útil para definir la probabilidad de tomar la decisión de rechazar una hipótesis nula cuando ésta es verdadera', '', '2', 'PIAP'),
(104, 'El número de oxidación de los metales alcalinos (Li, Na, K, Rb, Cs):\r\n', 'a)       Es siempre -1', 'b)       Es de 2', 'c)       Es +1 en óxidos y -1 en sales', 'd)      Es siempre +1', '4', 'PIAP'),
(105, 'Una reacción de combustión es la combinación de una sustancia con el:', 'a)      Carbono', 'b)      Agua', 'c)       Hidrógeno', 'd)      Oxígeno', '4', 'PIAP'),
(106, 'Las sustancias que al disolverse en el agua originan partículas eléctricas que las hacen buenas conductoras de la electricidad se denominan:', 'a)      Electrolitos', 'b)      Solutos', 'c)       Hidroxilos', 'd)    Moleculares', '1', 'PIAP'),
(107, 'Al solidificarse el agua se observa un incremento en su volumen, esto se debe a que sus moléculas están unidas por medio de:', 'a)      Puentes de hidrógeno', 'b)      Enlace iónico', 'c)       Fuerzas de London', 'd)      Dipolo-dipolo', '1', 'PIAP'),
(108, 'En los metales, la conductividad eléctrica se explica por la existencia de:', 'a)      Niveles energéticos', 'b)      Energías cuantizadas', 'c)       Electrones deslocalizados', 'd)      Átomos unidos', '3', 'PIAP'),
(109, 'Los electrones de valencia corresponden en la tabla periódica al:', 'a)      Grupo', 'b)      Bloque', 'c)       Orbital', 'd)      Periodo', '1', 'PIAP'),
(110, 'Los electrones se mueven alrededor del núcleo en niveles de energía fija (cuantizada), lo propuso:', 'a)      Rutherford', 'b)      Sommerfield', 'c)       Thomson', 'd)       Bohr', '4', 'PIAP'),
(111, 'Es un vínculo entre dos magnitudes que son comparables entre sí. Se trata de aquello que resulta cuando una de las magnitudes se divide o se resta por otra.', 'Razón de cambio', 'Razón', 'Proporción', '', '2', 'DNAM'),
(112, 'Es una igualdad entre dos razones y aparece frecuentemente en notación fraccionaria.', 'Razón de cambio', 'Razón', 'Proporción', 'Ecuación', '3', 'DNAM'),
(113, 'Es la medida en el cual una variable se modifica con relación a otra. Su valor es = 0 cuando las variables no están relacionadas.', 'Razón de cambio', 'Razón', 'Proporción', 'Ecuación', '1', 'DNAM'),
(114, 'Constituye una igualdad donde aparece como mínimo una incógnita que exige ser develada pr quien resuelve el ejercicio. Las incógnitas estan ¨representadas por letras que sustituyen al valor que se pretende hallar.', 'Razón de cambio', 'Ecuación', 'Proporción', 'Desigualdaes lineales', '2', 'DNAM'),
(115, 'Es una función la cual su representación en el plano cartesiano es una líneas recta', 'Función lineal', 'Razón', 'Proporción', 'Ecuación', '1', 'DNAM'),
(116, 'Se pueden escribir en la forma ax+b>0, donde a y b son constantes y a diferente de cero.', 'Razón de cambio', 'Desigualdaes lineales', 'Proporción', 'Ecuación', '2', 'DNAM'),
(117, 'Arte y ciencia de formular, implantar y evaluar decisiones interfuncionales que permitan a la organización llevar a cabo sus objetivos.', 'Planeación táctica', 'Planeación operativa', 'Estrategia', 'Planeación estratégica', '4', 'DNAM'),
(118, 'Es la determinación de los objetivos a largo plazo y la eleccción de las acciones y la asignación de los recursos necesarios para conseguirlos. Su significado literal es: \"Guía de los ejércitos\"', 'Planeación táctica', 'Planeación estratégica', 'Planeación operativa', 'Estrategia', '4', 'DNAM'),
(119, 'Toma un concepto de toma deliberada y sistemática de decisiones que incluyen propósitos más limitados, a mediano plazo, áreas menos amplias y niveles medios en la jerarquía.', 'Planeación táctica', 'Planeación estratégica', 'Estrategia', 'Planeación operativa', '1', 'DNAM'),
(120, 'Toma un concepto de toma deliberada y sistemática de decisiones que incluyen propósitos más limitados, a corto plazo, áreas menos amplias y niveles operacionales.', 'Planeación táctica', 'Planeación estratégica', 'Estrategia', 'Planeación operativa', '4', 'DNAM'),
(121, 'Es el propósito general o razón de ser de la empresa u organización que expresa de manera breve y sencilla a qué clientes sirve, qué necesidades satisface, qué tipos de productos ofrece y en general, cuáles son los límites de sus actividades” ', 'Misión', 'Visión', 'Valores', 'Objetivos', '1', 'DNAM'),
(122, 'Se refiere a una imagen que la organización plantea a largo plazo sobre cómo espera que sea su futuro, una expectativa ideal de lo que espera que ocurra. Debe ser realista pero puede ser ambiciosa, su función es guiar y motivar al grupo para continuar con el trabajo.  La visión depende de la situación presente, de las posibilidades materiales presentes y futuras tal y como las perciba la organización, de los eventos inesperados que puedan ocurrir y de la propia misión que ya se haya plateado. ', 'Misión', 'Visión', 'Valores', 'Objetivos', '2', 'DNAM'),
(123, 'Son los principios que rigen tu negocio y con los que deben alinearse tanto los socios, como el personal de tu negocio. Se consideran irrompibles y los deben cumplir todos los miembros de la organización en todos sus ámbitos.', 'Misión', 'Visión', 'Valores', 'Objetivos', '3', 'DNAM'),
(124, 'Su redacción debe comenzar con un verbo en infinitivo,  deben ser ambiciosos pero alcanzables, son medibles y cuantificables.', 'Misión', 'Visión', 'Valores', 'Objetivos', '4', 'DNAM'),
(125, 'Se puede entender como la expresión de un objetivo en términos cuantitativos y cualitativos', 'Meta', 'Visión', 'Valores', 'Objetivos', '1', 'DNAM'),
(126, 'También conocida como mercadotecnia masiva, tiene la intención de centrarse sin ninguna distinción entre los clientes del mercado.', 'Estrategia de segmentación  diferenciada', 'Estrategia de segmentación  no diferenciada', 'Estrategia de segmentación  Concentrada', 'Estrategia de segmentación  psicográfica', '2', 'DNAM'),
(127, 'Consiste en promover muchos productos con diferentes mezclas de mercadotecnia adaptadas a las necesidades y deseos de diversos consumidores. ', 'Estrategia de segmentación  no diferenciada', 'Estrategia de segmentación  Concentrada', 'Estrategia de segmentación  diferenciada', 'Estrategia de segmentación  psicográfica', '3', 'DNAM'),
(128, 'Se orientan los esfuerzos de la mezcla de mercadotecnia de satisfacer de manera redituable un segmento específico, a lo que también se le conoce estrategia de un solo segmento ', 'Estrategia de segmentación  diferenciada', 'Estrategia de segmentación  no diferenciada', 'Estrategia de segmentación  psicográfica', 'Estrategia de segmentación  Concentrada', '4', 'DNAM'),
(129, 'Se emplea generalmente en situaciones donde los posibles clientes o prospectos tienen las mismas características o bien cuando el producto es nuevo y no tiene competencia.', 'Estrategia de segmentación  diferenciada', 'Estrategia de segmentación  no diferenciada', 'Estrategia de segmentación  Concentrada', 'Estrategia de segmentación  psicográfica', '2', 'DNAM'),
(130, 'Es donde tu producto podrá ser comprado por el cliente (que no necesariamente es un lugar físico)', 'Punto de venta', 'Descuentos y promociones', 'Canal de distribución', 'Servicio al cliente', '1', 'DNAM'),
(131, 'Es un circuito a través del cual los fabricantes ponen a disposición de los consumidores los productos para que los adquieran', 'Punto de venta', 'Descuentos y promociones', 'Canal de distribución', 'Servicio al cliente', '3', 'DNAM'),
(132, 'Estrategia de venta que permite captar la atención del consumidor o usuario ofreciendole una rebaja del producto sin bajar su calidad ', 'Punto de venta', 'Descuentos y promociones', 'Canal de distribución', 'Servicio al cliente', '2', 'DNAM'),
(133, 'Consiste en la capacidad, tanto tuya,  como de todos los miembros involucrados en la venta, para mantener una óptima relación con el cliente final ', 'Servicio al cliente', 'Descuentos y promociones', 'Canal de distribución', 'Punto de venta', '1', 'DNAM'),
(134, 'Toma un concepto de toma deliberada y sistemática de decisiones que incluyen propósitos más limitados, a mediano plazo, áreas menos amplias y niveles medios en la jerarquía.', 'Planeación táctica', 'Planeación estratégica', 'Estrategia', 'Planeación operativa', '1', 'DNAM'),
(135, 'Se busca establecer qué hacer y se prepara la estructura necesaria para hacerlo, comprende las actividades de planeación y organización.', 'Proceso administrativo', 'Administración', 'Fase mecánica del proceso admiistrativo', 'Fase dinámica del proceso admiistrativo', '3', 'DNAM');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `examen_especialidad`
--

CREATE TABLE `examen_especialidad` (
  `id_especialidad` int(11) NOT NULL,
  `pregunta` text NOT NULL,
  `respuesta1` varchar(200) NOT NULL,
  `respuesta2` varchar(200) NOT NULL,
  `respuesta3` varchar(200) NOT NULL,
  `respuesta4` varchar(200) NOT NULL,
  `respuesta_correcta` varchar(50) NOT NULL,
  `carrera` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `examen_especialidad`
--

INSERT INTO `examen_especialidad` (`id_especialidad`, `pregunta`, `respuesta1`, `respuesta2`, `respuesta3`, `respuesta4`, `respuesta_correcta`, `carrera`) VALUES
(7, 'Es conocido como el creador de una metodología denominada Ingeniería de Calidad. Emplea técnicas cuantitativas.', 'Genichi Taguchi', 'William Edwards Deming', 'Armand  V. Feigenbaum', 'Peter M. Senge', '1', 'DNAM'),
(8, 'Filósofo de la calidad que nos dice que \"La calidad total requiere del compromiso de la organización de proporcionar motivación continua y actividades de capacitación\".', 'Genichi Taguchi', 'William Edwards Deming', 'Armand  V. Feigenbaum', 'Wilfredo Pareto', '3', 'DNAM'),
(9, 'Filósofo de la calidad que señala que la administración para lograr calidad abarca tres procesos básicos: la planificación de la calidad, el control de calidad y el mejoramiento de la calidad.', 'Armand  V. Feigenbaum', 'William Edwards Deming', 'Shigeo Shingo', 'Joseph M. Juran', '4', 'DNAM'),
(10, 'Filósofo de la calidad que mencionó que la administración de la calidad se puede lograr a partir de cuatro etapas: Planear, hacer, verificar y actuar.', 'William Edwards Deming', 'Walter Shewhart', 'Joseph M. Juran', 'Shigeru Mizuno', '1', 'DNAM'),
(11, 'Mencionó que la calidad tiene que ser planeada completamente con un enfoque orientado hacia la excelencia en lugar del enfoque  orientado a la falla.', 'Joseph M. Juran', 'Shigeru Mizuno', 'Armand  V. Feigenbaum', 'Philip  B. Crosby', '3', 'DNAM'),
(12, 'Mencionó que la calidad comienza y finaliza con la educación.', 'William Edwards Deming', 'Walter Shewhart', 'Philip  B. Crosby', 'Kaoru Ishikawa', '4', 'DNAM'),
(13, 'Dentro de sus aportaciones destacan: el justo a tiempo, cero inventarios y jalar versus empujar.', 'Shigeo Shingo', 'Genichi Taguchi', 'Wilfredo Pareto', 'Walter Shewhart', '1', 'DNAM'),
(14, 'Filósofo de la calidad que sostiene que todos los miembros de la organización son responsables de la calidad de los productos o servicios.', 'Walter Shewhart', 'Philip  B. Crosby', 'Armand  V. Feigenbaum', 'Genichi Taguchi', '3', 'DNAM'),
(15, 'Mencionó que el 99% de los problemas de una compañía se pueden resolver utilizando las siete herramientas de la calidad.', 'Joseph M. Juran', 'Kaoru Ishikawa', 'William Edwards Deming', 'Philip  B. Crosby', '2', 'DNAM'),
(16, 'Define a la calidad como la conformidad con los requerimientos, lo cual se mide por el costo de la no conformidad.', 'Shigeru Mizuno', 'Philip  B. Crosby', 'William Edwards Deming', 'Genichi Taguchi', '2', 'DNAM'),
(17, 'Es un local, edificio o parte de este que sirve para depositar o guardar gran cantidad de artículos, productos o mercancías para su posterior venta, uso o distribución.', 'Almacén', 'Bodega', 'Inventario', 'Stokar', '1', 'DNAM'),
(18, 'Comprenden, además de las materias primas, productos en proceso y productos terminados o mercancías para la venta, los materiales, repuestos y accesorios para ser consumidos en la producción de bienes fabricados para la venta o en la prestación de servicios.', 'Inventarios', 'Stock', 'Almacén', 'Bodega', '1', 'DNAM'),
(19, 'Esta herramienta identifica los problemas de calidad que se presentan con mayor frecuencia o que han demostrado ser los más costosos. Expresa la regla 80/20 el 80% de todos los problemas se debe al 20% de las causas. ', 'Diagrama de pareto', 'Hoja de estratificación', 'Histogramas', 'diagrama de Ishikawa', '1', 'DNAM'),
(20, 'Es una representación gráfica de una variable en forma de barras, donde la superficie de cada barra es proporcional a la frecuencia de los valores representados. Sirven para obtener una primera vista general panorámica de la distribución de la población o la muestra.', 'Diagrama de Ishikawa', 'Histograma', 'Diagrama de pareto', 'Gráfica de barras', '2', 'DNAM'),
(21, 'Es un modelo matemático usado para aproximar la relación de dependencia entre una variable dependiente Y, las variables independientes X  y un término aleatorio. En mercadotecnia puede ser utilizado para obtener pronósticos de mercado.', 'Diagrama de pareto', 'Regresión lineal', 'Hoja de estratificación', 'Diagrama de Ishikawa', '2', 'DNAM'),
(22, 'Su función es crear y mantener, entre los individuos\r\nrelaciones cordiales, vínculos amistosos, basados en ciertas reglas aceptadas por todos y fundamentalmente, en el reconocimiento y respeto de la personalidad humana, son vinculaciones entre las personas. ', 'Relaciones humanas', 'Conocimientos', 'Liderazgo', 'Teorías de la meta', '1', 'DNAM'),
(23, 'Es el hecho de mostrarse franco y directo al expresar exigencias, opiniones, sentimientos y \r\nactitudes', 'Asertividad', 'Conocimiento', 'Liderazgo', 'Sentimiento', '1', 'DNAM'),
(24, 'Es la habilidad de reconocer sus emociones y las de la gente que lo rodea.', 'Inteligencia emocional ', 'Amabilidad', 'Destreza', 'Determinación', '1', 'DNAM'),
(25, 'Teoría que cuenta con  los siguientes elementos fundamentales: expectativas del esfuerzo \r\nen relación con el desempeño, expectativa  del desempeño en relación  con el resultado y valencia.', 'Teoría de la motivación ', 'Teoría de la razón', 'Teoría de la expectativa', 'Teoría de la razón', '1|', 'DNAM'),
(26, 'La habilidad de inspirar apoyo y confianza entre la gente, cuya existencia es necesaria para lograr metas comunes. ', 'Liderazgo', 'Amistad', 'Sabiduría', 'Confianza', '1', 'DNAM'),
(27, 'El método lógico,  tradicional de toma de decisiones basado en el método científico. ', 'Método de toma de decisiones', 'Conocimiento', 'Liderazgo', 'Confianza', '1', 'DNAM'),
(28, 'Este tipo de preguntas se caracterizan porque las respuestas obtenidas permiten establecer una selección cualitativa o una clasificación de las personas interrogantes.', 'Pregunta de filtro', 'Pregunta de batería', 'Pregunta dicotómica', 'Pregunta ponderativa', '1', 'DNAM'),
(29, 'Corresponde a la necesidad de plantear la finalidad de la investigación, establecer los puntos de partida para analizar la problemática o solución de lo que se quiere averiguar o descubrir. Esta elaboración permite contemplar las guías generales que ayuden a la empresa a la solución del problema o necesidad.', 'Importancia de la investigación', 'Necesidad y deseo', 'Definición del objetivo', 'Diseño del cuestionario', '3', 'DNAM'),
(30, 'Este tipo de investigación permite penetrar, a través de las ciencias de la conducta, en el porqué del comportamiento del consumidor, lo que ayuda a entender la naturaleza de las motivaciones y los frenos psicológicos', 'Investigación exploratoria', 'Investigación cuantitativa', 'Investigación experimental', 'Investigación cualitativa', '2', 'DNAM'),
(31, 'Este método de investigación se emplea cuando el universo es demasiado heterogéneo, se requiere formar grupos homogéneos, estos grupos pueden de dos tipos de afiliación proporcional, o desproporcional', 'Muestreo estratificado', ' Muestreo aleatorio simple', 'Muestreo por conglomerados', 'Muestreo probabilístico', '1', 'DNAM'),
(32, 'Conjunto de caracterísiticas propias y únicas de uns compañía y sus productos percibidos por el mercado meta como dignos de atención y superiores a los de la competencia.', 'Ventaja competitiva', 'Ventaja diferencial', 'Ventaja comparativa', 'Ventaja estratégica', '1', 'DNAM'),
(33, 'Combinación distintiva de estrategias de producto, distribución, plaza, promoción y precio diseñada para producir intercambios mutuamente satisfactorios con un mercado meta.', 'Investigación de Mercados', 'Planeación estratégia', 'Publicidad y Promoción', 'Mezcla de Mercadotecnia', '4', 'DNAM'),
(34, 'Son los elementos que componen la mezcla de mercadotecnia', 'Publicidad, Promoción, Producto y Atención a Clientes', 'Precio, Promoción, Publicidad y Mercadotecnia', 'Distribución, Producto, Servicio y Estrategia', 'Producto, Plaza, Precio y Promoción', '4', 'DNAM'),
(35, 'Creación de una mezcla de mercadotecnia específica para inlfuir en la percepción global de los consumidores potenciales de una marca, línea de productos o empresa en general.', 'Posicionamiento', 'Posición', 'Diferenciación', 'Segmentación', '1', 'DNAM'),
(36, 'Lugar de un producto, marca o grupo de productos ocupa en la mente de los conusmidores en relación con las ofertas de la competencia.', 'Posicionamiento', 'Diferenciación', 'Identidad', 'Posición', '4', 'DNAM'),
(37, 'Producto comprado para satisfacer los deseos personales de un individuo', 'Producto de conveniencia', 'Producto para negocios', 'Producto industrial', 'Producto de Consumo', '4', 'DNAM'),
(39, 'Producto utilizado para fabricar otros bienes o servicios, para facilitar las operaciones de una compañía o para revenderlo a otros consumidores', 'Producto', 'Producto de conveniencia', 'Producto de consumo', 'Producto industrial', '4', 'DNAM'),
(40, 'Artículo relativamente barato que requiere poco esfuerzo de compra. También se conoce como producto de rutina.', 'Producto de conveniencia', 'Producto de consumo', 'Producto para la familia', 'Producto para los negocios', '1', 'DNAM'),
(41, 'Son la etapas que componen el ciclo de vida del producto.', 'Inicio, decrecimiento y madurez', 'Inicio, crecimiento, desarrollo y declinación', 'Introducción, crecimiento, madurez y declinación', 'Introducción, madurez, crecimiento y final', '3', 'DNAM'),
(42, 'Elementos importantes en el Proceso de la Comunicación.', 'Persona, Lenguaje, Comentarios', 'Personas, Chismes, Noticias, Amistad', 'Ojos, Boca, Nariz, Voz', 'Emisor, Receptor, Mensaje, Canal, Retroalimentación.', '4', 'DNAM'),
(43, 'Solo se puede considerar que el proceso de comunicación se cumplió cuando existe:', 'Intercambio de miradas', 'Idioma', 'Lenguaje', 'Retroalimentación', '4', 'DNAM'),
(44, 'En el proceso de comunicación que elemento es el que decodifica el mensaje', 'Emisor', 'Lenguaje', 'Canal', 'Receptor', '4', 'DNAM'),
(45, 'Dentro del proceso de comunicación quien se encarga de codificar el mensaje', 'Receptor', 'Canal', 'Medio', 'Emisor', '4', 'DNAM'),
(46, 'Modo de color adecuado para impresión de documentos o diseños que fueron realizados en un software de diseño.', ' CGFT', ' RGB', 'HDXT', 'CMYK', '4', 'DNAM'),
(47, 'Un diseño para medios digitales como la televisión o páginas web debe ser exportado en modo de color:', 'HTCD', 'CMYK', 'HCTR', 'RGB', '4', 'DNAM'),
(48, 'Que se entiende por una extensión de archivo en un trabajo digital.', 'Es la forma en que se marca un trabajo', 'Es un conjunto de letras que indican que es un archivo de cómputo', 'Es una forma de seleccionar archivos entre diversas terminaciones ', 'Es una instrucción necesaria para que la computadora pueda determinar que programa debe utilizar para su visualización.', '4', 'DNAM'),
(49, 'Que se entiende por imagen corporativa.\r\n', 'Es una figura gráfica, a veces animada para dar a conocer un negocio.', 'Es un logotipo que identifica de manera gráfica el giro comercial del negocio.', 'Es una serie de colores institucionales que sirven de identificación del negocio', ' Es un conjunto de estrategias gráficas que persiguen el propósito de fijar la marca o nombre de un negocio en la mente del consumidor.', '4', 'DNAM'),
(50, 'Qué se entiende por logotipo.\r\n', 'Conjunto de figuras que en su conjunto proyectan una idea general.', 'Trazos de líneas y colores para identificar una marca o negocio ', 'Un dibujo con colores llamativos que ayudan a identificar un negocio.', 'Es un diseño gráfico distintivo y reconocible, un nombre estilizado un símbolo único, que sirva para identificar a una organización.', '4', 'DNAM'),
(51, 'Por qué consideras importante que la fachada de un negocio sea planeada y diseñada para un fin comercial determinado.\r\n', ' Para que sea vistosa, atractiva y diferente a las demás', 'Para llamar la atención del cliente, con colores', 'Como estrategia publicitaria y comercial', 'Para fijar el negocio en la mente del consumidor, como una primera impresión y de contacto con el cliente.', '4', 'DNAM'),
(52, 'En una cámara fotográfica, que función tiene el obturador.\r\n', 'Regula la cantidad de luz que pasa por el lente', ' Limpia la imagen desde la cámara', 'Es un filtro especializado, solo existe en cámaras profesionales', 'Regula el tiempo que pasa la luz por el lente, ocurre en fracciones de segundo.', '4', 'DNAM'),
(53, 'En una cámara fotográfica, que función tiene el diafragma. ', 'Regula el tiempo que pasa la luz por el lente, ocurre en fracciones de segundo.', 'Disminuye la cantidad de luz desde dentro de la cámara', 'Es un sistema de auto limpieza', 'Regula la cantidad de luz que pasa por el lente su sinbología en f.', '4', 'DNAM'),
(54, 'Cuantas funciones tiene el disparador en una cámara fotográfica.\r\n', 'Sólo una función, la de tomar fotos.', 'Trabaja de manera coordinada con el lente,', 'Tiene más de 15 funciones ', 'Tiene 2 funciones principales, la primera para medir la cantidad de luz y programar diafragma y obturador y segunda la de tomar la fotografía.', '4', 'DNAM'),
(55, 'Que nombre recibe el principio fotográfico que refiere que el objeto a fotografiar no debe estar en el centro del enfoque. \r\n', 'La regla de los elementos', 'La ley del equilibrio', ' La regla de la dimensión', 'La regla de los tercios', '4', 'DNAM'),
(56, 'Unidad de medida que refiere a la parte mínima en una imagen digital.', 'Punto', 'Metro', 'Puntillismo', 'Pixel', '4', 'DNAM'),
(57, 'Técnica de impresión que requiere de bastidores y raseros para poder realizarla y en su creación utilizaba telas de seda. ', ' Impresión Laser', ' Impresión de Inyección de Tinta', 'Impresión por offset ', 'Serigrafía ', '4', 'DNAM'),
(58, 'Son elementos del costo de la producción:', 'Materia prima, mano de obra, gastos indirectos de fabricación', 'Activo, pasivo, capital', 'Gastos de venta, gastos de fabricación, gastos financieros', 'costos variables y costos fijos', '1', 'DNAM'),
(59, 'Es el cálculo anticipado de un ingreso, costo y gasto.\r\n', 'Contabilidad', 'Finanzas', 'Orígen y aplicación de recursos', 'Presupuestos', '4', 'DNAM'),
(60, 'El costo primo es igual a:\r\n', 'Materia prima + mano de obra', 'Activo- pasivo', 'Ventas-costo de ventas', 'Utilidad bruta', '1', 'DNAM'),
(61, 'El costo de producción es igual a:\r\n', 'Materia prima + mano de obra+ gastos indirectos de fabricación', 'Materia prima +mano de obra', 'Mano de obra + gastos indirectos de fabricación', 'Costos de arranque', '1', 'DNAM'),
(62, 'Un presupuesto maestro se integra con el presupuesto de:\r\n', 'Ventas, costo de producción, gastos de venta, presupuesto de compras', 'Estado de resultados proforma.', 'Ventas y el estado de resultados proforma', 'Presupuesto de compras y ventas', '1', 'DNAM'),
(63, 'Son gastos indirectos de fabricación:', 'Energía eléctrica, depreciaciones, agua arrendamientos', 'Materia prima, mano de obra', 'Propaganda, publicidad, comisiones', 'Pago de suministros', '1', 'DNAM'),
(64, 'Se consideran costos indirectos de fabricación\r\n', 'Materiales indirectos,  mano de obra indirecta', 'Materia prima, mano de obra', 'Materia prima, propaganda y publicidad ', 'Insumos y suministros', '1', 'DNAM'),
(65, 'La determinación del costo unitario de producción es igual a:\r\n', 'Total de costo de producción terminada /número de unidades producidas', 'Total de ventas  –  costo de ventas', 'Utilidad del ejercicio/ ventas', 'Utilidad del ejercicio - inventarios', '1', 'DNAM'),
(66, 'Es un requisito que deben cumplir las Regulaciones y Restricciones no Arancelarias para ser exigibles en el punto de entrada al país:\r\n', 'Que se identifiquen en términos de su fracción arancelaria', ' Que les dé el visto bueno la Organización Mundial de Aduanas', 'Que las Cámaras de Comercio Mexicanas las aprueben', 'Ninguna de las anteriores', '1', 'DNAM'),
(67, 'Menciona tres restricciones arancelarias exclusivas de la Secretaria de Economía\r\n', 'Cupos, NOM, Cuotas Compensatorias', 'Cupos, Permisos Previos y Cuotas Compensatorias', 'NOM, Permisos Previos y Cupos', 'Ninguna de las anteriores', '2', 'DNAM'),
(68, '¿Quién tiene la facultad de restringir y prohibir las importaciones y exportaciones de mercancías?\r\n', ' La Secretaria de Economía', ' La Aduana', ' El Ejecutivo Federal', 'Ninguna de las anteriores', '3', 'DNAM'),
(69, '¿Qué mercancías están sujetas a Permiso Automático de la Secretaría de Economía?\r\n', 'Azúcar, productos textiles y de confección', 'Calzado, juguetes y azúcar', ' Calzado, productos textiles y de confección', 'Ninguna de las anteriores', '3', 'DNAM'),
(70, '¿Cuántos tipos de Aduanas existen según el tráfico aduanero?\r\n', '4', '3', '2', '5', '2', 'DNAM'),
(71, 'Los idiomas en que pueden indicarse el marcado de país de origen de un Bien estadounidense\r\n', 'Cualquier idioma con su respectiva traducción.', 'Español, Inglés y Francés', 'Español o Inglés', ' Chino e Inglés', '2', 'DNAM'),
(72, '¿Cuáles son los tres grandes reinos de la naturaleza, que utiliza el Sistema Armonizado para clasificar las mercancías?\r\n', ' Reino Animal, Reino Monera y Reino Vegetal', ' Reino Vegetal, Reino Fungi y Reino Animal', 'Reino Animal, Reino Vegetal y Reino Mineral', 'Reino Animal y  Reino Vegetal ', '3', 'DNAM'),
(73, '¿Quién puede solicitar la certificación  como Socio Comercial ?\r\n', 'El Agente Aduanal', 'El dictaminador aduanero', ' El Apoderado Aduanal', 'Representante legal', '1', 'DNAM'),
(74, 'Definición de comercio internacional.\r\n', ' Es el intercambio de bienes o servicios existentes entre dos o más naciones con el propósito de que cada uno para que pueda satisfacer sus necesidades de mercado interno como externo.', ' Es el intercambio de bienes como productos y servicios entre países alrededor del mundo.', 'Es el conjunto de actos y formalidades relativos a la entrada y salida de mercancías al territorio.', 'Todas las anteriores', '2', 'DNAM'),
(75, 'Tiene como propósito salvaguardar la salud y la seguridad humana, animal o vegetal, el equilibrio ecológico y otras cuestiones relacionadas con el bienestar humano.\r\n', 'Regulaciones arancelarias', ' Regulaciones no Arancelarias', ' Norma Ecológica', 'Zoosanitaria', '2', 'DNAM'),
(76, 'Obstaculizan o restringen las mercancías a la importación o exportación  a fin de salvaguardar los sectores industriales del país y la economía nacional pudiendo consistir en medidas de carácter económico o administrativas.\r\n', 'Restricciones  No Arancelarias ', 'Restricciones Arancelarias', 'Barrera  Arancelaria', 'Política Comercial ', '1', 'DNAM'),
(77, '¿Quién autoriza la patente  de una agente aduanal?\r\n', 'La SHCP ', 'La CAAAREM', 'La SE', 'Aduana', '1', 'DNAM'),
(78, 'Es un impuesto exigible en frontera, ante el tráfico de mercancía de un territorio aduanero a otro.\r\n', 'Arancel Antidupimg', 'Barrera Arancelaria', 'Arancel', 'Cuotas/ cupos', '3', 'DNAM'),
(79, 'Es la oficina de gobierno encargada de la cobranza de los derechos que percibe el fisco federal por la importación o exportación de mercancías.\r\n', 'Aduana', 'SE', 'BANCOMEXT', 'SHCP', '1', 'DNAM'),
(80, 'Este  estudio no se realiza en la investigación de mercado.\r\n', 'De los procesos de producción', 'De clientes', 'De competidores', 'De precios', '1', 'DNAM'),
(81, '¿En la realización de un plan de negocios, ¿Qué estudio se debe efectuar primero?\r\n', 'De mercado', 'Técnico', 'Financiero', 'Evaluación económica', '1', 'DNAM'),
(82, 'En este estudio se debe mostrar si existen las condiciones sobre la viabilidad, conveniencia y oportunidad, sobre llevar a cabo la ejecución de un proyecto de inversión o de plano mejor no ejecutarlo.\r\n', 'De mercado', 'Técnico', 'Financiero', 'Evaluación económica', '4', 'DNAM'),
(83, 'Este estudio tiene como finalidad es probar que existe un número suficiente  de individuos, empresas u otras entidades económicas que presentan una demanda que justifica la puesta en marcha de un proyecto de inversión\r\n', 'De mercado', 'Técnico', 'Financiero', 'Evaluación económica', '1', 'DNAM'),
(84, 'El objetivo fundamental de este estudio es diseñar la función de producción óptima, que mejor utilice los recursos disponibles para obtener el producto deseado, sea este un bien o un servicio.\r\n', 'De mercado', 'Técnico', 'Financiero', 'Evaluación económica', '2', 'DNAM'),
(85, 'Este estudio comprende la inversión, la proyección de los ingresos y de los gastos y las formas de financiamiento que se prevén para la ejecución y operación del proyecto de inversión. \r\n', 'De mercado', 'Técnico', 'Financiero', 'Evaluación económica', '3', 'DNAM'),
(86, 'Se refiere a un análisis de las formas actuales en que está organizada la cadena que relaciona a la unidad productora con la unidad consumidora.\r\n', 'Estudio de clientes', 'Estudio de competidores', 'Estudio de precios', 'Estudio de comercilización', '4', 'DNAM'),
(87, 'Este estudio tiene como finalidad demostrar y cuantificar la existencia, en ubicaciones geográficamente definidas, de individuos o entidades organizadas que son consumidores o usuarios actuales o potenciales de nuestro producto o servicio.\r\n', 'Estudio de clientes', 'Estudio de competidores', 'Estudio de precios', 'Estudio de comercilización', '1', 'DNAM'),
(88, 'En este tipo de estudio requiere utilizar una variedad de técnicas  de encuestas, directas o indirectas con el propósito de conocer la situación actual o futura de la oferta.\r\n', 'Estudio de clientes', 'Estudio de competidores', 'Estudio de precios', 'Estudio de comercilización', '2', 'DNAM'),
(89, 'En este tipo de estudio es preferible hacer estimaciones de valores máximo y mínimos probables de los precios y analizar cómo se reflejan estos valores en la cuantía de la demanda futura.\r\n', 'Estudio de clientes', 'Estudio de competidores', 'Estudio de precios', 'Estudio de precios', '3', 'DNAM'),
(90, 'Interviene activamente en la orientación y formulación de la estrategia de la empresa. Facilita información sobre la evolución de la demanda, la segmentación del mercado, las posiciones competitivas y la existencia de oportunidades y amenazas. Igualmente, analiza las capacidades y recursos para adaptar la empresa al entorno y situarla en una posición de ventaja competitiva sostenible\r\n', ' Mercadotecnia de la publicidad', ' Mercadotecnia de la publicidad', 'Mercadotecnia estratégica', 'Mercadotecnia de los clientes', '4', 'DNAM'),
(91, 'Es el elemento que define y encuadra las líneas maestras de comunicación y comercialización de la empresa, para aprovechar las oportunidades del mercado.\r\n', ' Mercadotecnia de la publicidad', 'Mercadotecnia de servicios', 'Mercadotecnia estratégica', 'Mercadotecnia de los clientes', '3', 'DNAM'),
(92, 'En esta mercadotecnia se trata de aplicar los mismos principios de la mercadotecnia general a bienes intangibles. Con las respectivas diferencias que su propia naturaleza implica.\r\n', ' Mercadotecnia de la publicidad', 'Mercadotecnia de servicios', 'Mercadotecnia estratégica', 'Mercadotecnia de los clientes', '2', 'DNAM'),
(93, 'Se define como el proceso social y administrativo por el que los grupos e individuos satisfacen sus necesidades al crear e intercambiar bienes y servicios.\r\n', ' Mercadotecnia ', 'Mercadotecnia de servicios', 'Mercadotecnia estratégica', 'Mercadotecnia de los clientes', '1', 'DNAM'),
(94, 'Son técnicas de recolección de información de la empresa como fuentes secundarias o primarias a través de las diferentes herramientas:\r\n', 'Lista de chequeo, benchmarking, informes, reportes de ventas, indicadores de desempeño, estado de resultados, investigación de mercado)', 'Matriz BCG, y las fuerzas competitivas de Porter', 'Estado de resultados y balance general', 'Análisis FODA, Benchmarking, y análisis interno de la empresa', '1', 'DNAM'),
(95, 'Este modelo establece un marco para analizar el nivel de competencia dentro de una industria, y poder desarrollar una estrategia de negocio. \r\n', 'Benchmarking', 'Matriz BCG', 'Análisis FODA', 'las 5 fuerzas  de Porter', '4', 'DNAM'),
(96, 'Es una metodología de estudio de la situación de una empresa o un proyecto, analizando sus características internas y su situación externa en una matriz cuadrada. Proviene de las siglas en inglés SWOT\r\n', 'Benchmarking', 'Matriz BCG', 'Análisis FODA', 'las 5 fuerzas  de Porter', '3', 'DNAM'),
(97, 'También es conocida como  Matriz de crecimiento - participación y  es  un método gráfico de análisis de cartera de negocios.\r\n', 'Benchmarking', 'Matriz BCG', 'Análisis FODA', 'las 5 fuerzas  de Porter', '2', 'DNAM'),
(98, 'Puede definirse como un proceso sistemático y continuo para evaluar comparativamente los productos, servicios y procesos de trabajo en organizaciones.\r\n', 'Benchmarking', 'Matriz BCG', 'Análisis FODA', 'las 5 fuerzas  de Porter', '1', 'DNAM'),
(99, 'Son las etapa del ciclo de vida de un producto\r\n', 'Gestación, introducción, desarrollo,  madurez y declive', 'Nacimiento, crecimiento, Madurez', 'Introducción, Desarrollo, Conclusión', 'Ninguna de las anteriores', '1', 'DNAM'),
(100, 'La rivalidad entre empresas competidoras, entrada potencial de nuevos competidores, desarrollo potencial de productos sustitutos, poder de negociación de los proveedores, poder de negociación de los consumidores con características de \r\n', 'Análisis FODA', ' Fuerzas competitivas de Porter', 'Matriz BCG', ' Análisis de la competencia', '2', 'DNAM'),
(101, 'Es identificar  a la competencia directa e indirecta de una empresa, número y tamaño de las empresas competidoras, su fortaleza financiera, volumen de ventas y la situación actual de sus 4 p´s\r\n', 'Análisis FODA', ' Fuerzas competitivas de Porter', 'Matriz BCG', ' Análisis de la competencia', '4', 'DNAM'),
(102, 'Técnica comercial para establecer correcciones o nuevos desarrollos a un producto, una vez que se encuentra en el mercado.\r\n', 'Merchandsing', 'Praincodereci', 'Método AÍDA', 'Mezcla de Mercadotecnia', '1', 'DNAM'),
(103, 'Consiste en los siguientes pasos: Precontacto, Presentación, Atención, Convicción, Deseo, Resolución y Cierre.\r\n', 'Merchandsing', 'Praincodereci', 'Método AÍDA', 'Mezcla de Mercadotecnia', '2', 'DNAM'),
(104, 'Son las herramientas o variables  de las que dispone el responsable de la mercadotecnia para cumplir con los objetivos de la compañía. Son las estrategias de marketing, o esfuerzo de mercadotecnia y deben incluirse en el Plan de marketing\r\n', 'Merchandsing', 'Praincodereci', 'Método AÍDA', 'Mezcla de Mercadotecnia', '4', 'DNAM'),
(105, 'Es un modelo clásico que describe los efectos que produce secuencialmente un mensaje publicitario. El cliente experimenta: Atención, Interés, deseo y acción.\r\n', 'Merchandsing', 'Praincodereci', 'Método AÍDA', 'Mezcla de Mercadotecnia', '3', 'DNAM'),
(106, 'Es un título de crédito de valor formal y completo que contiene una orden incondicionada y abstracta de hacer pagar a su vencimiento al tomador o a su orden una suma de dinero en un lugar determinado, vinculando solidariamente a todos los que en ella intervienen.\r\n', 'Letra de cambio', 'Pagaré', 'Cheque', 'Cheque cruzado', '1', 'DNAM'),
(107, 'Documento que extiende y entrega una persona a otra mediante el cual contrae la obligación de pagarle una cantidad de dinero en la fecha que figura en él.\r\n', 'Letra de cambio', 'Pagaré', 'Cheque', 'Cheque cruzado', '2', 'DNAM'),
(108, 'Documento que lleva dos barras paralelas que le impiden ser cobrado en efectivo. Debe ser ingresado en cuenta.\r\n', 'Letra de cambio', 'Pagaré', 'Cheque', 'Cheque cruzado', '4', 'DNAM'),
(109, '\"Esta sociedad existe bajo una razón social y en la que\r\ntodos los socios responden, de modo subsidiario, ilimitada y solidariamente, de las obligaciones sociales.\"\r\n', 'Sociedad en nombre colectivo', 'Sociedad en comandita simple', 'Sociedad de responsabilidad limitada', 'Sociedad  anónima', '1', 'DNAM'),
(110, 'Esta sociedad existe bajo una razón social y se compone de uno o varios socios comanditados que responden, de manera subsidiaria, ilimitada y  solidariamente, de las obligaciones sociales, y de uno o varios comanditarios que únicamente están obligados al pago de sus aportaciones.\r\n', 'Sociedad en nombre colectivo', 'Sociedad en comandita simple', 'Sociedad de responsabilidad limitada', 'Sociedad  anónima', '2', 'DNAM'),
(111, '\"Esta sociedad  se constituye entre socios que\r\nsolamente están obligados al pago de sus aportaciones, sin que las partes sociales puedan estar\r\nrepresentadas por títulos negociables, a la orden o al portador, pues sólo serán cedibles en los casos y\r\ncon los requisitos que establece la  Ley.\"\r\n', 'Sociedad en nombre colectivo', 'Sociedad en comandita simple', 'Sociedad de responsabilidad limitada', 'Sociedad  anónima', '3', 'DNAM'),
(112, 'Esta sociedad se constituye  bajo una denominación y se compone exclusivamente de socios cuya obligación se limita al pago de sus acciones.\r\n', 'Sociedad en nombre colectivo', 'Sociedad en comandita simple', 'Sociedad de responsabilidad limitada', 'Sociedad  anónima', '4', 'DNAM'),
(113, 'Es el sistema por el cual quien gana más paga mayores impuestos\r\n', 'Impuesto directo', 'Impuesto indirecto', 'Sistema progresivo', 'Ninguna de las anteriores', '3', 'DNAM'),
(114, '¿Cuáles son las dos clases de innovación?\r\n', 'Modelos macro y micro', 'Fabricación y comercialización', 'Producto y proceso', 'Producto y proceso', '3', 'DNAM'),
(115, 'Es la transformación de una idea en un producto vendible nuevo o mejorado.\r\n', 'Innovar', 'Manual de Frascati', 'Innovación social', 'Ninguna de las anteriores', '1', 'DNAM'),
(116, 'Comprende los cambios introducidos en los productos y en los procesos.\r\n', 'Innovación social', 'Innovación tecnológica', 'Innovación en métodos de gestión', 'Ninguna de las anteriores', '3', 'DNAM'),
(117, '¿Cuáles son los modelos más utilizados dentro del proceso de innovación?\r\n', 'Modelo lineal y enlace en cadena', 'Incremental y radial', 'Producto y proceso', 'Ninguna de las anteriores', '1', 'DNAM'),
(118, 'Se define como el comprador potencial o real de productos o servicios\r\n', 'Cliente', 'Proveedor', 'Demnada', 'Comercio electrónico', '1', 'DNAM'),
(119, 'Puede ser una persona o una empresa que abastece a otras empresas con existencias (artículos), los cuales serán transformados para venderlos posteriormente o directamente se compran para su venta.\r\n', 'Cliente', 'Proveedor', 'Demnada', 'Comercio electrónico', '2', 'DNAM'),
(120, 'Se define como la cantidad  de bienes y servicios que pueden ser adquiridos en los diferentes precios del mercado por un consumidor o por el conjunto de consumidores \r\n', 'Cliente', 'Proveedor', 'Demnada', 'Comercio electrónico', '3', 'DNAM'),
(121, 'Consiste en la compra y venta de productos o de servicios a través de medios electrónicos, tales como Internet y otras redes informáticas.\r\n', 'Cliente', 'Proveedor', 'Demnada', 'Comercio electrónico', '4', 'DNAM'),
(122, 'Es el cliente que siempre tiene prisa, es el cliente que quiere entrar al negocio, comprar y salir lo más pronto posible.\r\n', 'El cliente difícil', 'El cliente amigable', 'El cliente tímido', 'El cliente impaciente', '4', 'DNAM'),
(123, ' Es el cliente introvertido, callado, en la mayoría de los casos, inseguro e indeciso.\r\n', 'El cliente difícil', 'El cliente amigable', 'El cliente tímido', 'El cliente impaciente', '3', 'DNAM'),
(124, 'Es el cliente amable, simpático, cortes, es el cliente que todo negocio siempre quiere tener, aunque en ocasiones puede llegar a ser muy hablador, haciéndonos perder tiempo.\r\n', 'El cliente difícil', 'El cliente amigable', 'El cliente tímido', 'El cliente impaciente', '2', 'DNAM'),
(125, 'Es el cliente exigente, es el cliente que siempre está quejándose de todo, que siempre encuentra un defecto hasta en el más mínimo detalle, que nunca queda satisfecho, que cree tener siempre la razón, que no le gusta que lo contradiga, y que puede hasta llegar a ponerse prepotente y agresivo.\r\n', 'El cliente difícil', 'El cliente amigable', 'El cliente tímido', 'El cliente impaciente', '1', 'DNAM'),
(126, 'En la gestión de compras,  estas especificaciones suelen estar dictaminadas o bien por un departamento técnico (entorno industrial) o bien por el departamento de marketing (entorno comercial)\r\n', 'Control de las especificaciones de calidad requeridas', 'Gestión de precios', 'Gestión de plazos y condiciones de entregas', 'Ninguna de las anteriores', '1', 'DNAM'),
(127, 'Para conseguir compras lo más económicas posibles\r\n', 'Control de las especificaciones de calidad requeridas', 'Gestión de precios', 'Gestión de plazos y condiciones de entregas', 'Ninguna de las anteriores', '2', 'DNAM'),
(128, 'Se trata de la actividad que se lleva a cabo para satisfacer las necesidades de consumo de una estructura económica (una familia, una empresa, etc.).\r\n', 'Abastecimiento', 'Circulación ', 'Logística', 'Comercialización', '1', 'DNAM'),
(129, 'Se define como el conjunto de medios y métodos necesarios para llevar a cabo la organización de una empresa, o de un servicio, especialmente de distribución\r\n', 'Abastecimiento', 'Circulación ', 'Logística', 'Comercialización', '3', 'DNAM'),
(130, 'Se utiliza en la gestión de compras para conseguir máxima fiabilidad, flexibilidad y reducción de los tiempos de entrega\r\n', 'Control de las especificaciones de calidad requeridas', 'Gestión de precios', 'Gestión de plazos y condiciones de entregas', 'Ninguna de las anteriores', '3', 'DNAM'),
(131, 'Conocidas también como tele marketing. Hay ciertos productos que son más eficaces a la hora de venderlos sin ser vistos, algunos ejemplos son afiliaciones a organizaciones o clubes, subscripciones a diarios, revistas, entre otros.\r\n', 'Ventas minoristas', 'Ventas por correo', 'Ventas por teléfono', 'Ventas personales', '3', 'DNAM'),
(132, 'Los productos son ofrecidos a los posibles compradores vía  catálogos, videos, folletos, muestras, entre otros métodos, utilizando siempre el correo como medio. Junto al envío es incluido un formulario que posibilite el pedido.\r\n', 'Ventas minoristas', 'Ventas por correo', 'Ventas por teléfono', 'Ventas personales', '2', 'DNAM'),
(133, 'La relación entre el comprador y el vendedor es directa,  Es considerada la venta más eficaz ya que genera mayores posibilidades de poder convencer al potencial comprador.\r\n', 'Ventas minoristas', 'Ventas por correo', 'Ventas por teléfono', 'Ventas personales', '4', 'DNAM'),
(134, 'Dentro de este tipo transacciones la venta es directamente al último consumidor, es decir que no debe continuar en el mercado, si no que está destinado el consumo personal.\r\n\r\n\r\n', 'Ventas minoristas', 'Ventas por correo', 'Ventas por teléfono', 'Ventas personales', '1', 'DNAM'),
(135, 'Dentro de esta clasificación los bienes adquiridos están destinados a ser revendidos o bien para ser utilizados en la producción de otros bienes o servicios. Este tipo de compras permiten acceder a cierto ahorro.\r\n', 'Ventas por correo', 'Ventas por teléfono', 'Ventas personales', 'Ventas mayoristas', '4', 'DNAM'),
(136, 'Está constituido por las ofertas de trabajo o de empleo que ofrecen las organizaciones en determinado lugar o determinada época \r\n', 'Mercado de trabajo     ', 'Mercado de trabajo y empleo    ', 'Mercado laboral ', 'Mercado de recursos humanos', '2', 'DNAM'),
(137, 'El concepto de mercado presenta  aspectos importantes, selecciona cuales son\r\n', 'Una dimensión de espacio, Una dimensión de tiempo, Una dimensión de oferta y demanda', 'Una dimensión económica,  Una dimensión situacional, Una dimensión  de empleo', 'Una dimensión de tiempo, Una dimensión de información', 'Una dimensión de oferta y demanda, una dimensión económica, una dimensión de empleo', '1', 'DNAM'),
(138, 'Selecciona las actividades involucradas en el proceso de retención de personas\r\n', 'Remuneración, prestaciones, higiene/seguridad y relaciones sindicales', 'Reclutamiento,  capacitación, prestaciones, higiene / Seguridad', 'Productividad, desarrollo organizacional, remuneraciones', 'Relaciones sindicales,   selección, productividad', '1', 'DNAM'),
(139, 'Selecciona las técnicas de recursos humanos utilizadas en el ambiente interno\r\n', 'Valuación de puestos, capacitación, legislación laboral ', 'valuación de puestos, capacitación, política salarial, higiene y seguridad, plan de vida y carrera', 'Reclutamiento, selección, plan de vida y carrera y capacitación', 'Investigación de salarios y prestaciones política salarial,', '2', 'DNAM'),
(140, 'La educación profesional comprende tres etapas independientes pero perfectamente distintas, estas etapas son la  Formación Profesional, la capacitación y el______________\r\n', 'Desarrollo', 'Formación profesional', 'Desarrollo profesional', 'Educación', '3', 'DNAM'),
(141, 'Preparar a las personas  para la realización inmediata de diversas tareas del puesto, es un objetivo de la….\r\n', 'Capacitación ', ' Educación', 'Desempeño', 'Formación', '1', 'DNAM'),
(142, 'En la detección de las necesidades de capacitación se efectúa considerando tres niveles de análisis, selecciónalos.\r\n', 'Análisis organizacional, Satisfacción de necesidades, políticas de capacitación', 'Plan de negocios,   Satisfacción de necesidades, análisis organizacional', 'Estrategia organizacional, plan de negocios, análisis de operaciones y tareas       ', 'análisis organizacional, Análisis de operaciones y tareas,  Análisis de los recursos humanos       ', '4', 'DNAM'),
(143, 'Los accidentes laborales se clasifican en\r\n', '. Accidente con ausencia, prevención de accidentes, responsabilidad social ', 'Incapacidad total o permanente, muerte del accidentado, responsabilidad socia', 'Capacidad total o parcial, prevención de accidentes, responsabilidad social', 'Accidentes con ausencia, incapacidad total o permanente, muerte del accidentado Incapacidad parcial y permanente', '4', 'DNAM'),
(144, 'Un plan de seguridad implica ciertos requisitos, derivado de ellos es importantes aplicar algunos principios como:\r\n', 'Instrucciones de seguridad para cada actividad,  Apoyo activo de la administración', 'Las condiciones de trabajo, Que la persona se adapte al trabajo,', 'Instrucciones de seguridad para cada actividad, apoyo activo de la administración, capacitar a los agentes, supervisores y trabajadores', 'La seguridad no debe ser limitada al área de producción,    Capacitar a los gerentes, supervisores y trabajadores,  Que la persona se adapte al trabajo ', '3', 'DNAM'),
(145, ' Lo conforman un conjunto de diferentes elementos que interactúan entre ellos, debiendo apoyarse unos en otros de manera armónica para poder subsistir y lograr el cumplimiento de sus objetivos\r\n', 'Entorno', 'Ecosistema', 'Ecoturismo', 'Sistema', '4', 'DNAM'),
(146, 'Medios de los que se vale el D.O. para llevar acabo el cambio planeado\r\n', 'Catarsis', 'Transformación organizaciona', 'Sistema cliente   ', 'Intervenciones', '4', 'DNAM'),
(147, 'Se define como una modificación de las fuerzas que mantienen el comportamiento de un sistema estable, dicho comportamiento es producto de dos tipos de fuerzas: impulsoras y restrictivas\r\n', 'Modelo de cambio de Kurt Lewin', 'Modelo de planeación', 'Modelo Burke Litwin', 'Modelo de Ralph Kilmann', '1', 'DNAM'),
(148, 'La cámara de Gessel se utiliza en la técnica de:\r\n', 'Entrevistas', 'Collage', 'Grupos de enfoque', 'Cuestionarios', '3', 'DNAM'),
(149, 'Se dice que implica un cambio evolutivo y de adaptación, en el cual cambia las características de la organización aunque su naturaleza es la misma, esto se refiere a:\r\n', 'Ambiente de la organización', 'Cambio de segundo orden  ', 'Cambio de primer orden', 'Reingeniería', '3', 'DNAM'),
(150, 'Documento que extiende y entrega una persona a otra para que esta pueda retirar una cantidad de dinero de los fondos que aquélla tiene en el banco.\r\n\r\n', 'Letra de cambio', 'Pagaré', 'Cheque', 'Cheque cruzado', '3', 'DNAM'),
(151, 'Son las fases del ciclo de Deming:', 'Verificar, Actuar, Medir, Planificar', 'Verificar, Planificar, Hacer y Actuar', 'Planificar, Hacer, Seguir, Actuar', 'Verificar, Seguir, Medir, Planificar', '2', 'TICMCE'),
(152, 'Es un esfuerzo temporal que se lleva a cabo para crear un producto, servicio o resultado único.', 'Proceso', 'Presupuesto', 'Proyecto', 'Plan', '3', 'TICMCE'),
(153, 'Medidas y actividades interrelacionadas realizadas para obtener un conjunto específico de productos, resultados o servicios.', 'Proceso', 'Proyecto', 'Presupuesto', 'Plan', '1', 'TICMCE'),
(154, 'Son elementos de un proceso:', 'Entradas, Técnicas y Salidas', 'Herramientas, Presupuestos y Calendarios', 'Personal y Software', '', '1', 'TICMCE'),
(155, 'La administración de proyectos es una estrategia usada por empresas e instituciones para alcanzar objetivos en un tiempo determinado.', 'Cierto', 'Falso', '', '', '1', 'TICMCE'),
(156, 'im15.jpg', '1 - b, 2 - a, 3 - d, 4 - c', '1 - b, 2 - d, 3 - a, 4 - c', '1 - b, 2 - a, 3 - d, 4 - c', '1 - b, 2 - c, 3 - d, 4 - a', '1', 'TICMCE'),
(157, 'im16.jpg', '1, 4, 3, 2, 5', '4, 1, 2, 3, 5', '1, 4, 2, 3, 5', '4, 1, 3, 2, 5', '3', 'TICMCE'),
(158, 'Representa los requerimientos del cliente y del usuario final, reuniendo las entradas de los interesados para entender el problema que será solucionado:', 'Tester', 'Analista', 'Programador', 'Diseñador', '2', 'TICMCE'),
(159, '¿El Diseñador es el responsable de desarrollar las funcionalidades del sistema, incluyendo su diseño para ajustarlo en la arquitectura, implementando, probando, integrando y documento componentes que forman parte de la solución?', 'Cierto', 'Falso', '', '', '2', 'TICMCE'),
(160, '¿El Tester evalúa los requerimientos desarrollados y la funcionalidad del sistema congruente a los mismos?', 'Cierto', 'Falso', '', '', '1', 'TICMCE'),
(161, 'Son todos elementos de la calidad de un Sistema de TI:', 'Productos, Presupuestos y Planes', 'Personas, Procesos, Plataformas y Proyectos', '', '', '2', 'TICMCE'),
(162, 'Son normas que evalúan a la calidad de un proceso de software:', 'CMMI, MoProsoft e ISO 15504', 'ISO 25000, TSP e ISO 9126', '', '', '1', 'TICMCE'),
(163, 'Son las normas que evalúan la calidad en las personas involucradas en el desarrollo de software:', 'ISO 15504 y CMMI', 'TSP y PSP', 'Kuali-Beh y MoProSoft', '', '2', 'TICMCE'),
(164, 'Son las normas que evalúan la calidad de un producto de software:', 'ISO 9126, ISO 14598 y ISO 25000', 'CMMI, ISO 12207 y MoProsoft', '', '', '1', 'TICMCE'),
(165, 'Los ____________________________ representan la simplificación del proceso de desarrollo de software.', 'Procesos de Desarrollo', 'Casos de Uso', 'Modelos de desarrollo', 'Requerimientos', '3', 'TICMCE'),
(166, 'Son las fases del desarrollo de software:', 'Análisis de requerimientos, Diseño, Desarrollo, Pruebas e Implementación', 'Planeación, Análisis y Diseño, Desarrollo, Pruebas e Implementación', 'Planeación, Análisis de requerimientos, Diseño, Desarrollo, Seguimiento e Implementación', 'Análisis de requerimientos, Diseño, Desarrollo, Pruebas e Implementación', '1', 'TICMCE'),
(167, 'Scrum, XP, Crystal, Kanban y Lean son:', 'Modelos de desarrollo de software tradicionales', 'Modelos de desarrollo de software orientados a objetos', 'Modelos de desarrollo de software ágiles', 'Modelos de desarrollo de software unificados', '3', 'TICMCE'),
(168, 'Scrum, XP, Crystal, Kanban y Lean son:', 'Modelos de desarrollo de software tradicionales', 'Modelos de desarrollo de software orientados a objetos', 'Modelos de desarrollo de software ágiles', 'Modelos de desarrollo de software unificados', '3', 'TICMCE'),
(169, 'Cascada, V, espiral, RUP e Ingeniería de Software basada en componentes son:', 'Modelos de desarrollo de software tradicionales', 'Modelos de desarrollo de software ágiles', 'Modelos de desarrollo de software orientados a objetos', 'Modelos de desarrollo de software unificados', '1', 'TICMCE'),
(170, 'Condición que debe ser cumplida por el software para que pueda ser recibido por el cliente.', 'Requerimiento', 'Solución', 'Plan del proyecto', 'Presupuesto', '1', 'TICMCE'),
(171, 'im17.jpg', '1 - b, 2 - c, 3 - a', '1 - b, 2 - a, 3 - c ', '1 - c, 2 - c, 3 - b ', '', '1', 'TICMCE'),
(172, 'Los ____________________________ son enunciados acerca de servicios que el sistema debe proveer, de cómo debería reaccionar el sistema a entradas particulares y de cómo debería comportarse en situaciones específicas.', 'Casos de Uso', 'Atributos de la Entidad', 'Requerimientos Funcionales', 'Requerimientos No Funcionales', '3', 'TICMCE'),
(173, 'Los _____________________________ son limitaciones sobre servicios o funciones que ofrece el sistema.', 'Casos de Uso', 'Atributos de la Entidad', 'Requerimientos Funcionales', 'Requerimientos No Funcionales', '4', 'TICMCE'),
(174, 'Del Producto, Externos y de la Organización son los tipos de:', 'Casos de Uso', 'Atributos de la Entidad', 'Requerimientos Funcionales', 'Requerimientos No Funcionales', '4', 'TICMCE'),
(175, 'Son los elementos del modelo de redacción para los requerimientos de software:', 'Tiempo, deberá, evento, objeto', 'Tiempo, deberá, evento, actor', 'Lugar-tiempo-evento-objeto, debe-deberá-no debe-no deberá, sujeto, acción-verbo', 'Lugar-tiempo-evento-objeto, debe-deberá-no debe-no deberá, requerimiento, acción-verbo', '3', 'TICMCE'),
(176, 'Representa la correcta redacción de los RF:', 'Imprimir el ticket de venta', 'El Sistema debe permitir al Cajero imprimir el comprobante de la venta ', 'Ticket de venta', 'El Cajero debe imprimir el ticket', '2', 'TICMCE'),
(177, 'Representan la correcta redacción de los RNF:', 'El Sistema debe permitir visualizar a los diferentes Usuarios el logotipo de la empresa del Cliente', 'El sistema debe permitir la validación de Usuarios al iniciar sesión', 'El Sistema debe contener algún cifrado de seguridad para las claves de Usuario', 'El equipo de trabajo no se hace responsable por la captura total de la base de datos', '3', 'TICMCE'),
(178, '_______________ es el lenguaje de modelado que representa de manera abstracta las especificaciones de un sistema de software.', 'UML', 'Java', 'PHP', 'POO', '1', 'TICMCE'),
(179, 'La ____________________ es el conjunto de reglas que determinan la legalidad y la ____________________ es el conjunto de normas que determinan el significado correcto de los diagramas UML.', 'Semántica - Ortografía', 'Semántica - Sintaxis', 'Sintaxis - Pragmática', 'Sintaxis - Semántica', '4', 'TICMCE'),
(180, 'Visualizan el comportamiento del sistema describiendo la secuencia de eventos de un actor.', 'Casos de Uso', 'Clases', 'Funciones', 'Relaciones', '1', 'TICMCE'),
(181, 'Es una entidad externa al sistema que de alguna manera participa en la historia del caso de uso. ', 'Administrador', 'Actor', 'Entidad', 'Atributo', '2', 'TICMCE'),
(182, 'Muestra la relación entre los actores y los casos de uso representando la funcionalidad que ofrece el sistema.', 'Diagrama Entidad-Relación', 'Diagrama de Clases', 'Diagrama de Casos de Uso', 'Especificación de Requerimientos de Software', '3', 'TICMCE'),
(183, 'Son los elementos de un Diagrama de Casos de Uso:', 'Actor-Límite-Requerimientos-Casos de Uso', 'Actor-Límite-Funciones-Casos de Uso', 'Actor-Requerimientos-Especificaciones', 'Actor-Límite-Relaciones-Casos de Uso', '4', 'TICMCE'),
(184, 'Es el tiempo verbal empleado para la correcta redacción de un Caso de Uso:', 'Infinitivo', 'Gerundio', 'Participio', 'Pretérito', '1', 'TICMCE'),
(185, 'Representa la manera correcta de redactar un Caso de Uso', 'Producto', 'Registro de producto', 'Registrar producto', 'Producto a registrar', '3', 'TICMCE'),
(186, 'im18.jpg', 'A', 'B', 'C', 'D', '2', 'TICMCE'),
(187, 'im19.jpg', '1 - a, 2 - c, 3 - b, 4 - d', '1 - c, 2 - b, 3 - a, 4 - d', '1 - a, 2 - d, 3 - b, 4 - c', '1 - c, 2 - a, 3 - b, 4 - c', '4', 'TICMCE'),
(188, 'Documento narrativo que describe la secuencia de eventos de un actor (agente externo) usando el sistema para completar un proceso:', 'Especificación de Requerimientos de Software', 'Plan de Proyecto', 'Narrativas de Casos de Uso', 'Cronograma', '3', 'TICMCE'),
(189, 'Se utiliza para documentar la estructura estática de un sistema y consiste en una colección de objetos que interactúan para cumplir con los requisitos del sistema:', 'Diagrama Entidad-Relación', 'Diagrama de Clases', 'Diagrama de Casos de Uso', 'Especificación de Requerimientos de Software', '2', 'TICMCE'),
(190, 'Los elementos del Diagrama de Clases son:', 'Nombre de la clase, Entidades de la clase, Operaciones de la Clase, Relaciones', 'Nombre de la clase, Atributos de la clase, Operaciones de la Clase, Relaciones', 'Entidades de la clase, Atributos de la clase, Operaciones de la Clase, Relaciones', 'Entidades de la clase, Atributos de la clase, Operadores de la Clase, Relaciones', '2', 'TICMCE'),
(191, 'Son las relaciones implicadas en el Diagrama de Clases:', 'Asociación, Especificación, Composición, Agregación, Composición ', 'Asociación, Multiplicación, Composición, Agregación, Composición ', 'Asociación, Generalización, Composición, Agregación, Composición ', 'Asociación, Multiplicación, Navegación, Agregación, Composición ', '3', 'TICMCE'),
(192, 'im20.jpg', 'A', 'B', 'C', 'D', '2', 'TICMCE'),
(193, 'Es la estructuración técnica de las relaciones que deben existir entre las funciones, niveles y actividades de los elementos materiales y humanos de un organismo social, con el propósito de lograr su máxima eficiencia dentro de los planes y objetivos señalados.', 'Organigrama', 'La organización', 'Diagrama de Casos de Uso', 'Proceso de Desarrollo de Software', '2', 'TICMCE'),
(194, 'Representación gráfica de las operaciones que se realizan en el marco de un proceso industrial o informático.', 'Organigrama', 'Diagrama de Casos de Uso', 'Modelo de Desarrollo de Software', 'Proceso de Desarrollo de Software', '1', 'TICMCE'),
(195, 'Son los tipos de organigrama más conocidos:', 'Vertical, Bloque, Horizontal, Circular, Mixto, Escalar', 'Actividad, Procesos, Componentes, Despliegue', 'Jerárquica, Lineal, No Lineal, Compuesta, Mapa', 'Porter, Deming, Kruchten, Sommerville, Larman', '1', 'TICMCE'),
(196, 'Representación gráfica de las operaciones que se realizan en el marco de un proceso industrial o informático.', 'Organigrama', 'Diagrama de Casos de Uso', 'Modelo de Desarrollo de Software', 'Proceso de Desarrollo de Software', '1', 'TICMCE');
INSERT INTO `examen_especialidad` (`id_especialidad`, `pregunta`, `respuesta1`, `respuesta2`, `respuesta3`, `respuesta4`, `respuesta_correcta`, `carrera`) VALUES
(197, 'Son los tipos de organigrama más conocidos:', 'Vertical, Bloque, Horizontal, Circular, Mixto, Escalar', 'Actividad, Procesos, Componentes, Despliegue', 'Jerárquica, Lineal, No Lineal, Compuesta, Mapa', 'Porter, Deming, Kruchten, Sommerville, Larman', '1', 'TICMCE'),
(198, 'Conjunto de actividades relacionadas entre sí, llevadas a cabo a través de roles y por elementos automatizados que, utilizando recursos y a partir de insumos, producen un satisfactor de negocio para el cliente.	', 'Programa', 'Proceso', 'Tarea', 'Diagrama', '2', 'TICMCE'),
(199, 'Elementos de un proceso:', 'LOC, Tiempo, Ingenieros', 'Relaciones, Actores, Límites', 'Interfaces, Hipervínculos, menús, elementos HTML', 'Entrada, Salida, Actividades, Roles', '4', 'TICMCE'),
(200, 'Son los recursos humanos asignados al proyecto, se conforma bajo una asignación de roles y responsabilidades y con conocimiento y experiencia de acuerdo a su rol', 'Técnicos de soporte', 'Equipo de desarrollo del software', 'Administradores', 'Gerentes de proyectos', '2', 'TICMCE'),
(201, 'Tiene capacidad de liderazgo con experiencia en la toma de decisiones, planificación estratégica, manejo de personal y desarrollo de software', 'Gerente de proyecto', 'Administrador de proyecto', 'Líder de proyecto', 'Scrum master', '3', 'TICMCE'),
(202, 'Tiene conocimiento y experiencia en la obtención, especificación y análisis de los requerimientos.', 'Tester', 'Analista', 'Programador', 'Diseñador', '2', 'TICMCE'),
(203, 'Conocimiento y experiencia en el diseño de la estructura de los componentes de software.', 'Analista', 'Programador', 'Diseñador', 'Tester', '3', 'TICMCE'),
(204, 'Conocimiento y/o experiencia en la programación, integración y pruebas unitarias', 'Tester', 'Analista', 'Programador', 'Diseñador', '3', 'TICMCE'),
(205, 'Conocimiento y experiencia en la planificación y realización de pruebas de integración y de sistema.', 'Analista', 'Programador', 'Diseñador', 'Tester', '4', 'TICMCE'),
(206, 'El __________________________ es la descripción simplificada (abstracción) de un proceso de desarrollo de software real', 'Modelo de Proceso de Desarrollo', 'Modelo MoProSoft', 'Modelo Vista Controlador', 'Modelo UML', '1', 'TICMCE'),
(207, 'Son los 2 tipos de modelos de procesos de desarrollo:', 'Dinámico y Estático', 'Ágil y Tradicional', 'Comportamiento y Estructura', 'Orientado a Objetos y Estructurado', '2', 'TICMCE'),
(208, 'Cascada, V, RUP, Espiral son:', 'Modelos dinámicos', 'Modelos tradicionales', 'Modelos ágiles', 'Modelos de estructura', '2', 'TICMCE'),
(209, 'Scrum, XP, Kanban, Lean son:', 'Modelos dinámicos', 'Modelos ágiles', 'Modelos tradicionales', 'Modelos de estructura', '2', 'TICMCE'),
(210, 'Contienen elementos de la interfaz gráfica de un sitio web que permiten la navegación por las diferentes secciones y páginas que lo componen, mejor conocidos como Menús.', 'Sistemas de navegación', 'GUI', 'Prototipos', 'Elementos HTML', '1', 'TICMCE'),
(211, 'Son las primeras versiones o modelos del producto, en que se han incorporado algunas características del producto final', 'Prototipo', 'GUI', 'Interfaz', 'Diagrama UML', '1', 'TICMCE'),
(212, 'Es el lenguaje de modelado que está conformado por reglas que determinan la legalidad de los diagramas y las normas que determinan un diagrama correcto.', 'POO', 'UML', 'PHP', 'E-R', '2', 'TICMCE'),
(213, 'Describe el comportamiento y el flujo de información dentro de una organización o sistema', 'Organigrama', 'Plan de Negocio', 'Diagrama de flujo', 'Modelo de procesos de negocio', '4', 'TICMCE'),
(214, 'Se compone de captura eventos, entradas, recursos, procesos y salidas asociadas con los procesos de negocios', 'Diagrama de Actividad', 'Diagrama de Casos de Uso', 'Diagrama de Modelo de Procesos de Negocio', 'Diagrama de Secuencia', '3', 'TICMCE'),
(215, 'Muestra la relación entre los actores y los casos de uso del sistema y representa la funcionalidad que ofrece el sistema en lo que se refiere a su interacción externa', 'Diagramas de Casos de Uso', 'Diagrama de Secuencia', 'Diagrama de Actividad', 'Diagrama de Comportamiento ', '1', 'TICMCE'),
(216, 'El Diagrama de Casos de Uso está compuesto por:', 'Casos de Uso, Niveles, Roles', 'Casos de Uso, Interfaces, Componentes ', 'Casos de Uso, Actores, Límite, Relaciones', 'Casos de Uso, Requerimientos, Acciones, Verbos', '3', 'TICMCE'),
(217, 'Los elementos del ______________________________son partes físicas de un sistema (una entidad real del software) y sus relaciones.', 'Diagrama E-R', 'Diagrama BDP', 'Diagrama de Componentes', 'Diagrama de Despliegue', '3', 'TICMCE'),
(218, 'Son considerados componentes físicos de un sistema de software:', 'Archivos, extensiones, ejecutables, carpetas', 'Código fuente, librerías, tablas, documentos, bases de datos', 'Diagramas UML, Diagramas E-R, Diagramas BPD', 'CPU, tarjeta madre, teclado, mouse', '2', 'TICMCE'),
(219, 'El ________________________ muestra la disposición física de los distintos nodos que componen un sistema y el reparto de los componentes sobre dichos nodos.', 'Diagrama E-R', 'Diagrama de Despliegue', 'Diagrama BDP', 'Diagrama de Componentes', '2', 'TICMCE'),
(220, 'El _______________________ muestra los objetos y actores que participan en una colaboración encima de las líneas de vida del objeto', 'Diagrama de Casos de Uso', 'Diagrama de Secuencia', 'Diagrama BDP', 'Diagrama de Componentes', '2', 'TICMCE'),
(221, 'Es un flujo de trabajo, compuesto por una serie de pasos, o actividades, que son necesarios para completar una transacción comercial', 'Proceso de Desarrollo', 'Proceso de Manufactura', 'Diagrama de Flujo', 'Proceso de Negocio', '4', 'TICMCE'),
(222, 'Es una notación gráfica estándar diseñada para crear modelos de procesos que todos los participantes en un proceso de negocio puedan entender: usuarios, analistas, clientes, gerentes, etc.', 'BPD', 'BPMN', 'UML', 'E-R', '2', 'TICMCE'),
(223, 'Es el Diagrama que representa, mediante la notación BPMN, los procesos de negocio', 'Diagrama de Actividades', 'Diagrama de Procesos de Negocio UML', 'Diagrama de BPD', 'Organigrama', '3', 'TICMCE'),
(224, 'Son los elementos del Diagrama BPD', 'Eventos, getaways, swimlanes, pools, conexiones', 'Eventos, relaciones, decisiones, entradas, salidas', 'Eventos, procesos, entidades, atributos, tablas', 'Estado inicial, estado final, decisiones, procesos', '1', 'TICMCE'),
(225, 'Es una metodología de desarrollo de software que está centrada en entregar la funcionalidad de más valor para la empresa en el tiempo más corto posible', 'MoProSoft', 'CMMI', 'Scrum', 'Cascada', '3', 'TICMCE'),
(226, 'Es un bloque de tiempo de un mes o menos durante el cual se crea un incremento de producto “Terminado”, utilizable y potencialmente desplegable', 'Product Backlog', 'Sprint', 'Daily Scrum', 'Sprint Review', '2', 'TICMCE'),
(227, 'El Producto Backlog es una lista ordenada con los requisitos de los usuarios o propietarios del sistema, para planificar el proyecto, completa y definitiva.', 'Cierto', 'Falso', '', '', '2', 'TICMCE'),
(228, 'Es un bloque de tiempo de 15 minutos para que el Equipo de Desarrollo sincronice sus actividades y cree un plan para las siguientes 24 horas.', 'Sprint', 'Review Sprint', 'Sprint Planning Meeting', 'Daily Scrum', '4', 'TICMCE'),
(229, 'Es la única persona responsable de gestionar la Lista del Producto (Product Backlog).', 'Product Owner', 'Development Team', 'Scrum Master', 'Analista', '1', 'TICMCE'),
(230, 'Es el responsable de asegurar que Scrum es entendido y adoptado, asegurándose de que el Equipo Scrum trabaja ajustándose a la teoría, prácticas y reglas de Scrum.', 'Product Owner', 'Development Team', 'Scrum Master', 'Analista', '3', 'TICMCE'),
(231, 'Son los profesionales que desempeñan el trabajo de entregar un Incremento de producto “Terminado”, que potencialmente se pueda poner en producción, al final de cada Sprint. ', 'Product Owner', 'Development Team', 'Scrum Master', 'Analista', '2', 'TICMCE'),
(232, 'Establece y llevar a cabo sistemáticamente las actividades que permitan cumplir con los objetivos de un proyecto en tiempo y costo esperados', 'Administración de Proyectos Específicos', 'Desarrollo y Mantenimiento de Software', 'MoProSoft', 'Gerencia de Proyectos', '1', 'TICMCE'),
(233, 'Realiza sistemática las actividades de análisis, diseño, construcción, integración y pruebas de productos de software nuevos o modificados cumpliendo con los requerimientos especificados. ', 'Administración de Proyectos Específicos', 'Desarrollo y Mantenimiento de Software', 'Gerencia de Proyectos', 'MoProSoft', '2', 'TICMCE'),
(234, '\r\nContiene las actividades que se deben llevar a cabo con fechas de inicio y de fin.\r\n', 'Cronograma', 'Agenda', 'Matriz de rastreabilidad', 'Cheklist', '1', 'TICMCE'),
(235, 'Documento formal usado como guía para la ejecución y control del proyecto. Está conformado por Ciclos y Actividades, Tiempo Estimado, Plan de Adquisiciones y Capacitación, Equipo de Trabajo, Costo Estimado, Calendario, Plan de Manejo de Riesgos, Protocolo de Entrega.', 'Plan de Desarrollo', 'Plan de Proyecto', 'Cronograma', 'Documento de Aceptación', '2', 'TICMCE'),
(236, 'Documento usado como guía para la ejecución del desarrollo o mantenimiento de software. Contiene la Descripción del Producto, Equipo de Trabajo, Calendario.', 'Plan de Desarrollo', 'Plan de Proyecto', 'Cronograma', 'Documento de Aceptación', '1', 'TICMCE'),
(237, 'Documento que establece la aceptación del Cliente de los entregables establecidos en el proyecto.', 'Plan de Desarrollo', 'Plan de Proyecto', 'Cronograma', 'Documento de Aceptación', '4', 'TICMCE'),
(238, 'Contiene la identificación y evaluación de riesgos, así como los planes de contención y de contingencia correspondientes', 'Plan de Desarrollo', 'Plan de Proyecto', 'Plan de Manejo de Riesgos', 'Plan de Adquisición y Capacitación', '3', 'TICMCE'),
(239, 'El __________________________ consiste en las siguientes tareas: Formalizar la terminación del proyecto o de un ciclo, Llevar a cabo el cierre del contrato con subcontratistas y Generar el Reporte de Sugerencias de Mejora.\r\n', 'Cierre de contrato', 'Cierre de ciclo', 'Cierre de proyecto', 'Cierre del Plan de Proyecto', '3', 'TICMCE'),
(240, 'El _____________________ es una probabilidad de que una circunstancia adversa ocurra. También se consideran una amenaza para el proyecto, para el software que se está desarrollando y para la organización', 'Problema', 'Riesgo', 'Alcance', 'Cambio', '2', 'TICMCE'),
(241, 'Afectan la calendarización o los recursos del proyecto', 'Proyecto', 'Producto', 'Negocio', '', '1', 'TICMCE'),
(242, 'Afectan a la calidad o al rendimiento del software que se está desarrollando', 'Proyecto', 'Producto', 'Negocio', '', '2', 'TICMCE'),
(243, 'Afectan a la organización que desarrolla o suministra el software', 'Proyecto', 'Producto', 'Negocio', '', '3', 'TICMCE'),
(244, 'Lee atentamente y selecciona la Función principal del diseño gráfico', 'Su función principal es crear mercadotecnia a través de folletos, carteles, trípticos, entre otros.', 'Su función principal es crear el punto, la línea, la forma plana, el volumen, la textura, el espacio, el tamaño y el color.', 'Su función principal será transmitir una información determinada por medio de composiciones gráficas, que se hacen llegar al público destinatario a través de diferentes soportes, como folletos, cartel', '', '3', 'TICMCE'),
(245, 'Lee atentamente y selecciona los Formatos para gráficos vectoriales', 'fla, .cdr, .ai, .swf, .dwg', 'fla, .cdr, .ai, .swf, .zip.', 'rar, .cdr, .ai, .swf, .dwg', '', '1', 'TICMCE'),
(246, 'Lee atentamente y selecciona los tipos de imágenes digitales', 'Imágenes vectoriales e Imágenes de Mapa de Bits', 'Imágenes en 2D, en 3D e Imágenes de Mapa de Bits', 'Imágenes vectoriales, en 3D e Imágenes de Mapa de Bits', '', '1', 'TICMCE'),
(247, 'Las imágenes vectoriales son imágenes constituidas por objetos geométricos autónomos, tales como: líneas, curvas, polígonos,entre otros;  definidos por ciertas funciones matemáticas  denominadas vectores que determinan sus características', 'Verdadero', 'Falso ', '', '', '1', 'TICMCE'),
(248, 'Las imágenes de mapa de bits están formadas por una serie de puntos (píxeles) y líneas (vectores) , cada uno de los cuales contiene información de color y luminosidad', 'Verdadero ', 'Falso', '', '', '1', 'TICMCE'),
(249, 'Lee atentamente y selecciona los Formatos de imagen de mapa de bits', 'BMP, .GIF, .JPEG, .PNG,.PSD,.RAW,.TIFF', 'WMA, .CDA, .BMP, .GIF, .JPEG, .PNG', 'BMP, .GIF, .JPEG, .PNG,.PSD,. RAW, .WAV', '', '1', 'TICMCE'),
(250, 'Lee atentamente y elige el  concepto de Resolución', 'Expresa el tamaño y tipos de color de la imagen, y depende de cuántos píxeles utilice el sensor CCD de la cámara para captar la imagen.', 'Expresa las refraxiones e iluminación de la imagen, y depende de cuántos píxeles utilice el sensor CCD de la cámara para captar la imagen.', 'Expresa el número de píxeles que forman una imagen de mapa de bits, se refiere a la calidad de una imagen, y depende de cuántos píxeles utilice el sensor CCD de la cámara para captar la imagen', '', '3', 'TICMCE'),
(251, '¿A que hace referencia el 3D?', 'A las tres dimensiones, que son: animación, gráfico, película', 'A las tres característica de una imagen dimensión, alto y ancho', 'A las tres dimensiones, que son: el largo, el ancho y la profundidad de una imagen', '', '3', 'TICMCE'),
(252, 'Es la disciplina que enseña las normas y los procedimientos para  ordenar, analizar y registrar operaciones practicadas por entidades económicas', 'Economía', 'Contabilidad', 'Administración', 'Ingeniería', '2', 'TICMCE'),
(253, 'Es la diferencia aritmética  entre el valor de todas las propiedades de la empresa y el total de sus deudas', 'Activo', 'Pasivo', 'Capital Contable', 'Estado de resultados', '3', 'TICMCE'),
(254, 'Subraya las cuentas que pertenecen al activo circulante', 'Caja, bancos, mercancías', 'Terrenos, edificios, documentos x pagar', 'Gastos, administrativos, Gastos de venta, Gastos financieros', '', '1', 'TICMCE'),
(255, 'Esta  cuenta está constituida por los contratos mediante los cuales se amparan las cantidades que se dejan en guarda para garantizar  valores o servicios que la entidad económica va a disfrutar', 'Gastos de instalación', 'Depósitos en garantía', 'Documentos por pagar', '', '2', 'TICMCE'),
(256, 'Son cuentas que pertenecen al activo diferido', 'Gastos de instalación, papelería y útiles,  propaganda, rentas pagadas por anticipado', 'clientes, documentos por cobrar, deudores diversos', 'Equipo de cómputo, mobiliario, primas de seguro', 'Edificios, terrenos, equipo de transporte', '1', 'TICMCE'),
(257, 'Son bienes y derechos que tienen cierta permanencia o fijeza adquiridos con el propósito de usarlos y no de venderlos.', 'Pasivo circulante', 'Pasivo diferido', 'Pasivo fijo', 'Ninguna de las anteriores', '3', 'TICMCE'),
(258, 'Menor plazo de que se dispone para liquidar una deuda u obligación', 'de Mayor grado exigibilidad', 'Menor grado de disponibilidad', 'Capital contable', 'Cuenta t', '1', 'TICMCE'),
(259, 'En cualquier tipo de cuenta, un cargo significa', 'un aumento', 'Una disminución', 'Ninguna de las anteriores', 'Una igualdad', '1', 'TICMCE'),
(260, 'Se le llama así a la suma de los abonos de una cuenta', 'Movimientos acreedor', 'Movimiento deudor', 'Cuenta saldada', 'Ninguno de los anteriores', '1', 'TICMCE'),
(261, 'El saldo de una cuenta  es llamado ___________ cuando  su movimiento acreedor es mayor que el deudor', 'Saldo deudor', 'Saldo acreedor', 'Formula de capital contable en forma de reporte', 'Formula de capital contable en forma de cuenta', '2', 'TICMCE'),
(262, '¿Cuáles son las cuentas que llevan el control del método de inventarios perpetuos?', 'Almacén, costo de ventas, y ventas', 'Capital contable, estado de resultados, balance general', 'Depósitos en garantía, deudores diversos, documentos por cobrar', 'Cheques, pagares, contratos', '1', 'TICMCE'),
(263, 'Debe definir de forma clara y precisa  todo lo que debe existir  y ser cumplido, tanto desde el punto de vista conceptual como práctico, desde lo general a lo particular, debe tener como soporte estándares, políticas, marco jurídico, normas.', 'NORMATIVA', 'ORGANIZACIÓN', 'METODOLOGÍA', 'OBJETIVOS DE CONTROL', '1', 'TICMCE'),
(264, 'La integran personas con funciones específicas, con actuaciones concretas procedimientos definidos metodológicamente,  aprobados por la dirección de la empresa.', 'METODOLOGÍA', 'OBJETIVOS DE CONTROL', 'NORMATIVA', 'ORGANIZACIÓN', '4', 'TICMCE'),
(265, 'Conjunto de métodos que se siguen en una investigación científica necesaria para desarrollar cualquier proyecto que nos propongamos de  manera ordenada y eficaz.', 'METODOLOGÍA', 'OBJETIVOS DE CONTROL', 'ORGANIZACIÓN', 'NORMATIVA', '3', 'TICMCE'),
(266, 'Son elementos  software  que permiten definir  uno o varios procedimientos de control para cumplir una normativa y un objetivo de control.', 'HERRAMIENTAS DE CONTROL', 'TECNOLOGIA DE SEGURIDAD', 'PROCEDIMIENTOS DE CONTROL', 'NORMATIVA', '1', 'TICMCE'),
(267, 'Situación creada por la falta de uno o varios controles, con la que la amenaza pudiera acaecer  y así afectar al entorno informático, ejemplos falta de acceso lógico, falta de control de versiones inexistencia de un control de soporte magnético, falta de cifrado en las telecomunicaciones.', 'RIESGO', 'VULNERABILIDAD', 'EXPOSICION  O IMPACTO', 'VULNERABILIDAD', '4', 'TICMCE'),
(268, 'Metodología basada en un modelo  matemático  numérico  que ayuda  a la realización del trabajo.', 'Metodología cuantitativa', 'Metodología Cualitativa', 'Herramientas de control', 'Tecnologías de  seguridad', '1', 'TICMCE'),
(269, 'Es un procedimiento de autenticación que habilita al usuario para acceder a varios sistemas con una sola instancia de identificación', 'Control de acceso lógico', 'Control de acceso físico', 'Procedimientos de control', 'Single Sign On', '4', 'TICMCE'),
(270, 'Controla que todas las actividades de sistemas de información sean realizadas cumpliendo los procedimientos, estándares y normas fijados por la Dirección de la organización y/o dirección de informática, así como los requerimientos legales.', 'Control interno informático', 'Protección de activos e integridad de datos', 'Una normativa sobre el uso de metodologías de ciclo de la vida del desarrollo de sistemas', 'Estudio tecnológico de viabilidad', '1', 'TICMCE'),
(271, '¿Qué es un polímero?', 'Macromolécula ', 'Aleación', 'Óxido metálico', 'Compuesto orgánico', '1', 'PIAP'),
(272, '¿Cuál es la característica más importante en los polímeros?', 'Su polaridad', 'Su solubilidad en disolventes no polares', 'Su alto peso molecular', 'Su procesabilidad', '3', 'PIAP'),
(273, 'El peso molecular de un polímero se considera:', 'De 10,000 g/mol a mayores pesos moleculares ', 'No mayor de 10,000 g/mol', 'De 5,000 a 10,000 g/mol', 'Cualquiera de los anteriores', '1', 'PIAP'),
(274, 'El peso molecular de un polímero determina las propiedades:', 'Mecánicas ', 'Reológicas', 'Temperatura de transición vítrea', 'Todas las anteriores ', '1', 'PIAP'),
(275, 'Que se entiende por Organización', 'Puede ser entendida como la entidad creada intencionalmente para el logro de os objetivos ', ' La agrupacion de personas de un mismo grupo', 'Un grupo de personas que se reunen cada fin de semana', '', '1', 'PIAP'),
(276, 'En donde se definen las responsabilidades y actividades de un puesto de trabajo de una empresa', 'Descripcion de puestos', 'Recursos Humanos', 'Credencial del trabajador', '', '1', 'PIAP'),
(277, 'Para que sirve el Organigrama ', 'Es una representación gráfica que nos permite identificar los diferentes departamentos que esta compuesta una empresa.\r\n', 'Para saber donde se ubica la empresa', 'Para saber quien es el director de la empresa', '', '1', 'PIAP'),
(278, '¿Que se entiende por Responsabilidad?', 'La actividad de realizar actividades al libre albedrio', 'La responsabilidad es un valor que está en la conciencia de la persona que le permite reflexionar, administrar, orientar y valorar las consecuencias de sus actos', 'Establecer las actividades a realizar según un programa de actividades', '', '2', 'PIAP'),
(279, 'Medida materializada con un valor determinado y una incertidumbre de medida asociada, tomada como referencia', 'Metro', 'Incertidumbre', 'Patron', 'Exactitud', '3', 'PIAP'),
(280, 'Proximidad entre las indicaciones o los valores medidos obtenidos en mediciones repetidas de un mismo objeto o de objetos similares , bajo condiciones especificadas.', 'Trazabilidad', 'Precision de medida', 'Calibracion', 'Magnitud', '2', 'PIAP'),
(281, 'Parametro no negativo que caracteriza la dispersion de valores atribuidos a un mensurando, a partir de la informacion que se utiliza', 'Dispersion', 'Medicion', 'Incertidumbre de medida', 'Escala', '3', 'PIAP'),
(282, 'Proximidad entre un valor medido y un valor verdadero de un mensurando', 'Precision', 'Referencia', 'Error de medicion', 'Exactitud de medida', '4', 'PIAP'),
(283, 'Propiedad de un resultado de medida por la cual el resultado puede relacionarse con una referencia mediante una cadena ininterrumpida y documentada de calibraciones, cada una de las cuales contribuye a la incertidumbre de medida. ', 'Trazabilidad metrologica', 'Verificación', 'Comparación', 'Calibracion', '1', 'PIAP'),
(284, 'Su funcion radica en la busqueda y materializacion de los patrones internacionales, para que estos sean mas faciles de reproducir', 'Normalizacion', 'Metrologia cientifica', 'Certificacion', 'Metrologia Legal', '2', 'PIAP'),
(285, 'Diferencia entre un valor medido de una magnitud y un valor de referencia', 'Mensurando', 'Resultado de medida', 'Veracidad de medida', 'Error de medida', '4', 'PIAP'),
(286, 'De los siguientes enunciados cuál es la definición más acertada de Calibración.', 'Ajuste de las condiciones mecánicas de un instrumento', 'Comparación contra patrones para determinar el error del instrumento', 'Medir una pieza que tenga buenas características metrológicas', 'Aplicar un método de medición de manera repetible', '2', 'PIAM'),
(287, 'Medir significa', 'Aplicar un método de medición siempre de la misma manera', 'Capacidad de un instrumento de dar mediciones parecidas, bajo las mismas condiciones de medición.', 'Utilizar siempre el mismo método de medición.', 'Comparar una medida conocida con una desconocida obteniendo un valor numérico.', '4', 'PIAM'),
(288, 'Con un pie de rey o vernier puede medirse todo lo siguiente, excepto:', 'La longitud de una ranura', 'El espesor de una lámina', 'La linealidad de un eje', 'profundidad de un agujero', '3', 'PIAM'),
(289, 'Se encarga de estudiar las técnicas de medición que determinan correctamente las magnitudes lineales y angulares', 'Metrología eléctrica', 'Metroogía de proceso', 'Metrología dimensional', 'Metrología industrial', '3', 'PIAM'),
(290, 'La lectura del vernier es:', '1 1/32 pulgada', '1 4/16 pulgada', '1 1/64 pulgada', '1 5/128 pulgada', '1', 'PIAM'),
(291, 'La lectura del micrómetro es:', '0.8777 pulgadas', '0.8822 pulgadas', '0.8770 pulgadas', '0.8877 pulgadas', '2', 'PIAM'),
(292, 'Enemigo de todo proceso productivo que afecta la calidad del producto final', 'Especificaciones', 'variación', 'Costos altos', 'Desviación estandar', '2', 'PIAM'),
(293, 'Las causas de  variación  en un  proceso productivo es causada por', 'Causas comunes y especiales', 'Las exigencias del cliente', 'Por la mano de obra no calificada', 'Por un mal liderazgo', '1', 'PIAM'),
(294, 'La herramienta  basica de  calidad recomendadda para identificar las causas de la mala calidad  es', 'Diagrama de PARETO', 'La hoja de verificación', 'El diagrama de causa y efecto o  diagrama de Ishikawa', 'Diagrama de dispersión', '3', 'PIAM'),
(295, 'Las  6  causas comunes de la mala calidad  son: materia prima, mano de obra, medición, maquinas, medio ambiente y ', 'Costos', 'Sobre producción', 'Inventarios', 'Método', '4', 'PIAM'),
(296, 'Para que una muestra sea representativa de la población es necesario aplicar  el principio de', 'Aleatoriedad', 'Probabilidad', 'Muestreo', 'Variabilidad', '1', 'PIAM'),
(297, 'Se dice que un  proceso  productivo está  bajo control  cuando.', 'Es hábil', 'Es continuo', 'Esta definido por limites de control', 'Tiene  un sigma de variación', '1', 'PIAM'),
(298, 'Los metales no ferrosos son utilizados en la manufactura como elementos complementarios de los metales ferrosos, también son muy útiles como materiales puros o aleados los que por sus propiedades físicas y de ingeniería cubren determinadas exigencias o condiciones de trabajo, por ejemplo el bronce (cobre, plomo, estaño) y el latón (cobre zinc).', 'Verdadero', 'Falso', '', '', '1', 'PIAM'),
(299, 'Las principales propiedades de los materiales incluyen densidad, presión de vapor, expansión térmica, conductividad térmica, propiedades eléctricas y magnéticas, así como las propiedades de ingeniería. ', 'Verdadero', 'Falso', '', '', '1', 'PIAM'),
(300, 'Se entiende la utilización de ordenadores para tareas técnicas de elaboración de planos de mecanizado de piezas o cuerpos sólidos, incluyendo programación por Control Numérico (CN) para su posterior proceso de fabricación o montaje. ', 'CNC', 'CAM', 'CAD', 'FORJADO', '4', 'PIAM'),
(301, 'Incluye todas las actividades que se realizan para la fabricación de un producto, desde la percepción de la necesidad, la concepción, el diseño y su desarrollo, pasando por su producción, marketing y soporte del producto en uso, bajo los lineamientos de la Automatización para gobernar el proceso industrial de forma óptima', 'CNC', 'CIM', 'CAD', 'FORJADO', '2', 'PIAM'),
(302, 'Acrónimo de Control Numérico Computarizado, se refiere al control numérico de máquinas, generalmente maquinas herramientas. Normalmente  se ejerce a través de un computador y la maquina está diseñada con la finalidad de obedecer las instrucciones de un programa dado', 'CNC', 'CIM', 'CAD', 'FORJADO', '1', 'PIAM'),
(303, 'Sustancias conformadas por dos componentes, el disolvente y el soluto', 'disoluciones', 'composición', 'reacción molecular', 'eluyentes', '1', 'PIAM'),
(304, 'Sustancias que se forma como resultado de una reacción química', 'Fórmula', 'Resultado', 'Reacción', ' Productos', '4', 'PIAM'),
(305, 'Creador de la ley de la conservación de la materia', 'John Dalton', 'Antonie Lavoiser', 'Louis Pasteur', 'Niels Bohr', '2', 'PIAM'),
(306, 'Es una rama de la química que estudia la transformación entre la energía eléctrica y la energía química.', 'Fisico-quimica', 'Termoquímica', 'Electroquímica', 'Carboquímica', '3', 'PIAM'),
(307, 'Es la fórmula del propano', 'CH4', 'CH3CH3', 'CH3CH2CH3', 'CH2CH2CH3', '3', 'PIAM'),
(308, 'Se requiere preparar 200 g de una solución al 25.5% de glucosa. ¿Qué peso de glucosa hace falta? ¿Cuánta agua es necesaria?', '50 g de agua y 150 g de glucosa', '50 g de glucosa y 150 g de agua', '51 g de glucosa y 149 g de agua', '149 g de glucosa y 51 g de agua', '3', 'PIAM'),
(309, 'Es una operación unitaria en la industria química', 'Nitración', 'Fermentación', 'Filtración', 'Cloración', '3', 'PIAM'),
(310, '__________es un proceso positivo, proactivo, para cambiar las operaciones en una forma estructurada para lograr el desempeño excelente. Los beneficios de utilizar ____________son que obliga a las empresas a investigar las mejores practicas de la industria externa e incluirlas en sus operaciones', 'Bechmarking', 'Just in time', 'Out Sourcing', '', '1', 'PIAM'),
(311, '¿ Consiste en producir los artículos necesarios en el momento preciso, en las cantidades debidas para satisfacer la demanda combinando simultáneamente flexibilidad, calidad y coste ? ', 'Time and form', 'Just in Time', 'Time in fast', '', '2', 'PIAM'),
(312, '¿ Significa \" cambio para mejorar \", de manera que no se trata solamente de un programa de reducción de coste, si no que   implica una cultura de cambio constante para evolucionar hacia mejores prácticas; es lo que se conece comúnmente como \" mejora continua \" ?', 'Kaizen', ' Poka Yoke', 'Just in time', '', '1', 'PIAM'),
(313, '¿ Es una ténica que ayuda a conseguir los cero defectos, mejorando la calidad del producto y del proceso. Generalmente, son mecanismos o dispositivos que una vez instalados, evitan los defectos al 100 % aunque se cometan errores  ?.', 'Kaizen', '5´S', 'Poka Yoke', '', '3', 'PIAM'),
(314, 'La tasa de interés es el  rendimiento que proporciona el enajenamiento temporal del dinero, es decir, el importe del alquiler del dinero.', 'Verdadero', 'Falso', '', '', '1', 'PIAM'),
(315, 'Son los  intereses  que se acumulan en una cuenta aparte.', 'compuesto', 'simple', 'Valor presente', 'valor futuro', '2', 'PIAM'),
(316, 'Son  los intereses que se acumulan en la misma cuenta del capital, es decir, son objeto de generar más intereses una vez capitalizados.', 'compuesto', 'simple', 'Valor presente', 'valor futuro', '1', 'PIAM'),
(317, 'Se encarga generalmente  de llevar a cabo  para minimizar  el balance entre las maquinas  o el personal', 'valor futuro', 'valor presente', 'balanceo de lineas ', 'programacion lineal', '3', 'PIAM'),
(318, 'forma que las variables de dicha función estén sujetas a una serie de restricciones expresadas mediante un sistema de inecuaciones también lineales.', 'valor futuro', 'valor presente', 'balanceo de lineas', 'programacion lineal', '4', 'PIAM'),
(319, 'Es una red de instalaciones y medios de distribución que tiene por función la obtención de materiales, transformación de dichos materiales en productos intermedios y productos terminados y distribución de estos productos terminados a los consumidores.', 'Sistema productivo', 'Cadena de transformación de materiales', 'Cadena de suministros', 'Cadena de distribución', '3', 'PIAM'),
(320, 'La parte del __________________________se concentra en cómo, dónde y cuándo se consiguen y suministran las materias primas para fabricación.', 'Transformación', 'Suministro', 'Proceso', 'Acopio', '2', 'PIAM'),
(321, 'La __________________ convierte estas materias primas en productos terminados y la ____________________se asegura de que dichos productos finales llegan al consumidor a través de una red de distribuidores, almácenes y comercios minoristas.', 'Transformación, logísitca', 'Fabricación, importación', 'Fabricación, distribución', 'Transformación, exportación', '3', 'PIAM'),
(322, 'La compañía de novedades Ace quiere producir dos clases de recuerdos de viaje: del tipo A y del tipo B. Cada unidad tipo A producirá una ganancia de $1, mientras que una tipo B generará una ganancia de $1.20. Para fabricar un recuerdo tipo A se necesitan 2 minutos en la máquina I y 1 minuto en la máquina II. Un recuerdo tipo B requiere 1 minuto en la máquina I y 3 minutos en la máquina II. Hay 3 horas disponibles en la máquina I y 5 horas disponibles en la máquina II para procesar el pedido. ¿Cuántas piezas de cada tipo debe producir Ace para maximizar la ganancia?                                                                                                                                                                                                                                               El modelo de programación lineal para la solución del problema es:', 'max G = x + 1.2y\r\nSujeta a:\r\n2x +  y  ≤  180\r\nx  + 3y  ≤ 300 \r\nx≥ 0 \r\ny≥0', 'max G = x + 1.2y Sujeta a:\r\n2x + y ≥ 180\r\nx + 3y ≥ 300\r\nx ≥ 0\r\ny ≥ 0                                                                                                                                    ', 'max G = x + 1.2\r\nSujeta a:\r\n2x + y < 180\r\nx + 3y < 300\r\nx < 0\r\ny ≥ 0                                                                                                                                   ', 'max G = x + 1.2y\r\nSujeta a:\r\n2x +  y  = 180\r\nx  + 3y  = 300\r\nx  + 3y  = 300  \r\ny≤0\r\n', '1', 'PIAM'),
(323, 'la solución gráfica al problema anterior es:                                                                                                                                                                                                                                                                                          TE CADENA DE SUMINISTROS PIAM P-5', 'Solución (50, 90)', 'Solución (48,84)', '', '', '2', 'PIAM'),
(324, 'La solución por MEN (Método esquina Noroeste) del modelo de transporte siguiente, es:                                                                                                                                                                                     TE CADENA DE SUMINISTROS PIAM P-6', '520', '460', '490', '480', '1', 'PIAM'),
(325, '¿A que se le da el nombre de Seguridad industrial?', 'Conjunto de leyes, principios, criterios y normas formuladas cuyo objetivo es controlar el riesgo de accidentes y daños, tanto a las personas como a los equipos y materiales que intervienen en el desa', 'Son las condiciones no fisicas que afectan a una persona en su lugar de trabajo, como puede ser la temperatura a la cual esta sometida en su puesto de trabajo, si son optimas o no las condiciones de h', 'Ciencia y el arte dedicados al conocimiento, evaluación y control de aquellos factores ambientales o tensiones emanadas o provocadas por o con motivos de trabajo y que pueden ocasionar enfermedades', '', '1', 'PIAM'),
(326, '¿Que entiendes por Enfermedades profesional?', 'Evento relacionado al trabajo que tuvo el potencial para llegar a producir o produjo una lesión, enfermedad o una fatalidad.', 'Accidente ocurrido en el curso del trabajo, por el hecho o como consecuencia del mismo', ' Condición anormal o desorden a la salud de un empleado causada por la exposición de factores ambientales asociados con su trabajo, que no de cómo resultado una lesión ocupacional', '', '3', 'PIAM'),
(327, 'Identificar cuales son las principales normas de Seguridad e Higiene Industrial', 'Reglamento Federal de Seguridad y Salud en el Trabajo\r\nLey General del Equilibrio Ecológico y la Protección al Ambiente\r\nLey del Seguro Social', 'Reglamento Federal de Seguridad e Higiene y Medio Ambiente de Trabajo, \r\nNOM-STPS\r\nOHSA\r\nLey del Seguro Social', 'Ley del Seguro Social\r\nLey Federal del Trabajo\r\nConstitución Política De Los Estados Unidos Mexicanos', '', '2', 'PIAM'),
(328, '¿Cómo se clasifican los diversos agentes ambientales causantes de daños y percances en la industria?', 'Físicos, Químicos, Biológicos, Ergonómicos, Psicosociales.', 'Físico-químicos, Aerobios, Politicos y sociales', 'Agentes sólidos, Líquidos, Gaseosos y Térmicos ', '', '1', 'PIAM'),
(329, '¿Qué es una comisión mixta de seguridad e Higiene?', 'Dependencia responsable de dirigir los mecanismos y políticas de prevención y atención de los riesgos de desastres, mediante la aplicación de planes, programas, estrategias,  mecanismos y recursos.', 'Es un órgano encargado de la provisión de los servicios de salud públicos o privados para la población en general.', 'Es un conjunto de personas provenientes de diferente áreas de la empresa, la cual está encargada de determinar las condiciones de trabajo, elementos de protección, higiene y prevención, y en general d', '', '3', 'PIAM'),
(330, '¿Las condiciones inseguras son: ?', 'Es una medida de la probabilidad de ocurrencia de un accidente y la magnitud de sus consecuencias', 'Son aquellos factores del medio ambiente de trabajo que pueden provocar un accidente', 'Accidente ocurrido en el curso del trabajo, por el hecho o como consecuencia del mismo', '', '2', 'PIAM'),
(331, '¿Qué entiendes por Acto inseguro?', 'Evento relacionado al trabajo que tuvo el potencial para llegar a producir o produjo una lesión, enfermedad o una fatalidad.', 'Conductas por acción u omisión que conllevan a la violación de procedimientos, normas leyes, reglamentos o prácticas seguras establecidas y que pueden causar accidentes.', 'Es una condición que tiene el potencial de causar daños a los seres humanos, propiedades, ambiente o una combinación de estos.', '', '2', 'PIAM'),
(332, '¿ Son las normas que se aplican a un Dibujo Técnico ?', 'ISO', 'ANSI', 'NOM', 'Las tres anteriores', '4', 'PIAM'),
(333, '¿ Son gráficos con los cuales interpretamos y elaboramos dibujos técnicos ?', 'Símbolos', 'Líneas', 'Textos', 'Tolerancias', '1', 'PIAM'),
(334, '¿ Menciona 4 tipo de líneas aplicadas en un Dibujo Técnico ?', 'Centro, línea fantasma, eje de simetria, sección', 'Centro,Visible, Sección, Plano de vista', 'Sección, línea punteada, línea de cadena, línea visible', 'Línea plano de vista, línea visible, línea fantasma, línea de sección', '4', 'PIAM'),
(335, '¿ Hace referencias al instrumento de medición utilizado en dibujo con varias ___________?.', 'Escalas', 'Acotaciones', 'Tolerancias geométricas', 'Texto', '1', 'PIAM'),
(336, 'Las ____________aseguran la funcionalidad de  los productos para unir o ensamblar piezas.', 'Texto', 'Líneas', 'Tolerancias ', 'Escalas', '3', 'PIAM'),
(337, 'Menciona 4 comandos ubicados en la barra de modificar', 'Cortar, mover, borrar, desplazar', 'Mover, círculo, línea, rectángulo', 'Borrar, desplazar, región, polilínea', 'b,c', '1', 'PIAM'),
(338, '¿ Ordena de manera correcta la etapas del diseño de producto ? TE DIBUJO AVANZADO PIAM P-1                                                                                                 1) planeación                                                                                                   2) desarrollo                                                                                                                                                                                                                                                                                                                                                                                3) diseño en el nivel sistemadel concepto                                                       4) diseño en detalle                                                                                                                                                                5) pruebas y refinamiento                                                                                        6) inicio de producción', '432156', '123456', '234561', '342156', '2', 'PIAM'),
(339, '¿Cual de los siguientes comandos utilizados en autocad no pertenece a la barra de Dibujo?', 'Rectángulo', 'Circulo', 'Arco', 'Borrar ', '4', 'PIAM'),
(340, '¿Cuál no pertenece al grupo de las formas básicas en modelado  3 D ? ', 'Piramide, Cuña y Toroide', 'Cuña, toroide y prisma rectagular', 'Toroide', 'Polisólido', '4', 'PIAM'),
(341, '¿Geometría importante tomada en consideración para desmoldar fácil las piezas del molde de inyección ?.', 'Ángulo recto', 'Tolerancias máximas', 'Ángulo de entrada', 'Ángulo de salida', '4', 'PIAM'),
(342, '¿ Todo ajuste con aprieto presentará ___________ y ___________ ?', 'Máximo y mínimo', 'Flojo y apretado', 'Fijo y justo', 'Justo y libre', '1', 'PIAM'),
(343, '¿Del grupo cual no es una restricción geométrica para un ensamble ?', 'Paralela', 'Perpendicular', 'Tangente', 'Punto', '4', 'PIAM'),
(344, '¿ Es _______________el arreglo Físico de máquinas y equipos para la producción, estaciones de trabajo, personal, ubicación de materiales de todo tipo y en toda etapa de elaboración y el equipo de manejo de materiales?', 'Distribución de planta', 'Administración de bienes', 'Procesos de producción', 'Manejo de materiales', '1', 'PIAM'),
(345, '¿Tiene importancia extrema el _____________________ en el despacho de arquitectos en cuanto a los edificios y técnicas, de construcción, reportandole al gerente del proyecto?', 'Administración del proyecto', 'Estrategía corporativa', 'Diseño de instalaciones', 'a,b', '3', 'PIAM'),
(346, 'El _____________________ se define sencillamente como mover materiales.', 'Empaque', 'Manejo de materiales', 'Manipulación', 'a,c', '2', 'PIAM'),
(347, '¿ En promedio, una instalación para algunos \" Cambios de diseño de la distribución \" suceden una vez cada ______ meses.', '18 meses', '24 meses', 'nunca', '6 meses', '1', 'PIAM'),
(348, '¿Cuáles son los cinco tipos de proyecto de diseño de instalaciones de manufactura?                                                                                                                                                                                            1.- Instalación nueva                                                                                                                                                                                                                                                                                                                                           2.- Producto  nuevo                                                                                                                                                                                                                                                                                                                                        3.- Cambios en el diseño                                                                                                                                                                                                                                                                                                                                                         4.- Reducción del costo                                                                                                                                                                                                                                                                                                                    5.- Retroajuste                                                                                                                                                                                                                                                                                                                                    6.- Producción mínima', '1,3,4,5,6', '1,2,3,4,5', '4,3,2,5,6', ' 5,6,4,2,1', '2', 'PIAM'),
(349, '¿Cuál es la diferencia entre los procedimientos para diseñar una instalación nueva y un retroajuste? ejemplo: paredes, tuberías, instalaciones. ', 'Restricciones', 'Órdenes de producción', 'Control de calidad', 'b,c', '1', 'PIAM'),
(350, 'El término PRONOSTICO se refiere generalmente a:', 'Estimacion de un evento futuro', 'Curso de accion', 'Decisiones operacionales', 'Desarrollo sustentable', '1', 'PIAA'),
(351, 'El objetivo principal de los pronostico es:', 'Desarrollo sustentable ', 'Representar datos importantes para la administracion de la produccion realice el diseño mas economico y eficiente de los procesos', 'Premisa basica', 'Demanda del mercado', '2', 'PIAA'),
(352, 'Cuantos tipos de analisis de pronosticos hay', '1', '2', '3', '8', '2', 'PIAA'),
(353, 'Se dice que es un recurso ocioso pero potencialmente de gran utilidad', 'Pronostico', 'Planeacion agregada', 'Proceso', 'Inventario', '4', 'PIAA'),
(354, 'El propósito principal de los inventarios es:', 'Costo', 'Planeacion agregada', 'Costo de la informacion', 'Separar las diversas etapas de las operaciones', '4', 'PIAA'),
(355, 'Se dice que es una proteccion contra la icertidumbre', 'Estimacion de un evento futuro', 'Planeacion agregada', 'Decisiones operacionales', 'Inventario de seguridad', '4', 'PIAA'),
(356, 'Se dice que es costo derivado de producir los articulos de autoabastecimiento', 'Costo del articulo', 'Planeacion agregada', 'Costo de ordenar', 'Costo de preparar', '4', 'PIAA'),
(357, 'El término _ CALIDADse refiere A', 'LO MEJOR', 'HACER BIEN LAS COSAS', 'RSE', 'GRADO EN EL QUE UN CONJUNTO DE CARACTERISTICAS INHERENTES CUMPLE CON LOS REQUISITOS', '4', 'PIAA'),
(358, 'UN REGISTRO ES', 'UN DOCUMENTO QUE ESTABLECE REQUISITOS ', 'UN DOCUMENTO QUE PROVEE EVIDENCIA OBJETIVA DE LAS ACTIVIDADES EJECUTADAS O RESULTADOS OBTENIDOS', 'UN DOCUMENTO QUE ESTABLECE LAS POLITICAS DE CALIDAD DE LA EMPRESA', 'TODAS LAS ANTERIORES', '2', 'PIAA'),
(359, 'LA AUDITORIA  DE CALIDAD NO DEBE SER', 'UNA INSPECCION', 'UNA ACCION RUTINARIA Y COTIDIANA', 'UNA REVISION', 'TODAS LAS ANTERIORES', '2', 'PIAA'),
(360, 'DOCUMENTO QUE DESCRIBE EL SISTEMA DE CALIDAD DE LA ORGANIZACIÓN Y EN EL QUE SE DEFINE LA POLITICA DE CALIDAD ASI COMO LA ESTRUCTURA ORGANIZATIVA', 'MANUAL DE CALIDAD', 'Diagrama de Ishikawa (causa efecto o espina de pescado)', 'PARETO', 'LISTA DE VERIFICACIÓN ', '1', 'PIAA'),
(361, 'Es un conjunto de herramientas que permite resolver problemas de calidad, muy útil para conseguir la estabilidad y mejorar la capacidad del proceso mediante la reducción de la variabilidad.', 'Proceso', 'Control Estadístico del Proceso', 'Causas de Variación', 'Estado de control estadístico ', '2', 'PIAA'),
(362, 'Es un medio para evaluar si un proceso de fabricación, servicio o proceso administrativo está o no en estado de control estadístico, es decir, evaluar la estabilidad de un proceso.', 'Coeficiente de correlación', 'Diagrama de dispersión', 'Diagrama de pareto', 'Gráficas de  control', '4', 'PIAA'),
(363, 'Estado financiero que nos permite conocer la situación financiera de la empresa.', 'Balance General', 'Estado de Resultados.', 'Estado de Costos de Producción.', 'Punto de Equilibrio.', '1', 'PIAA'),
(364, 'Estado financiero con el que podemos ver excedentes o faltantes de insumos.', 'Balance General.', 'Estado de Resultados.', 'Estado de Costos de Producción.', 'Punto de Equilibrio.', '2', 'PiAA'),
(365, '¿Cuáles son los elementos de los Costos de Producción?', 'Materia Prima, Gastos Fijos, Gastos de Administración.', 'Gastos Fijos, Gastos Variables, Gastos de Instalación.', 'Materia Prima, Mano de Obra, Costos Indirectos de Fabricación.', 'Gastos de Producción, Gastos Fijos, Gastos Variables.', '3', 'PIAA'),
(366, 'El calcular los costos de producción, los costos totales de producción, la mano de obra, la materia prima y  los costos  indirectos de fabricación,  nos  permite  elaborar: ', 'Estado de Costos de Producción.', 'Control de Producción.', 'Pronóstico de Ingresos.', 'Presupuesto de Egresos.', '4', 'PIAA'),
(367, 'Herramienta que nos permite medir la eficiencia del proceso productivo.', 'Indicadores de evaluación del desempeño.', 'Control de Producción.', 'Estado de Costos de Producción.', 'Punto de Equilibrio.', '1', 'PIAA'),
(368, 'Mediante los costos reales y estándar de producción podemos:', 'Realizar las compras de materia prima.', 'Identificar áreas de oportunidad y su presupuesto.', 'Contratar la mano de obra calificada.', 'Programar la fecha de entrega de producto terminado.', '2', 'PIAA'),
(369, '¿La norma NOM-Z-4-1986 hace referencia a?', 'Dimensionado y tolerado', 'Acotaciones', 'Cortes y Secciones.', 'Lineas', '4', 'PIAA'),
(370, '¿Las  letras minúsculas empleadas en tolerancias dimensionales, hacen referencia a ?', 'La superficie de contacto interior de la pieza', 'La superficie de contacto exterior de la pieza', 'Las lineas de acotación', 'Los cuadros de referencia', '2', 'PIAA'),
(371, '¿La siguiente notación  1:1  corresponde a?', 'Una escala', 'Una referencia de vista', 'Una referencia de acotación', 'Un grado de material', '1', 'PIAA'),
(372, 'Para dibujar piezas mecánicas simétricas es conveniente dibujar la mitad y la otra mitad se hace con la opción __________', 'Matriz', 'Rotación', 'Escala', 'Espejo', '4', 'PIAA'),
(373, 'Cuando se dibujan piezas de revolución, se dibuja el perfil y posteriormente se genera el sólido por medio de la selección de __________ ', 'El eje ', 'El origen', 'El vértice', 'El defasamiento', '1', 'PIAA'),
(374, 'El dibujo de más de 2 formas de la misma dimensión pero equidistanciadas se hace por medio de la opción _________', 'Espejo', 'Matriz', 'Extrusión', 'Revolución', '2', 'PIAA'),
(375, 'La operación de ___________ permite modelar piezas mecánicas con direcciones curvas tales como tubos de escape.', 'Extrusión', 'Barrido', 'Revolución', 'Ranurado', '2', 'PIAA'),
(376, 'El plano alzado (XY) permite extruir perfiles de piezas de forma ________', 'Vertical', 'Transversal ', 'Lateral', 'Diagonal', '2', 'PIAA'),
(377, 'En el ensamblaje virtual de piezas, se debe __________ la pieza de referencia.', 'Acotar', 'Seleccionar', 'Modelar', 'Anclar', '4', 'PIAA'),
(378, 'Para ensamblar componentes de un conjunto es necesario establecer relaciones de _________', 'Masa', 'Volumen', 'Posición', 'Tolerancia', '3', 'PIAA'),
(379, ' En los planos de dibujo, deben indicarse __________ en todos los círculos.', 'Los radios', 'Los puntos', 'Las líneas de centro', 'Las texturas', '3', 'PIAA'),
(380, 'Para el modelado de piezas mecánicas con dobleces ¿qué módulo de CAD es conveniente utilizar?', 'Superficies', 'Chapa metálica', 'Planos', 'Ensamble', '2', 'PIAA'),
(381, 'De las siguientes respuestas identifica el concepto que describe a la Distribución de Planta ', 'La agrupación de trabajadores', 'La ordenación física de los elementos industriales', 'La ordenación de supervisores', 'La ordenación de papeles ', '2', 'PIAA'),
(382, 'El objetivo primordial que persigue la distribución en planta es_______________ ', 'Hallar una ordenación de las áreas de trabajo y del equipo', 'Localizar cuellos de botella', 'Elaborar organigramas de la empresa', 'Elaborar costos', '1', 'PIAA'),
(383, 'De los siguientes factores dentro de la distribución de planta cual considera el tamaño, forma, volumen, peso y características físicas y químicas de los mismos', 'Maquinaria', 'Supervisión ', 'Materiales', 'Mano de obra', '3', 'PIAA'),
(384, 'De los siguientes tipos de distribución de planta a cual pertenece el siguiente concepto: Se trata de una distribución en la que el material o el componente permanecen en lugar fijo. Todas las herramientas, maquinaria, hombres y otras piezas del material concurren a ella.', 'Distribución por proceso', 'Distribución por producción en cadena ', 'Distribución mixta', 'Distribución por posición fija', '4', 'PIAA');
INSERT INTO `examen_especialidad` (`id_especialidad`, `pregunta`, `respuesta1`, `respuesta2`, `respuesta3`, `respuesta4`, `respuesta_correcta`, `carrera`) VALUES
(385, 'Es  una filosofía  que define la  forma  en  que debe optimizarse  un sistema de producción el  cual  trata  de la entrega  a tiempo de materias  primas  o componentes  a la  línea de fabricación de forma que lleguen a tiempo a medida que son necesarios ', 'JIT', 'CUADRO DE MANDO INTEGRAL', 'DIAGRAMA DE FLUJO', 'CINCO S', '1', 'PIAA'),
(386, 'Mejora  y mantiene las condiciones  de  orden y limpieza en el lugar de trabajo.  No es una mera  cuestión  estética. Se  trata de mejorar las condiciones de seguridad, clima  laboral, motivación de personal  y eficiencia.', 'CINCO S', 'JIT', 'CUADRO DE MANDO INTEGRAL', 'POKA-YOKE', '1', 'PIAA'),
(387, 'Las siguientes palabras nombran  cada  una  de las  cinco  fases  de mejora  continua  que  traducidas  al idioma  español  tienen  el  siguiente  significado  ORGANIZACIÓN, ORDEN, LIMPIEZA   ______________  DISIPLINA  Y HABITO', 'CONTROL VISUAL', 'TRABAJO EN EQUIPO', 'ESFUERZO', 'COMPROMISO', '1', 'PIAA'),
(388, 'Es una técnica de calidad por un ingeniero japonés Shingeo Shingo  en los  años  1960  que significa  “a prueba  de  errores”', 'JIT', 'BENCHMARKING', 'POKA-YOKE', 'CINCO S', '3', 'PIAA'),
(389, '¿Un molde de dos placas puede ser dividido en dos partes básicas que son?', 'Mitad básica y mitad soporte.', 'Mitad fija y mitad móvil.', 'Mitad fija y mitad soporte.', 'Mitad básica y mitad móvil.', '2', 'PIAA'),
(390, '¿La parte hembra de la cavidad normalmente se localiza en?', 'La mitad básica del molde.', 'La mitad pared del molde.', 'La mitad fija del molde', 'la mitad fija de la máquina.', '3', 'PIAA'),
(391, '¿Es la parte que sirve de guía para la fijación del molde en la placa de la inyectora?', 'Placa de centraje.', 'Rueda de centraje', 'Arandela de centraje.', 'Anillo de centraje', '4', 'PIAA'),
(392, '¿Es la parte que sirve de asentamiento para la boquilla?', 'Buje de colada.', 'Buje de placa.', 'Buje de boquilla.', 'Buje de asentamiento.', '1', 'PIAA'),
(393, '¿Es la distancia entre las placas de la máquina cuando el molde esta cerrado?', 'Altura del molde.', 'Altura de la máquina.', 'Altura de bloque', 'Altura vertical.', '1', 'PIAA'),
(394, '¿Son moldes usados para permitir la alimentación central, cuando hay mas de una cavidad.?', 'Moldes de tres placas.', 'Moldes biplaca.', 'Moldes centrales de inyección.', 'Moldes permanentes.', '1', 'PIAA'),
(395, 'La __________________  es una fuerza por unidad de superficie ', 'Presión ', 'Viscocidad', 'Caudal', 'temperatura', '1', 'PIAA'),
(396, 'La _____________ es la medida de la resistencia de un fluido que fluye', 'caudal', 'Viscosidad', 'Temperatura', 'Presión ', '2', 'PIAA'),
(397, 'El ____________ es un gas casi perfecto caracterizándose esencialmente por su fluidez, comprensibilidad y elasticidad', 'Aceite', 'Aire', 'Caudal', 'Tiempo', '2', 'PIAA'),
(398, 'La  ______________ de una sustancia expresa la masa contenida en la unidad de volumen', 'viscosidad', 'Presión ', 'Densidad ', 'Temperatura', '3', 'PIAA'),
(399, 'Son  componentes del proyecto menos:', 'Objetivo general', 'Resumen', 'Conclusiones', 'Valorizaciones', '4', 'PIAA'),
(400, 'Un ____________ es una combinación única de herramientas, métodos, materiales y personal dedicados a la labor de producir un resultado medible', 'Desecho', 'Histograma', 'Proceso', 'indicador', '3', 'PIAA'),
(401, 'planificación que consiste en un conjunto de actividades que se encuentran interrelacionadas y coordinadas.', 'Proyecto', 'Cambio', 'Desecho', 'Indicador', '1', 'PIAA'),
(402, 'La capacidad __________ es la maxima producción que se puede lograr  en un proceso.', 'Madia', 'Pico', 'Alta', 'Baja', '2', 'PIAA'),
(403, '¿Una broca es empleada para ?', 'Machuelear', 'Rimar ', 'Perforar', 'Fresar', '3', 'PIAA'),
(404, '¿Cuáles son los dos tipos de limas empleadas en el trabajo de  ajuste de banco?', 'Musa y triangular.', 'Triangular y cuadrada.', 'Rectangular y bastarda.', 'Musa y bastarda.', '4', 'PIAA'),
(405, '¿Cuándo decimos que la herramienta de corte esta fija y lo que se mueve es la pieza de trabajo, estamos hablando del proceso de ?', 'Fresado', 'Torneado', 'Rectificado', 'Electroerosionado', '2', 'PIAA'),
(406, '¿Las partes principales de un torno son?', 'Caja norton , bancada, conjunto de carros y contrapunto.', 'Husillo, engranes, guías y motores.', 'Caja norton, Bancada, carro auxiliar y carro transversal.', 'Caja norton, Tambores, Bancada y contrapunto.', '1', 'PIAA'),
(407, '¿Cuáles son los tipos en que se clasifica una fresadora?', 'Mixta, de columna y transversal', 'Horizontal, Mixta y de columna', 'Horizontal, vertical y universal', 'De columna y horizontal ', '3', 'PIAA'),
(408, '¿Las ruedas abrasivas para dar acabado superficial, en que máquina herramienta son empleadas ?', 'Esmeriladora', 'Rectificadora', 'Electroerosionadora', 'Cortadora de hilo', '2', 'PIAA'),
(409, 'En los engranes rectos que ángulo de presión se emplea por sus características de operación suaves y silenciosas, por su mayor capacidad de transmisión y por el menor numero de dientes efectuados por maquinado.', '20°', '14 ½°', '18°', '12°', '1', 'PIAA'),
(410, 'La transmisión de potencia en estas transmisiones depende de la fricción  entre la superficie y la polea.', 'Correa', 'Engranes', 'Rodillos', 'Cadenas ', '1', 'PIAA'),
(411, 'Si el  engrane gira a 180 rpm y el piñón a 720 rpm ¿Cual es la relación de transmisión? ', '4:1', '5:1', '1:8', '1:6', '1', 'PIAA'),
(412, 'Si el engrane gira a 1800 rpm y el piñón a 120 rpm  ¿Cual es la relación de transmisión?', '4:1', '15:1', '6:1', '4:8', '2', 'PIAA'),
(413, 'Es la representación gráfica de los puntos en los que se introducen materiales en el proceso y del orden de las inspecciones y de todas las operaciones.', 'Diagrama de hilos', 'Diagrama de operaciones', 'Diagrama de recorrido', 'Diagrama de flujo de proceso', '2', 'PIAA'),
(414, 'Es la aplicación de técnicas, para determinar el tiempo que invierte un trabajador calificado en llevar a cabo una tarea   definida, efectuándola según una norma (método) de ejecución preestablecida. A esta técnica se le llama ________________.', 'Estudio de métodos', 'Simplificación del trabajo', 'Medición del trabajo', 'Balanceo de líneas', '3', 'PIAA'),
(415, 'Lea con atención:                                                             I. Análisis del método actual.                                          II. Implementación del nuevo método.                                        III. Desarrollo del nuevo método.                                  IV. Selección de la operación o trabajo a mejorar.                                V.Conocimiento del proceso.                       VI.Adiestramiento a los operarios del nuevo método.                            VII.Registro del método actual.                                   VIII. Mantener en uso el nuevo método.          Selecciona la opción, que ordena correctamente las etapas del estudio de métodos.   ', 'I,II,III,IV,V,VI,VII,VIII', 'V,IV,VII,I,III,VI,II,VIII', 'I,IV,VI,V,III,VII,II,VIII', ' IV,VII,I,VIII,VI,II,V,III', '2', 'PIAA'),
(416, 'Es una de las herramientas más importantes para el control de la producción, dado que de una línea de fabricación equilibrada depende la optimización de ciertas variables que afectan la productividad de un proceso', 'Capacidad de planta', 'Balanceo de lineas', '', '', '2', 'PIAA'),
(417, 'El ______________________ , es una gráfica donde se establece el número limitado de las secuencias de elementos que sean fisica o económicamente factibles de realizar en un procedimiento.', 'Diagrama hombre- máquina', 'Diagrama de precedencia', 'Diagrama de recorrido', 'Diagrama bimanual', '2', 'PIAA'),
(418, 'Instrumentos para medicion angular', 'Transportador, Subito, holegage, indicador', 'Goniometro, Comparador optico, Contracer, Escuadras', 'Subito, transportador, Gauges pas-no pasa, Mesas de senos', 'Transportador universal, Boremadic, Digiderm, Inclinometro', '2', 'PIAA'),
(419, 'Se va a medir la rugosidad de una pieza mecanica, ¿en que rango de unidades tiene sentido hacerlo?', 'Kilometros', 'Milimetros', 'Micrometros', 'Nanometros', '3', 'PIAA'),
(420, 'Como se llama el laboratorio primario mas importante en Mexico', 'EMA', 'CENAM', 'LFMN', 'AIAG', '2', 'PIAA'),
(421, 'Proceso que consiste en obtener experimentalmente uno o varios valores que pueden atribuirse razonablemente a una magnitud', 'Mensurando', 'Metrologia ', 'Medicion', 'Insertidumbre', '3', 'PIAA'),
(422, 'Enliste las siete unidades fundamentales de un sistema de medicion\r\na.-Longitud	\r\nb.-Presion	\r\nc.-Tiempo	\r\nd.-Peso	\r\ne.-Intensidad Luminosa	\r\nf.-Corriente electrica	\r\ng.-Cantidad de Materia	\r\nh.-Masa	\r\ni.-Temperatura	\r\nj.- velocidad	\r\n', 'a,b,c,d,e,f,g', 'a,c,h,j,f,i,d', 'b,d,e,f,g,h,i', 'h,i,f,g,a,c,e', '4', 'PIAA'),
(423, '¿Cuáles son las diferentes estructuras organizacionales?', 'Vertical y horizontal', 'Piramidal', 'Circular', 'Las tres anteriores.', '4', 'PIAA'),
(424, 'Del siguiente texto complementa que tipo de estructura es la que se comenta.\r\nEn ________________  los niveles jerárquicos se muestran mediante círculos concéntricos, de adentro hacia afuera. \r\n', 'Una estructura circular', 'Una estructura vertical', 'Una estructura horizontal', 'Una estructura piramidal', '1', 'PIAA'),
(425, 'Del siguiente texto complementa que tipo de estructura es la que se comenta.\r\nLa ____________________es el nivel de distribución del poder. Que inicia de izquierda a derecha.\r\n', 'Estructura circular', 'Estructura vertical', 'Estructura horizontal', 'Estructura piramidal', '3', 'PIAA'),
(426, 'Son la dependencia y relación que tienen las personas dentro de la empresa y está subordinada a una entidad única; y está formada normalmente por un grupo singular y de poder en la parte superior con los niveles posteriores por debajo de ellos', 'Nivel operativo', 'Niveles jerárquicos ', 'Nivel ejecutivo', 'Nivel asesor', '2', 'PIAA'),
(427, '¿CUÁNTOS TIPOS DE MATERIALES POLIMERICOS HAY?', 'POLIPROPILENO Y POLIETILENO', 'TERMOFIJOS Y TERMOPLASTICOS', 'RECICLADOS Y NO RECICLADOS', 'DENSOS Y LIGEROS', '2', 'PIAA'),
(428, 'LA VISCOSIDAD ES UNA MEDIDA DE ___________ DE LA MEZCLA.', 'DUREZA', 'FLUJO', 'APARIENCIA', 'COLOR', '2', 'PIAA'),
(429, 'UNA CARACTERÍSTICA DEL MOLDE ES ES ___________', 'LA CAVIDAD', 'EL HUSILLO', 'EL ACERO', 'LA PIEZA', '1', 'PIAA'),
(430, '¿CÓMO SE ELIGE UNA MAQUINA DE INYECCIÓN?', 'POR LOS MOLDES', 'POR UNIDAD DE CIERRE', 'POR LAS PIEZAS A FABRICAR', 'POR EL CONSUMO DE ENERGIA', '2', 'PIAA'),
(431, 'SON LAS ETAPAS DEL PROCESO DE SOPLADO', 'BOTADO DE LA PIEZA, INYECCION DE LA PIEZA, ENFRIAMIENTO DE LA PIEZA', 'MANGA,  ESTIRADO Y SOPLADO', 'PREFORMA, PRECALENTAMIENTO,ESTIRADO, SOPLADO Y EXTRACCION', 'EXTRUSION,SOPLADO Y ENFRIAMIENTO', '3', 'PIAA'),
(432, 'SON LAS ETAPAS DEL PROCESO DE EXTRUSION', 'CIERRE, APERTURA, CICLO', 'GRANULADO, CORTADO, FORMADO', 'ALIMENTACION, PLASTIFICACION, FORMADO POR DADO, ESTIRADO, ENFRIADO Y CORTADO', 'PREFORMA, ESTIRADO EXPULSION', '3', 'PIAA'),
(433, 'Lea con atención:                                                1. Molde                                                2. Fusión del metal                                      3. Arena                                                  4. Modelo                                              5. Vaciado en molde                           6. Caja de moldeo                                 7. Pieza fundida                   Seleccione la opción que ordena correctamente los componentes principales en el proceso de fundición en arena.', '1,3,6,4,7,2,5', '6,4,3,1,2,5,7', '4,2,6,1,7,3,5', '2,5,3,6,1,4,7', '2', 'PIAA'),
(434, 'El proceso que establece la obtención de piezas metálicas a través del vaciado de metal líquido en un molde, se le conoce como:', 'Soldadura', 'Electroerosión', 'Fundición', 'Troquelado', '3', 'PIAA'),
(435, 'El proceso mecánico de producción industrial, que se utiliza para trabajar en frío lámina metálica, por medio de un punzón y una matriz, se le denomina.  ', 'Troquelado', 'Mecanizado', 'Fundición', 'Forja', '1', 'PIAA'),
(436, 'Seleccione los problemas y defectos comunes en la soldadura al arco.      1. Combadura                                      2. Extrusionado                                    3. Distorsión                                          4. Estampado                                       5. Socavado                                         6. Acuñado', '1,3,5', '2,4,6', '1,2,5', '3,5,6', '1', 'PIAA'),
(437, 'Relacione el tipo de soldadura con sus consecuencias.                          Soldadura                                               1. Eléctrica                                                 2. Oxiacetilénica                                   a) Obtención de una llama que permite soldar.                                     b) Varilla metálica con revestimiento que le confiere propiedades particulares.                                           c) No es necesario aporte de material. d) Arco cuya longitud es aproximadamente igual al diámetro del electrodo.', '1 a,b; 2 c,d', '1 a,c; 2 b,d', '1 b,c; 2 a,d', '1 b,d; 2a,c', '4', 'PIAA'),
(438, 'Transformación de materias primas por medio de procesos industriales en productos elaborados o productos terminados para su distribución y consumo', 'Mentefactura', 'Procesos de manufactura', 'Manufactura', 'Logistica', '2', 'PIAA'),
(439, 'Es la propiedad de un sistema que define su nivel de respuesta y de adaptación al contexto. Es el nivel de adaptación permanente del sistema o su tendencia a la supervivencia dinámica', 'Enfoque sistemico', 'Entropia', 'Teoria de sistemas', 'Homeostasis', '4', 'PIAA'),
(440, 'Pieza con geometria definida, ligeramente agrandada, tomando en consideracion la contraccion y tolerancias para el maquinado de la pieza final', 'Modelo', 'Pieza final', 'Materia prima', 'Corazon', '1', 'PIAA'),
(441, 'Es un modelo de tamaño natural de las superficies interiores de la parte, se inserta en la cavidad del molde antes del vaciado, formando así las superficies externas e internas de la fundición', 'Inserto', 'Modelo', 'maquinado', 'Corazon', '4', 'PIAA'),
(442, 'Se introducen en las mezclas de moldeo con el objetivo de ligar los granos de arena y darles resistencia en estado humedo y seco a las mezclas', 'Agua', 'Bentonita', 'Desgasificante', 'Permeabilidad', '4', 'PIAA'),
(443, 'Genera formas cilíndricas y redondeadas con una herramienta de un solo filo. La herramienta es estacionaria y la pieza es la que gira.', 'Taladrado', 'Fresado', 'Torneado', 'Brochado', '3', 'PIAA'),
(444, 'Proceso electro-mecanico que consiste en unir dos o mas piezas de metal mediante fusion a altas temperaturas', 'Electrolisis', 'Soldadura', 'Fundicion', 'Electroerosion', '2', 'PIAA'),
(445, 'Está  compuesto de un bastidor, sobre el se montan varios elementos como son: el motor, el embrague, la caja de cambios, la transmisión, la dirección, la suspensión delantera, la suspensión posterior con su respectivo puente, el escape y los frenos. ', 'AUTOMOVIL', 'BARCO', 'AVION', 'TREN', '1', 'PIAA'),
(446, 'Es un tipo  sistema de frenos  evita que las ruedas se bloqueen y patinen al frenar, con lo que el vehículo no solamente decelera de manera óptima, sino que permanece estable y manejable durante la frenada (podemos girar mientras frenamos)', 'De tambor ', 'abs', 'De disco ', 'De estacionamiento', '2', 'PIAA'),
(447, 'La dirección _______________ es uno de los avances tecnológicos más sustanciales que han ocurrido en la historia automotriz. \r\nSu principal virtud es que el conductor no debe realizar una fuerza exagerada sobre el volante, lo que permite reaccionar frente a imprevistos y efectuar con facilidad maniobras a bajas velocidades.\r\n', 'MECANICA', 'HIDRAULICA', 'MANUAL', '', '2', 'PIAA'),
(448, 'Seleccione la opción  que ordena correctamente la secuencia ', '2,1,3,5', '1,4,3,5', '1,3,5,2', '1,3,5,4', '4', 'PIAA'),
(449, 'Es el sistema  encargado de repartir alimentación hacia todo el vehículo, sin el no se tendría arranque o encender las luces.', 'SISTEMA  DE  FRENOS  ', 'SISTEMA  DE  COMBUSTION', 'SISTEMA ELECTRICO', 'SISTEMA  DE SUSPENSIÓN', '3', 'PIAA'),
(450, 'Es un elemento  que  se encarga  de  proporcionar los primeros  giros  al  motor  para  que  este  realice  el  ciclo  de 4  tiempo ', 'MOTOR DE ARRANQUE (MARCHA)', 'MOTOR DE LIMPIAPARABRISAS', 'CAJA DE CAMBIOS', 'ALTERNADOR', '1', 'PIAA'),
(451, 'Las siguientes líneas de programación de torneado CNC se refieren a una operación de _________ N10 G00 X25.4 Z2.\r\nN20 G82 X25.4 Z-1. I5 F600\r\n', 'Cilindrado', 'Careado', 'Barrenado', 'Roscado', '2', 'PIAA'),
(452, '¿Cúales de las siguientes líneas de programación CNC indican una operación de chaflán en el torno?', 'N10 G00 X24. Z0. N20 G02 X25. Z-0.5 I0.5 F400', 'N10 G00 X24. Z0. N20 G03 X25. Z-0.5 I0.5 F400', 'N10 G00 X24. Z0. N20 G01 X25. Z-0.5 F400', 'N10 G00 X24. Z0. N20 G04 P200', '3', 'PIAA'),
(453, '¿Qué forma geométrica se genera con las líneas de programación CNC N10 y N20?\r\nN10 G00 X5.Y1. \r\nN20 G01 X10. Y25. F600', 'Línea recta a 0°', 'Línea recta a 90°', 'Línea diagonal', 'Curva en sentido horario', '3', 'PIAA'),
(454, '¿Qué significan las líneas de programación N100, N102 y N104? \r\nN100 G21\r\nN102 T1 M6\r\nN104 M3 S2500', 'Programación en mm, cambio de herramienta número 1, giro de husillo en sentido horario a 2500 rpm', '\r\nProgramación en mm, cambio de herramienta número 1, giro de husillo en sentido antihorario a 2500 rpm', 'Programación en pulgadas, cambio de herramienta número 1, giro de husillo en sentido antihorario a 2500 rpm', 'Programación en pulgadas, cambio de herramienta número 1, giro de husillo en sentido horario a 2500 rpm', '1', 'PIAA'),
(455, 'En una operación de contorno, como la mostrada en la figura SCAM1 y con una compensación por defecto a la izquierda, el centro de la herramienta se moverá __________', 'Por fuera de la forma', 'Por dentro de la forma', 'En medio de la forma', 'Arriba de la forma', '1', 'PIAA'),
(456, 'El código G54 se utiliza en la programación del origen pieza, para los ejes __________', 'X, Z ', 'X, Y  ', 'Y, Z', 'A y Z', '2', 'PIAA'),
(457, 'Conjunto de conocimientos obtenidos mediante la observación y el razonamiento, que son sistemáticamente estructurados y de los que se deducen principios y leyes generales.', 'Tecnología ', 'Investigación', 'Ciencia', 'Método científico', '3', 'MAI'),
(458, 'El método científico se divide en 3 fases:', 'Exposición, demostración, indagación', 'Demostración, indagación, exposición', 'Indagación, exposición, demostración', 'Indagación, demostración, exposición', '4', 'MAI'),
(459, 'Es una  hoja Informativa sobre sustancias peligrosas o un documento que da información detallada sobre la naturaleza de una sustancia química.', 'HISQ', 'DPSQ', 'MSDS', 'DSMS', '3', 'MAI'),
(460, 'Nombre que se le da a los conjuntos de elemento que se encuentran en la tabla periódica con propiedades físicas y químicas similares.', 'Segmentos', 'Periodos', 'Bloques', 'Grupos o familias', '4', 'MAI'),
(461, '¿Cómo se le llama a las filas horizontales de elementos de la tabla periódica?', 'Periodos', 'Lantánidos', 'Familias', 'Grupos', '1', 'MAI'),
(462, 'En este cambio de estado todo líquido alcanza cierta temperatura y comienza a pasar a la fase gaseosa.', 'Fusión', 'Ebullición', 'Sublimación', 'Evaporación', '2', 'MAI'),
(463, 'Estado de la materia en el que la sustancia adopta la forma del recipiente', 'Líquido', 'Sólido', 'Gas', 'Plasma', '1', 'MAI'),
(464, 'Ácidos inorgánicos constituidos por  hidrógeno, no metal y oxígeno.', 'Ácidos binarios', 'Hidrácidos', 'Ácidos fuertes', 'Oxácidos', '4', 'MAI'),
(465, 'Un foco transforma la energia electrica en energia luminosa y en', 'Energía Mecánica', 'Energía Cinética', 'Energía Térmica', 'Energía Química', '3', 'MAI'),
(466, '¿Qué función cumple un foco en un circuito eléctrico cerrado?', 'Conduce la corriente por todo el circuito', 'Interrumpe o reactiva la corriente de todo el circuito', 'Recibe la corriente y la transforma en otro tipo de energía', 'Produce la corriente eléctrica', '3', 'MAI'),
(467, '¿Qué sucede si acercas un conductor con corriente eléctrica a una brújula?', 'La brújula se calienta', 'La aguja de la brújula se mueve', 'La corriente eléctrica cambia de dirección', 'Se detiene la corriente eléctrica', '2', 'MAI'),
(468, '¿Qué nombre reciben los extremos de un imán?', 'Polos', 'Cabos', 'Bornes ', 'Bordes', '1', 'MAI'),
(469, '¿Qué obtenemos si enrollamos un cable con corriente eléctrica alrededor de un metal ferroso?', 'Dinamo', 'Motor', 'Brújula', 'Electroimán', '4', 'MAI'),
(470, 'Las propiedades de los metales se deben esencialmente a los electrones de valencia', 'Verdadero', 'Falso', '', '', '1', 'MAI'),
(471, 'Los termoplásticos son aquellos materiales que sólo pueden moldearse o deformarse una sola vez', 'Verdadero', 'Falso', '', '', '2', 'MAI'),
(472, 'Por lo general se trata de materiales que son aislantes eléctricos y térmicos, un ejemplo clásico de ellos es el vidrio', 'Magnéticos', 'Poliméricos', 'Compuestos', 'Cerámicos', '4', 'MAI'),
(473, 'La fibra de vidrio, que es vidrio en forma filamentosa embebido en una matriz polimérica, pertenece al grupo de materiales:', 'Cerámicos', 'Semiconductores', 'Compositos o compuestos', 'Polímeros', '3', 'MAI'),
(474, 'Estos materiales posibilitan la fabricación de los circuitos integrados que han revolucionado, en las últimas décadas, las industrias electrónicas y de computadores', 'Cerámicos', 'Semiconductores', 'Compositos o compuestos', 'Polímeros', '2', 'MAI'),
(475, 'Acero que contiene un mínimo del 10.5% en Cromo y un máximo del 1.2% de Carbono', 'Galvanizado', 'Al carbón', 'Inoxidable', 'Niquelado', '3', 'MAI'),
(476, 'Estas propiedades determinan como responde el material a un esfuerzo o carga aplicada', 'Magneticas', 'Físicas', 'Químicas', 'Mecánicas', '4', 'MAI'),
(477, '¿Cuáles son las operaciones básicas dentro del Álgebra?', 'Potenciación, radicación, factorización, suma, resta, multiplicación y división.', 'Calculo Integra, Calculo Diferencial, factorización, suma y resta.', 'Ninguna de las anteriores.', '', '1', 'MAI'),
(478, '¿Que tipo de inteligencia poseen los astrónomos?', 'Logica Matematica', 'Kinestesica', 'Naturalista', 'Visual Especial', '4', 'MAI'),
(479, 'Cuando tu trabajo te apasiona y te expresas libremente con emotividad ¿Qué sombrero estas utlizando?', 'Rojo', 'Azul', 'Negro', 'blanco', '1', 'MAI'),
(480, 'Ciencia que estudia la bondad  o la maldad de los actos humanos', 'Valores', 'Administracion por valores', 'Etica', '', '3', 'MAI'),
(481, '¿Cuáles son los principales conceptos de sistema?', 'Conjunto, union, estructura, informacion, materiales y energia', 'Informacion , energia,  materiales, salida o producto, procesamiento, ambiente o entorno, retroalimentacion', 'Procesamiento, ambiente o entorno, retroalimentacion, conjunto y union', '', '2', 'MAI'),
(482, 'Son los principios  que nos permiten orientar  nuestro comportamiento en funcion de realizarnos  como personas', 'Etica', 'Valores', 'Moral', '', '2', 'MAI'),
(483, '¿Cuál de las siguientes afirmaciones explica mejor el proceso de globalización?', 'El crecimiento del comercio mundial durante los últimos años ha llevado a la creación de una economía global, en la cual las grandes empresas multinacionales producen y exportan bienes y servicios en ', ' La carrera armamentista y la amenaza nuclear a nivel mundial han llevado a la creación de complejos sistemas globales de defensa estratégica en las naciones occidentales.', 'Las nuevas tecnologías de información llegan a los diferentes países del mundo enmarcado dentro del mercado global.', ' El surgimientos de nuevas políticas a nivel mundial en los últimos años, ha llevado a la creación de organismos globales para ayudar a los países subdesarrollados. ', '1', 'MAI'),
(484, 'Son los intelectuales que trabajan para las grandes empresas multinacionales y forman parte de los agentes de la globalización económica.', 'Los burócratas', 'Los consorcios', 'Los políticos', 'Los tecnócratas', '4', 'MAI'),
(485, 'Una desventaja de la globalización es:', 'Existe mayor competitividad entre las empresas lo que provoca una disminución de precios y mejora la calidad de los bienes y servicios', 'Aumento de la pobreza en los países desarrollados porque las empresas multinacionales emigran a otros países donde la mano de obra y las materias primas son más baratas.', 'Aumenta el uso de la información a nivel mundial.', 'Se forman grandes consorcios financieros movilizando y haciendo crecer el capital.  ', '2', 'MAI'),
(486, '“Es el desarrollo que satisface las necesidades del presente, sin comprometer la capacidad de las generaciones futuras de satisfacer sus propias necesidades” (Informe, Brundtland 1987)', 'Desarrollo de vida integral', 'Desarrollo sustentable', 'Desarrollo de calidad de vida', 'Desarrollo social', '2', 'MAI'),
(487, 'Es un término utilizado para referirse al fenómeno del aumento de la temperatura media global, de la atmósfera terrestre y de los océanos.', 'Efecto invernadero', 'Calentamiento atmosférico', 'Calentamiento global', 'Calentamiento terrestre', '3', 'MAI'),
(488, 'Se refiere a la conservación de las tradiciones y costumbres de un pueblo para garantizar el desarrollo de las siguientes generaciones.', 'Sustentabilidad política', 'Sustentabilidad tradicional', 'Sustentabilidad democrática', 'Sustentabilidad cultural', '4', 'MAI'),
(489, 'Capital economico', 'Es el conjunto de bienes de una entidad empresarial para producir riqueza', 'Dinero que se invierte para generar una renta o un  interes', 'Valor de la diferencia entre los bienes y las deudas de una empresa.', 'Son todos las deudas y obligaciones de una empresa', '1', 'MAI'),
(490, 'Selecciona la respuesta correcta:  Los costos de producción estan determinados por ', 'materia prima, mano de obra y gastos de fabricación', 'materia prima ,  balance general y  estado de resultados', 'mano de obra , gastos  directos de fabricación y  capital contable', 'Costo unitario, costo total de materia prima y costo total de mano de obra', '1', 'MAI'),
(491, 'Las partes que conforman el balance general son', 'Entradas, proceso y salida', 'Reporte en forma de cuenta ', 'Cuentas del activo circulante, fijo y diferido', 'Encabezado, cuerpo, pie', '4', 'MAI'),
(492, 'El capital en  un estado financiero como el balance general esta conformado por ', 'pasivo menos activo', 'el pasivo mas el capital', 'activo menos pasivo', 'activo mas el pasivo', '3', 'MAI'),
(493, 'Si en un banco se ahorra $1000.00 cada mes a una tasa de interes del 5% capitalizado, ¿ cuánto se tendra al final del octavo mes ?', '$ 19549.11', '$ 9549.11', '$ 945.11', '$ 12357.89', '2', 'MAI'),
(494, 'Indica las compuertas básicas', 'AND, NAND OR, NOR, NOT', 'AND, OR, NOT', 'AND, OR, NOT, NAND, NOR, XOR, XNOR', 'NAND, NOR, XOR', '2', 'MAI'),
(495, 'En un receptor el estado uno representa ', 'Esta activado', 'Están desconectados', 'Esta funcionando', 'No hay corriente', '3', 'MAI'),
(496, 'En un pulsador el estado cero representa', 'Esta activado', 'Esta deshabilitado', 'No sirve', 'Esta sin activar', '4', 'MAI'),
(497, 'Ventajas de la automatización', 'Repetitividad', 'Eficiencia', 'Realizar operaciones imposibles', 'Todas las anteriores', '4', 'MAI'),
(498, 'Función de un transductor', 'Son los encargados de convertir las magnitudes físicas en magnitudes eléctricas', 'Son los encargados de convertir magnitudes eléctricas en magnitudes físicas', 'Invierten la polaridad de la señal de entrada', 'Convierten una señal analógica a Digital', '1', 'MAI'),
(499, 'Dispositivos que se utilizan en la tecnología cableada', 'Reles, Contactores, Temporizadores', 'Botones, Relevadores', 'Reles, PLC, TDA', 'Bobinas, I', '3', 'MAI'),
(500, 'Tipos de Transductores', 'Digitales, Analógicos', 'ON-OFF, Numéricos, Analógicos', 'Boléanos, Numéricos', 'Carácter, String', '2', 'MAI'),
(501, 'Equipos de la tecnología Programada', 'Reles, PLC, TAD', 'Ordenadores, Autómatas', 'Microcontroladores', 'Relevadores, contactores, timmer', '2', 'MAI'),
(502, 'Las propiedades de un gas se describen mediante las variables V (volumen), T (Temperatura) y P (presión). La ecuación que describe que interrelacionan estas cantidades se llama: ', 'Ecuación de estado.', 'Ley de gay-lussac', 'Ley de boyle', 'Ley de  mariotte', '1', 'MAI'),
(503, 'Es un proceso  que cede  calor, es decir cede Energia termica hacia los arededores', 'Aislado', 'Cerrado', 'Exotermico', 'Endotermico', '3', 'MAI'),
(504, 'Es un ciclo  considerado como un proceso  de maquina termica, se clasifica por que ejecuta cuatro tiempos, Admision, Compresion, Combustion  y Escape', 'Ciclo Rankine', 'Ciclo Carnot', 'isotermico', 'Ciclo Otto', '4', 'MAI'),
(505, 'Es un proceso ciclico que  contiene los siguientes dispositivos, Compresor, condensador, valvula de expansión y evaporador', 'Evaporizacion', 'Refrigeracion', 'Sublimacion', 'Aire acondicionado', '2', 'MAI'),
(506, 'Es un dispositivo que convierte energía térmica en otras formas útiles de energía, como la energía eléctrica y mecánica. Hace que una sustancia de trabajo recorra un proceso cíclico durante el cuál absorbe calor  de una fuente de alta temperatura, realiza un trabajo, y libera calor a una temperatura mas baja', 'Foco frio', 'Foco caliente', 'Calorimetro', 'Máquina térmica ', '2', 'MAI'),
(507, '¿A que se le da el nombre de Seguridad industrial?  ', 'Conjunto de leyes, principios, criterios y normas formuladas cuyo objetivo es controlar el riesgo de accidentes y daños, tanto a las personas como a los equipos y materiales que intervienen en el desa', 'Son las condiciones no fisicas que afectan a una persona en su lugar de trabajo, como puede ser la temperatura a la cual esta sometida en su puesto de trabajo, si son optimas o no las condiciones de h', 'Ciencia y el arte dedicados al conocimiento, evaluación y control de aquellos factores ambientales o tensiones emanadas o provocadas por o con motivos de trabajo y que pueden ocasionar enfermedades', '', '1', 'MAI'),
(508, '¿Que entiendes por Enfermedades profesional?', 'Evento relacionado al trabajo que tuvo el potencial para llegar a producir o produjo una lesión, enfermedad o una fatalidad.', 'Accidente ocurrido en el curso del trabajo, por el hecho o como consecuencia del mismo', 'Condición anormal o desorden a la salud de un empleado causada por la exposición de factores ambientales asociados con su trabajo, que no de cómo resultado una lesión ocupacional', '', '3', 'MAI'),
(509, 'Identificar cuales son las principales normas de Seguridad e Higiene Industrial', 'Reglamento Federal de Seguridad y Salud en el Trabajo\r\nLey General del Equilibrio Ecológico y la Protección al Ambiente\r\nLey del Seguro Social', 'Reglamento Federal de Seguridad e Higiene y Medio Ambiente de Trabajo, \r\nNOM-STPS\r\nOHSA\r\nLey del Seguro Social', 'Ley del Seguro Social\r\nLey Federal del Trabajo\r\nConstitución Política De Los Estados Unidos Mexicanos', '', '2', 'MAI'),
(510, '¿Cómo se clasifican los diversos agentes ambientales causantes de daños y percanses en la industria?', 'Físicos, Químicos, Biológicos, Ergonómicos, Psicosociales.', 'Físico-químicos, Aerobios, Politicos y sociales.', 'Agentes solidos, Liquidos, Gaseosos y Termicos ', '', '1', 'MAI'),
(511, '¿Qué es una comisión mixta de seguridad e Higiene?', 'Dependencia responsable de dirigir los mecanismos y políticas de prevención y atención de los riesgos de desastres, mediante la aplicación de planes, programas, estrategias,  mecanismos y recursos.', 'Es un organo encargado de la provisión de los servicios de salud públicos o privados para la población en general.', 'Es un conjunto de personas provenientes de diferente áreas de la empresa, la cual está encargada de determinar las condiciones de trabajo, elementos de protección, higiene y prevención, y en general d', '', '3', 'MAI'),
(512, '¿Las condiciones inseguras son: ?', 'Es una medida de la probabilidad de ocurrencia de un accidente y la magnitud de sus consecuencias.', 'Son aquellos factores del medio ambiente de trabajo que pueden provocar un accidente.', 'Accidente ocurrido en el curso del trabajo, por el hecho o como consecuencia del mismo', '', '2', 'MAI'),
(513, '¿Qué entiendes por Acto inseguro?', 'Evento relacionado al trabajo que tuvo el potencial para llegar a producir o produjo una lesión, enfermedad o una fatalidad.', 'Conductas por acción u omisión que conllevan a la violación de procedimientos, normas leyes, reglamentos o prácticas seguras establecidas y que pueden causar accidentes.', 'Es una condición que tiene el potencial de causar daños a los seres humanos, propiedades, ambiente o una combinación de estos.', '', '2', 'MAI'),
(514, 'Elige la formula correcta para realizar el cálculo de la efectividad global.', 'Efectividad global= Efectividad*eficiencia*rendimiento', 'Efectividad global= (Efectividad+Eficiencia) / Rendimiento', 'Efectividad global= (Rendimiento-Efectividad)/ Eficiencia', 'Efectividad global= efectividad+eficiencia+rendimiento', '1', 'MAI'),
(515, 'Es la definición de falla funcional', 'Para definir la falla  deben ser establecidos por el personal de mantenimiento y de operaciones trabajando en conjunto con cualquier otra persona que tenga algo legítimo que decir acerca del comportam', 'es la perdida total de una función', 'Se define como la incapacidad de cualquier activo físico de cumplir una función según un parámetro de funcionamiento aceptable para el usuario', 'Se define como la la perdida total de la función.', '3', 'MAI'),
(516, 'Menciona las 4 categorías principales para medir la eficiencia del mantenimiento', 'Costos de mantenimiento, mano de obra, repuestos y materiales, planificación y control.', 'Costos de producción, ganancias, mano de obra y materia prima', 'Tasa de retorno de inversión, análisis de fallas, calidad del producto, piezas realizadas.', '', '1', 'MAI'),
(517, 'Menciona las 4 fases de implementación del TPM', 'Planificar, hacer, verificar y actuar', 'Preparación, Introducción, Implementación y consolidación. ', 'Seleccionar, ordenar, limpiar y estandarizar', '', '2', 'MAI'),
(518, 'Menciona las principales perdidas que impiden que una planta alcance su maxima eficacia', 'Paradas programadas, Ajustes de la producción, Fallos  de los equipos, Fallos de proceso, Pérdidas de producción normales, Pérdidas de producción anormales, Defectos de calidad, Reprocesamiento', 'Merma, Arranque de planta, Demora y mano de obra', 'Reproceso, Fallas de equipo, Mala calidad', 'Paros programados, Fallos de equipos y Reproceso', '1', 'MAI'),
(519, 'Menciona las cuatro fases para encontrar cero averías.', 'Planificar, hacer, verificar y actuar', 'Estabilizar los intervalos entre fallos, Alargar la vida del equipo, Restaurar periódicamente el deterioro y Predecir la vida del equipo.', 'Costos de producción, ganancias, mano de obra y materia prima', 'Paros programados, Fallos de equipos y Reproceso', '2', 'MAI'),
(520, 'Menciona las actividades de mantenimiento especializado para mejora del equipo:', 'Prevención de mantenimiento y mantenimiento predictivo.', 'Capacidades de mantenimiento especializado, Apoyo de mantenimiento autónomo.', 'Apoyo del mantenimiento autónomo, Mantenimiento planificado (6 pasos), Mantenimiento correctivo, Prevención de mantenimiento y Mantenimiento Predictivo.', 'Capacidades de mantenimiento especializado, Capacidades de reparación de equipos, capacidades de inspección y medida, capacidades y técnicas de diagnóstico de equipos y nueva tecnología de mantenimien', '3', 'MAI'),
(521, '¿ Son las normas que se aplican a un Dibujo Técnico ?', 'ISO', 'ANSI', 'NOM', 'Las tres anteriores', '4', 'MAI'),
(522, '¿Son graficos con los cuales interpretamos y elaboramos dibujos técnicos ?', 'Símbolos', 'Líneas', 'Textos', 'Tolerancias', '1', 'MAI'),
(523, '¿ Menciona 4 tipo de líneas aplicadas en un Dibujo Técnico ?', 'Centro, línea fantasma, eje de simetria, sección', 'Centro,Visible, Sección, Plano de vista', 'Sección, línea punteada, línea de cadena, línea visible', 'Línea plano de vista, línea visible, línea fantasma, línea de sección', '4', 'MAI'),
(524, '¿ Hace referencias al instrumento de medición utilizado en dibujo con varias ___________?.', 'Escalas', 'Acotaciones', 'Tolerancias geométricas', 'Texto', '1', 'MAI'),
(525, 'Las ____________aseguran la funcionalidad de  los productos para unir o ensamblar piezas.', 'Texto', 'Líneas', 'Tolerancias ', 'Escalas', '3', 'MAI'),
(526, 'Menciona 4 comandos ubicados en la barra de modificar', 'Cortar, mover, borrar, desplazar', 'Mover, círculo, línea, rectángulo', 'Borrar, desplazar, región, polilínea', 'b,c', '1', 'MAI'),
(527, 'Matematicamenten representan las 2 condiciones suficientes necesarias que se deben cumplir para que un objeto este en equilibrio. ', '∑F=0   ∑MA=0 ', '∑FY=0 ∑Fx=0', '∑FY=1 ∑Fx=1', '∑FY=2 ∑Fx=1', '1', 'MAI'),
(528, 'Definición de resistencia a la fatiga', 'Si las características del material, o las condiciones de operación reales para una pieza de  máquina, son distintas  de aquellas  para las que se determinó la resistencia a la fatiga.', 'Es la aplicación de de cargas variables regulares  en su amplitud.', 'Es la capacidad del material de resistir cargas de fatiga', 'Son las cargas aplicadas en forma repentina y repetida', '2', 'MAI'),
(529, 'Es la definición de Tolerancia', 'Es la variación máxima permisible en el tamaño de la parte', 'Es la diferencia real en el tamaño de las partes  que se acoplan', 'Es la diferencia  entre las dimenciones básicas de las partes que se acoplan.', 'Es el tamño aproximado decidido por el proyectista.', '1', 'MAI'),
(530, 'Menciona ¿Cuáles son los principales factores que influyen en el diseño de ejes?.', 'Las cargas que actúan sobre el eje.', 'Los momentos de Torsión y de Flexión.', 'Los pares torsores.', 'Los momentos Flectores', '2', 'MAI'),
(531, 'Menciona 2 funciones que realiza un cojinete.', 'Soportar una carga y al mismo tiempo permitir el movimiento relativo entre los elementos de una maquina.', 'Disminuir la Fricción y permitir la lubricación', 'Seder ante la carga aplicada, y no permitir la lubricación.', 'Contener la contaminación y proteger el movimiento', '1', 'MAI'),
(532, 'Definición de engranes.', 'Siempre tienen dientes rectos y paralelos al eje del árbol que lo sostiene', 'Son ruedas cilindricas dentadas, para transmitir movimiento y potencia de un eje giratorio a otro desde un eje giratorio a otro. ', 'Sus dientes forman un angulo con respecto al eje del árbol', 'Tienen dientes colocados como elementos sobre la superficie de un cono. ', '2', 'MAI'),
(533, 'La teoría del esfuerzo cortante máximo para los materiales dúctiles estipula que:', 'Predice que la falla por fluencia ocurre cuando la energía de deformación total por unidad de volumen alcanza o excede la energía de deformación por unidad de volumen correspondiente a la resistencias', 'Cuando una tira  de un  material dúctil se somete a tensión', 'La fluencia comienza cuando el esfuerzo cortante máximo en una pieza de ensayo a tensión del mismo material cuando esa pieza comienza a fluir.', 'Se supone que la falla ocurre siempre que el esfuerzo cortante octaédrico de cualquier de cualquier estado de esfuerzo es igual o mayor al esfuerzo cortante octaédrico con el cual falla la pieza de en', '3', 'MAI'),
(534, 'Concepto que se define como una idea, objeto, o práctica percibida como nueva por un individuo o individuos, que intenta introducir mejoras en relación a objetivos deseados, que tiene una fundamentación, y que se planifica, desarrolla y evalúa”', 'Tecnología', 'Investigación', 'Ciencia', 'Innovación ', '4', 'MAI'),
(535, 'Es una capacidad de carácter cognitivo afectivo que le permite a la persona organizar un proceso psicológico que lo lleve a mostrar un comportamiento nuevo u original, flexible, fluído y organizado, orientado a la búsqueda, la detección y solución de un problema”', 'indagación', 'Demostración', 'Explicacion', 'Creatividad', '4', 'MAI'),
(536, 'Memoria o escrito donde se detalla el modo y conjunto de medios necesarios para llevar a cabo una idea; especialmente el que recoge el diseño de una obra de ingeniería  o diseño.', 'Reporte', 'Proyecto', 'Resumen', 'Analisis', '2', 'MAI'),
(537, 'Documento  que contiene:Tipo de parte o componente , descripcion de equipo, resultados de pruebas, comparacion  de resultados, determina criterios de operación y aceptacion del funcionamiento', 'Plano', 'Certificado', 'Especificacion', 'Reporte tecnico', '4', 'MAI'),
(538, 'Documento  que se elabora para  resumir un  proyecto y que contiene simbologia, dimensiones, especificaciones, vistas, proyecciones, cortes , materiales, y tolerancias en un sistema propuesto  o modificado', 'Diagrama  o Plano', 'Boseto', 'Imagen', 'Especificacion', '1', 'MAI'),
(539, '¿Cuál de los siguientes no es un rol en el Equipo de desarrollo de software?', 'Analista', 'Diseñador de sistema', 'Administrador de proyecto', 'Programador', '3', 'TICMCE'),
(540, 'im34.jpg', 'A', 'B', '', '', '1', 'TICMCE'),
(541, 'im35.jpg', '1-b, 2-d, 3-c, 4-a', '1-b, 2-c, 3-d, 4-a', '1-d, 2-b, 3-c, 4-a', '1-d, 2-c, 3-b, 4-a', '3', 'TICMCE'),
(542, 'No Son modelos COCOMO:', 'Básico, Original o Simple', 'Complejo, Avanzado o Sofisticado', 'Intermedio, II, Semiacoplado', 'Detallado, Incrustado o Empotrado', '2', 'TICMCE'),
(543, 'im36.jpg', 'Modificar', 'Insertar', 'Edición', 'Control', '1', 'TICMCE'),
(544, 'im37.jpg', 'Botón', 'Clip de Película', 'Gráfico', '', '2', 'TICMCE'),
(545, 'im38.jpg', 'Cambiar de posición objetos', 'Modificar imágenes dentro del escenario', 'Iniciar - Finalizar una acción', 'Todas ellas.', '4', 'TICMCE'),
(546, 'im39.jpg', 'Modificar las opciones de la herramienta seleccionada', 'Combinar las capas del archivo .psd', 'Cambiar el Tipo, color y estilo del texto', 'Resaltar los colores del lienzo', '1', 'TICMCE'),
(547, 'im40.jpg', 'Copiar un área seleccionada y duplicarla dentro de la capa.', 'Combinar imágenes dentro del lienzo.', 'Seleccionar partes específicas de una imagen', '', '1', 'TICMCE'),
(548, 'im41.jpg', 'Ajustar el tamaño del lienzo', 'Ajustar el Tamaño de la imagen', 'Ajustar los niveles, tonos y efectos de color', 'Ninguna de las anteriores', '3', 'TICMCE'),
(549, 'im42.jpg', 'Animación', 'Composición', 'Proyecto', 'Ninguno de los anteriores', '3', 'TICMCE'),
(550, 'im43.jpg', 'Cronometro de Variación de Tiempo', 'Icono de Timido', 'Icono de capa 3D', 'Cualquiera de los anteriores', '1', 'TICMCE'),
(551, 'Los elementos del proceso de la información (en orden) son:', 'Toma de decisiones, procesamiento, y datos de entrada', 'Datos, Proceso, e Información', 'CPU, ALU y Memoria', 'Teclado, CPU, Monitor', '2', 'TICMCE'),
(552, 'En programación, la forma correcta de evaluar una expresión (aritmética, lógica, relacional) es:', 'Aplicar los operadores de izquierda a derecha', 'Evaluar primero los operadores que están entre paréntesis, y después los que primero se encuentren de izquierda a derecha.', 'Los operadores se evalúan primero teniendo en cuenta su jerarquía y de izquierda a derecha.', 'Los operadores se evalúan teniendo en cuenta su jerarquía y de izquierda a derecha. Si una expresión contiene paréntesis, se evalúa primero la expresión entre paréntesis.', '4', 'TICMCE'),
(553, 'Las etapas para la solución de problemas (en orden) son:', 'Elaborar un algoritmo, codificar, hacer pruebas al programa', 'Entender el problema, Encontrar un método de solución, Traducir el método a código de computadora, Probar y depurar', 'Encontrar un método de solución, Entender el problema, Traducir el método a código de computadora, Probar y depurar', 'Programar y hacer pruebas', '2', 'TICMCE'),
(554, 'Selecciona los operadores aritméticos ', '+ - * / %', '> >= < <= == !=', '! && ||', '=', '1', 'TICMCE'),
(555, 'Selecciona los operadores relacionales ', '+ - * / %', '> >= < <= == !=', '! && ||', '=', '2', 'TICMCE'),
(556, 'Selecciona los operadores lógicos ', '+ - * / %', '> >= < <= == !=', '! && ||', '=', '3', 'TICMCE'),
(557, 'Selecciona el operador de asignación ', '+ - * / %', '> >= < <= == !=', '! && ||', '=', '4', 'TICMCE'),
(558, '¿Qué es una variable?', 'Es un estructura de dato que puede cambiar de contenido a lo largo de la ejecución de un programa.', 'Es un estructura de dato que no puede cambiar de contenido a lo largo de la ejecución de un programa.', 'Es el tipo de dato que puede guardar una estructura de datos', 'Es el nombre de una estructura de datos', '1', 'TICMCE'),
(559, '¿Qué es una constante?', 'Es un estructura de dato que puede cambiar de contenido a lo largo de la ejecución de un programa.', 'Es un estructura de dato que no puede cambiar de contenido a lo largo de la ejecución de un programa.', 'Es el tipo de dato que puede guardar una estructura de datos', 'Es el nombre de una estructura de datos', '2', 'TICMCE'),
(560, 'Los datos tipo booleano tienen las siguientes características:', 'Representan una cantidad numérica, pueden ser enteros o flotantes y se obtienen como resultado de realizar una operación aritmética', 'Se obtienen al realizar una comparación (<, >=, etc.) o aplicar operadores lógicos y sus valores permitidos son verdadero y falso', 'Representan información textual como frases, nombres, etc., y pueden ser de tipo carácter cuando sólo se almacena una letra o de tipo cadena cuando almacenan un conjunto de caracteres, como un nombre.', 'Son un tipo de dato cuyo valor es nulo (void)', '2', 'TICMCE'),
(561, 'Los datos tipo numérico tienen las siguientes características:', 'Representan una cantidad numérica, pueden ser enteros o flotantes y se obtienen como resultado de realizar una operación aritmética', 'Se obtienen al realizar una comparación (<, >=, etc.) o aplicar operadores lógicos y sus valores permitidos son verdadero y falso', 'Representan información textual como frases, nombres, etc., y pueden ser de tipo carácter cuando sólo se almacena una letra o de tipo cadena cuando almacenan un conjunto de caracteres, como un nombre.', 'Son un tipo de dato cuyo valor es nulo (void)', '1', 'TICMCE'),
(562, 'Los datos tipo texto tienen las siguientes características:', 'Representan una cantidad numérica, pueden ser enteros o flotantes y se obtienen como resultado de realizar una operación aritmética', 'Se obtienen al realizar una comparación (<, >=, etc.) o aplicar operadores lógicos y sus valores permitidos son verdadero y falso', 'Representan información textual como frases, nombres, etc., y pueden ser de tipo carácter cuando sólo se almacena una letra o de tipo cadena cuando almacenan un conjunto de caracteres, como un nombre.', 'Son un tipo de dato cuyo valor es nulo (void)', '2', 'TICMCE'),
(563, 'En Programación, el almacenamiento de los datos se representa como una:', 'Variable', 'Arreglo', 'Constante', 'Estructura de datos', '4', 'TICMCE'),
(564, 'im44.jpg', '10', '1', '11', '0', '3', 'TICMCE'),
(565, 'im45.jpg', '55', '0', '10', '1', '2', 'TICMCE'),
(566, 'im46.jpg', '5', '30', '1<br>5<br>14<br>30', '0', '2', 'TICMCE'),
(567, 'Selecciona la instrucción correcta para expresar que una persona será contratada si es mayor de 18 años y obtuvo más de 90 en cualquiera de dos pruebas que se le aplican. ', 'contratado = edad >=18 && (prueba1 >= 90 || prueba2>= 90) ? true : false;', 'contratado = edad >=18 && prueba1 >= 90 && prueba2>= 90 ? true : false;', 'contratado = edad >=18 && (prueba1, prueba2>= 90) ? true : false;', 'contratado = edad >18 && (prueba1, prueba2>= 90) ? true : false;', '1', 'TICMCE'),
(568, '\"Suponga que w = 3, y = 8, ¿Cuál será el resultado de la ejecución de la siguiente instrucción?<br>\r\nz = y++ - ++w; \"', '12', '8', '4', '1', '3', 'TICMCE'),
(569, 'im47.jpg', '4 <br>\r\n4 <br>\r\n6 <br>\r\n6 <br>\r\n7 ', '4 <br>\r\n5 <br>\r\n6 <br>\r\n7 <br>\r\n8', '4 <br>\r\n5 <br>\r\n6 <br>\r\n6 <br>\r\n7', '4', '3', 'TICMCE'),
(570, '¿Qué realiza la siguiente instrucción? <br>\r\nz = x++ + w;\r\n', 'La instrucción está mal escrita', 'Asigna la suma de x y w a z, e incrementa el valor de x en 1 después del cálculo', 'Incrementa el valor de x en 1, y luego suma x y w y lo almacena en z', 'El resultado de x+w lo almacena en z', '2', 'TICMCE'),
(571, '¿Cuál es el error en el siguiente fragmento de código? Suponga que x, y son tipo float. <br>\r\n\r\n1. x=0.1; <br>\r\n2. while ( x < 3 ) ; { <br>\r\n3. x += 0.1; <br>\r\n4. y = 3*x; <br>\r\n5. System.out.println(y); <br>\r\n6. }', 'En la línea 2 se encuentra un ; después del while, el cual cierra el ciclo y lo convierte en un ciclo infinito al no darle oportunidad de incrementar el valor de x.', 'La línea 3 está mal escrita, debería ser: x = x + 0.1.', 'En la línea 5 se debería imprimir un mensaje de salida además del contenido de la variable y.', 'No hay errores', '1', 'TICMCE'),
(572, 'Encuentre el error de lógica del siguiente fragmento de código: <br>\r\n<br>\r\nx=0; <br>\r\nwhile (x<=3){ <br>\r\ny = 3 * x + 2; <br>\r\n}', 'y no se ha inicializado ', 'No se imprime el valor de y ', 'x no se ha inicializado', 'x no se modifica dentro del ciclo, por lo que nunca será mayor de 3, y por lo tanto, se trata de un ciclo infinito. ', '4', 'TICMCE'),
(573, 'Encuentre el error en el siguiente fragmento de código: <br><br>\r\nfinal int c = 12; <br>\r\nint x = 0; <br>\r\nx = c+1; <br>\r\nc = 9; <br>\r\nx =x + c;\r\n', 'No se puede sumar una constante con una variable', 'No se puede cambiar el valor de una constante. (c está declarado como constante con valor 12 y después se le cambia el valor a 9)', 'Una variable no puede aparecer a la izquierda y a la derecha de una asignación. ( x = x + c es la línea incorrecto)', 'La variable x no puede tomar el valor de una variable final\r\n', '2', 'TICMCE'),
(574, 'Suponga que t es boolean, x, y: int, ¿Cuál es el error en el siguiente fragmento de código?: <br><br>\r\nif ( t = true ) <br>\r\nx = 10; <br>\r\nelse <br>\r\ny =10;', 'No se escribieron las llaves {} de apertura y cierre para el if y el else ', 'x y y valen lo mismo', 'Al usar el operador = no se está comparando el contenido de t con el valor true; se está asignando.(Lo correcto es: ==)', 'No se puede comparar la variable t con el valor true', '3', 'TICMCE');
INSERT INTO `examen_especialidad` (`id_especialidad`, `pregunta`, `respuesta1`, `respuesta2`, `respuesta3`, `respuesta4`, `respuesta_correcta`, `carrera`) VALUES
(575, '¿Qué estructura de control de flujo evalúa la condición para continuar el ciclo al final del cuerpo del ciclo, haciendo que el cuerpo del ciclo se ejecute al menos una vez? ', 'while', 'do-while', 'for', 'if', '2', 'TICMCE'),
(576, 'Las partes del encabezado de un ciclo for (en el orden correcto) son:', 'condición de fin, inicialización, e incremento o decremento ', 'inicialización, condición de fin e incremento o decremento ', 'condición de fin e incremento ', 'condición', '2', 'TICMCE'),
(577, '¿Cuál será la salida para el siguiente fragmento de pseudocódigo si se supone que x=8? <br><br>\r\nSi x > 0 && x % 2 == 0 <br>\r\nx = 0 <br>\r\nx = 1 <br>\r\nImprimir(x)', '1', '8', '0', 'x', '1', 'TICMCE'),
(578, 'En una universidad, a los estudiantes se les otorga una beca si tienen un promedio igual o superior a 9, o si se encuentra inscrito al equipo de futbol o de voleibol. Seleccione cuál de las siguientes es una expresión condicional adecuada para resolver este problema:', 'Si ( promedio > 9 && futbol==true && voleibol == true) ', 'Si ( promedio >= 9 || (futbol==true && voleibol == true) ) ', 'Si ( promedio >= 9 || (futbol==true || voleibol == true) ) ', 'Si (alumno=futbol o voleibol y >9)', '2', 'TICMCE'),
(579, 'En una empresa, una persona es contratada si tiene al menos 18 años de edad y obtiene más de 85 puntos en una de dos pruebas que se le aplican. Indique cuál de las expresiones condicionales es correcta y cumple con las condiciones de este problema: ', 'edad >=18 && (calif1 > 85 || calif2 > 85)', 'edad >18 || (calif1 > 85 || calif2 > 85)', 'edad >18 || (calif1 > 85 && calif2 > 85) ', 'persona >18 y persona+de85', '1', 'TICMCE'),
(580, '¿Qué indica la siguiente expresión condicional? <br><br>\r\nx != y && y != z && x != z\r\n', 'Todos los números son negativos ', 'Los números son diferentes entre sí ', 'Todos los números son  iguales', 'x es diferente a y pero igual a z', '2', 'TICMCE'),
(581, 'Sea x un arreglo bidimensional. ¿A qué se refiere la instrucción: x[2].length ? \r\n', 'Al número de renglones (filas) que tiene x ', 'Al número de columnas que tiene el renglón 2 de x', 'A la casilla 2 del arreglo x', 'A la última casilla del renglón 2 de x', '2', 'TICMCE'),
(582, 'Observa cuidadosamente el siguiente fragmento de código, en donde x es un arreglo unidimensional: <br><br>\r\nint i ; <br>\r\nfor (i=0; i< x.length; i++){ <br>\r\nx[i] = 0; <br>\r\n} <br>\r\nSystem.out.println(\"\"El valor actual de i es: \"\" + i); <br><br>\r\n¿Cuál es el resultado de su ejecución?', 'No se puede determinar porque se desconoce el tamaño del arreglo x ', 'El valor actual de i es el numero de elementos de arreglo más 1 ', 'El programa no compila porque detecta que i está siendo usada fuera del rango donde fue declarada.Para que esto funcione, i debió haber sido declarada normalmente, no dentro del ciclo for.', 'El valor actual de i es la suma de todos los elementos del arreglo x', '2', 'TICMCE'),
(583, 'Estos métodos apoyan el principio del encapsulamiento', 'Los métodos constructores', 'Los métodos getters y setters', 'El método main', 'Ninguno de estos', '2', 'TICMCE'),
(584, 'En POO, el principio de encapsulamiento establece que: ', 'Todos los atributos de un objeto sólo se pueden modificar y accesar mediante las operaciones definidas para ese objeto', 'Todos los atributos puedan ser modificados y accesados por objetos de otras clases', 'Todos los atributos de un objeto sólo pueden ser modificados y accesados por objetos que heredan de una clase ', 'Todos los atributos de un objeto pueden ser modificados y accesados por todos los objetos', '1', 'TICMCE'),
(585, 'En la POO, una clase es: ', 'Es un tipo primitivo de datos', 'Es una estructura de control de flujo que establece la forma en que el programa puede ser trazado.', 'Es un paradigma de programación que usa los objetos en sus interacciones, para diseñar aplicaciones y programas informáticos.', 'Es un tipo definido por el usuario que describe los atributos y los métodos de los objetos que se crearán a partir de la misma', '4', 'TICMCE'),
(586, 'En la POO, un objeto es:', 'Una instancia de una clase', 'Es un tipo definido por el usuario que describe los atributos y los métodos de los objetos que se crearán a partir de la misma', 'Es un tipo definido por el usuario que describe los atributos y los métodos de los objetos que se crearán a partir de la misma', 'Es un tipo primitivo de datos', '1', 'TICMCE'),
(587, 'En la POO, las características del método constructor son: ', 'Tiene acceso privado para que sólamente la clase pueda utilizarlo y respetar así el principio de encapsulamiento ', 'Es el método que permite inicializar el objeto al momento de su creación, tiene parámetros para inicializar los atributos de las variables y regresa como resultado un objeto creado de esa clase', 'Es público para que pueda ser invocado por una aplicación, no regresa valores, por lo que no tiene tipo de método, puede o no tener parámetros, y el nombre de este método es igual al de la clase', 'Es el método principal de una clase (main)', '3', 'TICMCE'),
(588, 'En Java, este operador crea una instancia de una clase, y se utiliza en conjunto con un constructor. Además, regresa una referencia a un nuevo objeto ', 'package', '=', 'new', 'this', '3', 'TICMCE'),
(589, 'Este operador se utiliza implícitamente para hacer referencia tanto a métodos como a variables del ejemplar actual desde el interior del objeto', 'package', '=', 'new', 'this', '4', 'TICMCE'),
(590, 'El acceso a los miembros de una clase se logra empleando el operador de acceso a los miembros, el cuál es?', '=', 'new', 'this', '.', '4', 'TICMCE'),
(591, '¿A qué hace referencia el Modelo de Comercio Electrónico B2C?\r\n', 'Se basa en una transacción de negocio originada por el usuario final, siendo éste quien fija las condiciones de venta a las empresas.', 'Contrato comercial realizado a través de internet  consumidor o particular visita la dirección web de una empresa y se realiza una venta.', 'Entornos de Internet móvil para la compra de productos y servicios por el usuario', 'Servicio de empresas a empresas, generalmente es de mayorista a minorista.', '2', 'TICMCE'),
(592, '¿A qué hace referencia el Modelo de Comercio Electrónico C2B?', 'Se basa en una transacción de negocio originada por el usuario final, siendo éste quien fija las condiciones de venta a las empresas.', 'Contrato comercial realizado a través de internet  consumidor o particular visita la dirección web de una empresa y se realiza una venta.', 'Servicio de empresas a empresas, generalmente es de mayorista a minorista.', 'Entornos de Internet móvil para la compra de productos y servicios por el usuario', '1', 'TICMCE'),
(593, '¿A qué hace referencia el Modelo de Comercio Electrónico M2C?', 'Sitios de Transacciones para administraciones públicas cada vez están más presentes en internet.', 'Entornos de Internet móvil para la compra de productos y servicios por el usuario', 'Se basa en una transacción de negocio originada por el usuario final, siendo éste quien fija las condiciones de venta a las empresas.', 'Venta entre consumidores individuales\r\n', '2', 'TICMCE'),
(594, '¿A qué hace referencia el Modelo de Comercio Electrónico B2C?', 'Servicio de empresas a empresas, generalmente es de mayorista a minorista.', 'Contrato comercial realizado a través de internet  consumidor o particular visita la dirección web de una empresa y se realiza una venta.', 'Servicio de empresas a empresas, generalmente es de mayorista a minorista.', 'Se basa en una transacción de negocio originada por el usuario final, siendo éste quien fija las condiciones de venta a las empresas.', '3', 'TICMCE'),
(595, '¿A qué hace referencia el Modelo de Comercio Electrónico C2C?', 'Venta entre consumidores individuales', 'Entornos de Internet móvil para la compra de productos y servicios por el usuario', 'Servicio de empresas a empresas, generalmente es de mayorista a minorista.', 'Entornos de Internet móvil para la compra de productos y servicios por el usuario', '1', 'TICMCE'),
(596, '¿A qué hace referencia el Modelo de Comercio Electrónico G2B?', 'Venta entre consumidores individuales', 'Sitios de Transacciones para administraciones públicas cada vez están más presentes en internet.', 'Se basa en una transacción de negocio originada por el usuario final, siendo éste quien fija las condiciones de venta a las empresas.', 'Venta entre consumidores individuales\r\n', '2', 'TICMCE'),
(597, '¿A qué procesos hace referencia el E-Commerce?', 'Conectar una red de la empresa a Internet\r\n', 'Procesos para allegar a los consumidores, proveedores y socios de negocio, actividades físicas en negocios y locales considerando facturación electrónica, Ventas, Platicas, E-marketing, etc.', 'Procesos para allegar a los consumidores, proveedores y socios de negocio, actividades tales como: Ventas, Marketing, E-marketing, Órdenes de pedido, Seguimiento de cliente, Seguimiento de cliente.', 'Procesos para crear catálogos de productos para que consumidores, proveedores y socios de negocio, se acerquen a los locales a realizar su compra, considerando Ventas, Pláticas, Marketing, E-marketing', '3', 'TICMCE'),
(598, '¿Qué es  E-Business ?', 'Incluye al comercio físico, y cubre procesos internos de la Organización, Producción\r\nInventario, Desarrollo de productos, Finanzas, Recursos humanos', 'Incluye al comercio electrónico, y cubre procesos internos de la Organización, Producción\r\nInventario, Desarrollo de productos, Finanzas, Recursos humanos', 'Procesos para allegar a los consumidores, proveedores y socios de negocio, actividades tales como: Ventas, Marketing, E-marketing, Órdenes de pedido,Seguimiento de cliente.', 'Conectar una red de la empresa a Internet', '2', 'TICMCE'),
(599, 'Son lenguajes de programación del lado del Servidor.', 'Perl, PHP, JSP, JavaScript, XHTML, DHTML', 'Perl, PHP, JSP,  Pyton', 'JavaScript, XHTML, DHTML', 'HTML, JavaScript, VBScript, PHP', '2', 'TICMCE'),
(600, 'Sintaxis adecuada de ONINPUT', 'oninput=\"resultado.value=parseInt(valor1.value)+parseInt(valor2.value)', 'oninput=\"resultadoValue=parseInt(valor1.value)+parseInt(valor2.value)', 'oninput=\"resultado.value=parseInt(valor1.value)+(valor2.value)', 'Ninguna de las anteriores', '1', 'TICMCE'),
(601, '¿Cuál es la Diferencia entre  el método GET Y POST?', 'El método POST envía  los datos a la url especificada, el método GET los envía de forma que no podemos verlos en un segundo plano u ocultos al usuario.', 'El método Get envía  los datos a la url especificada en un segundo plano u ocultos al usuario. , el método POST los envía de forma que  podemos verlos.', 'El método Get envía  los datos a la url especificada, el método POST los envía de forma que no podemos verlos en un segundo plano u ocultos al usuario.', 'Ninguna de las anteriores', '3', 'TICMCE'),
(602, 'De acuerdo a la legislación del Comercio Electrónico en México y Considerando un  Sitio Web de Comercio Electrónico para la Venta de  Pasteles en todo el Estado de Tlaxcala...\r\nEstablece que el Sitio de Comercio Electrónico deberá tener toda la información clara y precisa sobre los pasteles, con todas sus  especificaciones de peso del pastel, para cuantas personas, tipo de relleno, sabor de la fruta, descripción de la crema pastelera, descripción de la decoración temática, entre otras características, incluyendo el precio del pastel.', 'Capítulo I,  ARTÍCULO 1, Fracción  II', 'Capítulo I,  ARTÍCULO 1, Fracción  IV', 'Capítulo I,  ARTÍCULO 1, Fracción  III', 'Ninguna de las anteriores', '3', 'TICMCE'),
(603, 'De acuerdo a la legislación del Comercio Electrónico en México y Considerando el Sitio Web de Comercio Electrónico para la Venta de  Pasteles en todo el Estado de Tlaxcala.\r\nSi en el Sitio Web de Pasteles se tiene la promoción de que en la compra de un Pastel de más de 6 Kilogramos hay un descuento e incluye panques gratis, esto debe cumplirse, no se debe publicar publicidad engañosa. Y existe una clausula donde establece que si el cliente desea un pastel lo debe pagar a la hora de apartarlo empleando su tarjeta correspondientes, y que si lo cancela no habrá devolución de depósito. ESTA AFIRMACIÓN ESTA VIOLANDO ¿Qué ARTÍCULO?', 'Capítulo I,  ARTÍCULO 1, Fracción VII', 'Capítulo III,  ARTÍCULO 1, Fracción VII', 'Capítulo I,  ARTÍCULO 2, Fracción VII', 'Todos los anteriores', '1', 'TICMCE'),
(604, 'De acuerdo a la legislación del Comercio Electrónico en México y Considerando el Sitio Web de Comercio Electrónico para la Venta de  Pasteles en todo el Estado de Tlaxcala. <br>\r\nEn el Sitio Web de la pastelería, se tiene prohibida la venta a personas mayores de 65 años, y existe una clausula, donde no se surten perdidos a personas con discapacidad, debido a que deben ayudar a cargar el pastel y montarlo. ESTA AFIRMACIÓN ESTA VIOLANDO ¿Qué ARTÍCULO?', 'Capítulo I,  ARTÍCULO 1, Fracción X', 'Capítulo II,  ARTÍCULO 1, Fracción X', 'Capítulo IV,  ARTÍCULO 1, Fracción XX', 'Capítulo I,  ARTÍCULO 1, Fracción IX', '1', 'TICMCE'),
(605, 'De acuerdo a la legislación del Comercio Electrónico en México y Considerando el Sitio Web de Comercio Electrónico para la Venta de  Pasteles en todo el Estado de Tlaxcala. <br>\r\nEn el Sitio Web de la pastelería, el carro de compras no tiene presentado al cliente el precio de los pasteles, en letras pequeñas indica que los gatos de envío están sujetos a cambio sin previo aviso, que e inclusive no se cuenta con garantías de calidad del producto durante el envío, no se establecen en los términos y condiciones de compra las horas de plazo para la entrega del pastel. ESTA AFIRMACIÓN ESTA VIOLANDO ¿Qué ARTÍCULO?', 'Capítulo II,  ARTÍCULO 7', 'Capítulo I,  ARTÍCULO X.', 'Capítulo IV,  ARTÍCULO XI', 'Capítulo I,  ARTÍCULO 7', '4', 'TICMCE'),
(606, 'De acuerdo a la legislación del Comercio Electrónico en México y  Considerando el Sitio Web de Comercio Electrónico para la Venta de  Pasteles en todo el Estado de Tlaxcala. <br>\r\nEl catálogo de productos contiene precios elevados al doble de la competencia… en algunos casos triplica el precio de un pastel con las mismas características….. ¿Basado a qué Artículo, podemos emitir una queja de inconformidad con la Ley de Protección al Consumidor?', 'Capítulo I ARTÍCULO 9', 'Capítulo VIII ARTÍCULO 8', 'Capítulo I ARTÍCULO 9', 'Capítulo I ARTÍCULO 8', '4', 'TICMCE'),
(607, 'De acuerdo a la legislación del Comercio Electrónico en México y  Considerando el Sitio Web de Comercio Electrónico para la Venta de  Pasteles en todo el Estado de Tlaxcala.              La pastelería cuando recibe una orden de pedido desde el sitio Web y realiza la transacción del depósito de apartado, Entrega un recibo o comprobante de la compra o apartado de determinado pastel, donde describe específicamente el producto y el servicio.\r\n¿A qué Artículo está haciendo alusión esta afirmación?', 'Capítulo III ARTÍCULO 12Capítulo III ARTÍCULO 12', 'Capítulo II ARTÍCULO 12', 'Capítulo I ARTÍCULO 12', 'Capítulo I I ARTÍCULO 14', '4', 'TICMCE'),
(608, 'De acuerdo a la legislación del Comercio Electrónico en México y  Considerando el Sitio Web de Comercio Electrónico para la Venta de  Pasteles en todo el Estado de Tlaxcala.     Cuando el Cliente realiza un apartado de Pastel desde el sitio introduce sus datos de tarjeta e inmediatamente se realiza el cargo  a su tarjeta del Monto Total del Pastel, inclusive meses antes de ser entregado, y al cliente no se le pide consentimiento para realizar el cargo. ¿Qué Artículo se está violando con esta afirmación?', 'Capítulo I ARTÍCULO 15', 'Capítulo II ARTÍCULO 15', 'Capítulo XV ARTÍCULO 1', 'Ninguna de las anteriores', '1', 'TICMCE'),
(609, 'Considerando el Sitio Web de Comercio Electrónico para la Venta de  Pasteles en todo el Estado de Tlaxcala. <br>\r\nEn la publicidad enviada a mi correo respecto a la pastelería no existe nombre, domicilio o teléfono, donde pueda emitir mi queja porque no llego el pastel acordado. ¿Qué Artículo se está violando con esta afirmación?', 'Capítulo I ARTÍCULO', 'Capítulo II ARTÍCULO 17', 'Capítulo I ARTÍCULO 17', 'Ninguna de las anteriores', '3', 'TICMCE'),
(610, '¿Cuál es el artículo que menciona las multas en caso de que exista infracción a alguno de los Artículos de la Ley de Comercio Electrónico en México?', 'Capítulo II, Artículo 25', 'Capítulo I, Artículo 25:', 'Capítulo IV, Artículo 25:', 'Capítulo II, Artículo 5', '1', 'TICMCE'),
(611, 'De acuerdo a la legislación del Comercio Electrónico en México y  Considerando el Sitio Web de Comercio Electrónico para la Venta de  Pasteles en todo el Estado de Tlaxcala.               La pastelería tiene un nuevo producto relleno de Fruta de Longkong, que tiene como lugar de origen Tailandia, y en la publicidad de este pastel se describe el origen del fruto…¿A qué Artículo está haciendo alusión esta afirmación?', 'Capítulo II ARTÍCULO 33.-', 'Capítulo III ARTÍCULO 33', 'Capítulo II ARTÍCULO 30.-', 'Ninguna de las anteriores', '2', 'TICMCE'),
(612, 'De acuerdo a la legislación del Comercio Electrónico en México y  Considerando el Sitio Web de Comercio Electrónico para la Venta de  Pasteles en todo el Estado de Tlaxcala.\r\nLa pastelería tiene como radio de envío de acuerdo a sus condiciones de compra el Estado de Tlaxcala, sin embargo tiene  sus precios y gastos de Envío en Euros, y algunas de sus descripciones con en inglés y Tailandés… ¿Qué Artículo se está violando con esta afirmación, si sólo vende en el Estado de Tlaxcala?', 'Capítulo III ARTÍCULO 34', 'Capítulo II ARTÍCULO 34', 'Capítulo III ARTÍCULO 33', 'Ninguna de las anteriores', '1', 'TICMCE'),
(613, 'De acuerdo a la legislación del Comercio Electrónico en México y  Considerando el Sitio Web de Comercio Electrónico para la Venta de  Pasteles en todo el Estado de Tlaxcala. <br>\r\nCuando se tiene ofertas en el sitio Web no se establecen las fechas de vigencia, las condiciones para obtener la oferta ni plazos para tener acceso a ella….¿Qué Artículo se está violando con esta afirmación?', 'Capítulo IV artículo 48 fracción I', 'Capítulo V artículo 48 fracción I', 'Capítulo IV artículo 45 fracción I', 'Ninguna de las anteriores', '1', 'TICMCE'),
(614, '¿Qué es un Servidor?', 'Es una computadora  que provee los datos solicitados por parte de los navegadores de otros computadoras, y comparte recursos de únicamente de Software.', 'Es un ordenador remoto que provee únicamente recursos de Hardware solicitados por parte de los navegadores de otras computadoras, cuenta con un software que facilita el acceso a la red y sus recursos.', 'Es un ordenador remoto que provee los datos solicitados por parte de los navegadores de otras computadoras, cuenta con un software que facilita el acceso a la red y sus recursos.', 'Ninguna de las anteriores', '3', 'TICMCE'),
(615, '¿Qué es un Servidor telnet?', 'Servidor que admiten al usuario a entrar en una computadora huésped vía remota.', 'Servidor intermediario entre un programa del cliente (navegador) y un servidor externo (servidor web) para filtrar peticiones.', 'Servidor que  simplificar la administración dinámica de la configuración IP', 'Ninguna de las anteriores', '1', 'TICMCE'),
(616, '¿Qué es un Servidor Proxy?', 'Servidor que  simplificar la administración dinámica de la configuración IP', 'Servidor intermediario entre un programa del cliente (navegador) y un servidor externo (servidor web) para filtrar peticiones.', 'Servidor que admiten al usuario a entrar en una computadora huésped vía remota.', 'Servidor que permiten la administración del acceso a internet en una determinada red.', '2', 'TICMCE'),
(617, '¿Qué es un Servidor DHCP?', 'Servidor que  simplificar la administración dinámica de la configuración IP', 'Servidor que permiten la administración del acceso a internet en una determinada red.', 'Servidor que admiten al usuario a entrar en una computadora huésped vía remota.', 'Ninguna de las anteriores', '1', 'TICMCE'),
(618, '¿Qué es un Servidor del acceso remoto?', 'Servidor que permiten la administración del acceso a internet en una determinada red.', 'Servidor intermediario entre un programa del cliente (navegador) y un servidor externo (servidor web) para filtrar peticiones.', 'Es una computadora  que provee los datos solicitados por parte de los navegadores de otros computadoras, y comparte recursos de únicamente de Software.', 'Es una red de computadoras', '1', 'TICMCE'),
(619, 'Son Dominios genéricos…', '.com, .net  .org  .info, .biz  .pro\r\n', '.com, .az  .net  .org  .info, .be .biz  .pro', ',mx, .es ', '.com, .net  .br .org  .info, .biz  .pro', '1', 'TICMCE'),
(620, 'Son Dominios Territoriales…', '.ch .com .co .cu .de .dz .dk .mx', '.ch .cn .co .cu .de .dz .dk .mx', '.ch .cn .co .cu .de .dz .dk .edu', 'Ninguna de las anteriores', '2', 'TICMCE'),
(621, '¿Qué diferencia hay entre un Web-Master y un Web-builder?', 'El Web Master tiene ligero conocimientos de Programación y el Web builder únicamente instala y configura plugins en instancias de CMS', 'El Web Master instala servidores y el Web builder únicamente instala y configura plugins en instancias de CMS', 'El Web Master Configura y Programa, el Builder instala y configura CMS', 'Ninguna de las anteriores', '3', 'TICMCE'),
(622, '¿Qué es BackWPup?', 'Es un plugin Contestador automático de E-Mails', 'Es un plugin que realiza un respaldo completo del sitio, tanto de la base de datos como de los directorios y ficheros, incluyendo el directorio principal de WordPress', 'Es un plugin para WordPress que sirve para enviar boletines a usuarios.', 'Es un plugin que genera respaldo unicamente de la base de datos', '2', 'TICMCE'),
(623, '¿Qué es Wysija?', 'Es un plugin para WordPress que sirve para enviar boletines a usuarios.', 'Es un plugin que genera respaldo unicamente de la base de datos', 'Es un plugin Contestador automático de E-Mails', 'Ninguna de las anteriores', '1', 'TICMCE'),
(624, '¿Qué es MailChip?', 'Es un plugin que genera respaldo unicamente de la base de datos', 'Es un plugin para WordPress que sirve para enviar boletines a usuarios.', 'Es un plugin que realiza un respaldo completo del sitio, tanto de la base de datos como de los directorios y ficheros, incluyendo el directorio principal de WordPress', 'Es un plugin Contestador automático de E-Mails', '4', 'TICMCE'),
(625, '¿Qué es un CMS?', 'Sistema de gestión de contenidos.', 'Sistema de apredizaje en línea', 'Es un tipo de Servidor', 'Ninguna de las anteriores', '1', 'TICMCE'),
(626, '¿Qué es LMS?', 'Es un plugin que genera respaldo unicamente de la base de datos', 'Es un sistema de gestión de aprendizaje online', 'Sistema de gestión de contenidos.', 'Ninguna de las anteriores', '2', 'TICMCE'),
(627, '¿Qué es LCMS?', 'Es un sistema que permite crear y gestionar material pedagógico', 'Sistema de gestión de contenidos.', 'Es un sistema de gestión de aprendizaje online', 'Ninguna de las anteriores', '1', 'TICMCE'),
(628, 'SON FRAMEWORK gratuitos para emplear en la Web', 'Ruby on Rails, Django, CodeIgniter, Zend, WordPress', 'DRUPAL, Django, CodeIgniter, Zend, WordPress', 'Ruby on Rails, Django, CodeIgniter, Zend, CakePHP', 'Ninguna de las anteriores', '3', 'TICMCE'),
(629, 'Es la definición de base de datos', 'Colección de datos interrelacionados y estructurados', 'Estructura que puede o no tener datos', 'Una tabla que contiene datos ordenados ', 'Estructuras de datos que almacenan datos de cualquier tipo', '1', 'TICMCE'),
(630, 'Es un SGBD', 'Sistema Gubernamental de Bases de Datos: Conjunto de programas, que suministra a los usuarios los medios necesarios para describir, recuperar y manipular los datos almacenados.', 'Sistema Gestor de Bases de Datos: Conjunto de datos, que suministra a los usuarios los medios necesarios para describir, recuperar y manipular los datos almacenados', 'Sistema Gestor de Bases de Datos: Conjunto de programas, que suministra a los usuarios los medios necesarios para describir, recuperar y manipular los datos almacenados', 'Sistema Gubernamental de Bases de Datos: Conjunto de datos, que suministra a los usuarios los medios necesarios para describir, recuperar y manipular los datos almacenados', '3', 'TICMCE'),
(631, 'Componentes principales de la base de datos', 'Datos, atributos, campos y registros ', 'Tupla, registro, tabla, campo y registro ', 'Registros, campos, atributos, tuplas', 'Ninguna de las anteriores', '1', 'TICMCE'),
(632, 'Es el proceso de fase conceptual en la elaboración de una base de datos', 'En esta fase se obtiene una estructura de la información de la futura BD independiente de la tecnología que hay que emplear. No se tiene en cuenta todavía qué tipo de base de datos se utilizará', 'Considerando el Gestor de la Base de Datos se busca analizar la estructura que debe tener la base de datos', 'A partir de un modelo de la base de datos se inicia con el análisis de requerimientos', 'Se inicia con un análisis de requerimientos considerando la tecnología a implementar', '1', 'TICMCE'),
(633, 'Son consideradas las etapas de diseño de una base de datos (verifique el orden correspondiente)', '1.	Lógico, <br>\r\n2.	Conceptual <br>\r\n3.	Físico', '1.	Físico <br>\r\n2.	Lógico <br>\r\n3.	Conceptual \r\n', '1.	Conceptual <br>\r\n2.	Lógico <br>\r\n3.	Físico', '1.	Lógico <br>\r\n2.	Físico <br>\r\n3.	Conceptual', '3', 'TICMCE'),
(634, 'Cuál es la justificación del uso del modelo ER', 'Está basado en una percepción del mundo real que consta de una colección de objetos básicos, llamados entidades, y de relaciones entre esos objetos', 'Es una forma de modelar un conjunto de datos que queremos guardar', 'Es para representar las entidades (datos) y el modo en que interactúan', 'Basado en una percepción donde almacenamos entidades (datos) y las relaciones que hay entre estos', '1', 'TICMCE'),
(635, 'Definición de atributo ', 'Características que permiten describir a una entidad', 'Dato que debe tener la tabla que almacena la información', 'Dato que describen a las características que tiene un objeto ', 'Características que describen a los campos de una tabla ', '1', 'TICMCE'),
(636, 'Diferencia entre clave principal y clave foránea', 'Una clave principal es un campo único mientras que la clave foránea indica como esta relacionadas las tablas', 'Ambas son únicas y jamás se deben repetir pero la clave foránea hace referencia a la clave primaria', 'La clave foránea es una clave que se relaciona con una clave principal la cual puede repetirse las veces necesarias', 'Una clave principal es un campo cualquiera que se almacena en una tabla mientras que la clave foránea indica como esta relacionadas las tablas', '1', 'TICMCE'),
(637, 'La relación de cardinalidad…', 'especifica si uno o varios artículos de configuración pueden estar en la clasificación de origen y la clasificación de destino', 'Establece la correspondencia entre atributos', 'Establece que varios registros de origen pueden aparecer en varios registros destino', 'Establece que solo un registro de origen pueden aparecer en varios registros destino', '1', 'TICMCE'),
(638, 'Ordena los pasos para elaborar un diagrama ER', '1.Identificar las entidades <br>\r\n2. Describir los atributos de las entidades <br>\r\n3. Determinar las claves primarias <br>\r\n4.Establecer relaciones entre las entidades <br>\r\n5.Dibujar el modelo de da', '1.Identificar las entidades<br>2.Establecer relaciones entre las entidades<br>3.Describir los atributos de las entidades<br>4.Determinar las claves primarias<br>5.Dibujar el modelo de datos', '1.Identificar las entidades<br>2.Determinar las claves primarias<br>3.Describir los atributos de las entidades<br>4.Establecer relaciones entre las entidades<br>5.Dibujar el modelo de datos<br>', '1.Identificar las entidades<br>2.Determinar las claves primarias<br>3.Describir los atributos de las entidades<br>4.Establecer relaciones entre las entidades<br>5.Dibujar el modelo de datos<br>', '3', 'TICMCE'),
(639, 'Corresponde a la definición de LDD', 'Lenguaje de Definición de Datos: proporcionado por el SGBD que permite a los usuarios de la misma llevar a cabo las tareas de definición de las estructuras que almacenarán los datos', 'Lenguaje de Definición de Datos: proporcionado por el SGBD que permite a los usuarios llevar a cabo las tareas de manipulación de los datos', 'Lenguaje de Definición de Datos:  en el cual podemos definir cómo se deben insertar los datos en las tablas', 'Lenguaje de Definición de Datos del SGBD que permite realizar operaciones sobre los datos de las tablas', '1', 'TICMCE'),
(640, 'Cuál de las siguientes instrucciones de mysql no generará ningún tipo de error al ser ejecutada', 'drop database datos;', 'describe databases MIBD;', 'Select * form MIBD', 'delete databases Ejemplo;', '1', 'TICMCE'),
(641, 'Instrucciones mysql que me permitirá generar una tabla llamada agenda', 'create tables agenda(id_persona text, nombre text, edad int);', 'create tables agenda(id_persona int, nombre text, edad int);', 'create table agenda(id_persona int, nombre text, edad int);', 'create table agenda(id_persona text, nombre text, edad int);', '3', 'TICMCE'),
(642, 'Al ejecutar en el servidor de mysql: \r\n<br> \r\nalter table Persona drop Edad;\r\n<br>\r\nSe obtiene como resultado…\r\n', 'Se elimina la columna Edad de la tabla Persona', 'Se elimina la fila Edad de la tabla Persona', 'Se inserta una columna en la tabla Persona', 'Se inserta una fila en la tabla Persona', '1', 'TICMCE');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `examen_gerenciales`
--

CREATE TABLE `examen_gerenciales` (
  `id_gerenciales` int(11) NOT NULL,
  `pregunta` text NOT NULL,
  `respuesta1` varchar(200) NOT NULL,
  `respuesta2` varchar(200) NOT NULL,
  `respuesta3` varchar(200) NOT NULL,
  `respuesta4` varchar(200) NOT NULL,
  `respuesta_correcta` varchar(50) NOT NULL,
  `carrera` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `examen_gerenciales`
--

INSERT INTO `examen_gerenciales` (`id_gerenciales`, `pregunta`, `respuesta1`, `respuesta2`, `respuesta3`, `respuesta4`, `respuesta_correcta`, `carrera`) VALUES
(7, 'Liderazgo que consiste en la capacidad de dirigir e influir en los comportamientos de los componentes de la empresa, integrándolos dentro de ella, para conseguir unos objetivos comunes que son los objetivos de la empresa o negocio.', 'Liderazgo empresarial', 'Liderazgo carismático', 'Liderazgo lateral', 'Liderazgo autocrático', '1', ''),
(8, 'Es el tipo de líder que ordena y espera que se hagan caso a sus órdenes. Es positivo y dogmático, dirige mediante la capacidad de ofrecer recompensas o castigos o retenerlas, son los principales métodos en que se basa para esperar obediencia.', 'Liderazgo carismático', 'Liderazgo empresarial', 'Liderazgo autocrático', 'Liderazgo lateral', '3', ''),
(9, 'Este líder   hace y deja hacer, tiene un papel totalmente pasivo, ya que los trabajadores o el grupo son los  que tienen el poder. Los trabajadores tienen independencia operativa y de toma de decisiones, ya que los líderes dependen de los trabajadores para establecer objetivos, trabajadores que pueden tomar las decisiones importantes. No juzga ni valora las aportaciones de sus trabajadores ya que cuentan con libertad total, con apoyo del líder sólo si lo piden.', 'Liderazgo empresarial', 'Liderazgo carismático', 'Liderazgo autocrático', 'Liderazgo laissez faire', '4', ''),
(10, 'Este tipo de  líder  toma decisiones consultando con los subordinados, de manera que las decisiones y acciones son consultadas fomentando la participación de los trabajadores.', 'Liderazgo democrático', 'Liderazgo empresarial', 'Liderazgo autocrático', 'Liderazgo carismático', '1', ''),
(11, 'Es aquel líder que tiene la capacidad de generar entusiasmo en los trabajadores, es elegido por la forma en que da entusiasmo a las otras personas, destaca por su capacidad de seducción y admiración. Puede dar muy buenos resultados a la empresa así como cambios y resultados en la empresa ya que es capaz de hacer que los trabajadores den lo máximo de sí. Son visionarios e inspiradores, tienden a hacer buen uso de la comunicación no verbal y estimular a los trabajadores. El grupo se reúne en torno al líder por su gran capacidad de comunicación y su carisma.', 'Liderazgo lateral', 'Liderazgo democrático ', 'Liderazgo carismático', 'Liderazgo empresarial', '3', ''),
(12, 'Es el proceso mediante el cual dos o más partes interdependientes hacen tratos con objeto de conciliar sus diferencias.', 'Conciliación\r\n', 'Diálogo\r\n', 'Información\r\n', 'Negociación\r\n', '4', ''),
(13, 'En la medida en que una de las partes  sepa de las fortalezas y debilidades del contrario, así como del objetivo de la negociación y del entorno en que se genera, tendrá mayores posibilidades de realizar una buena negociación.\r\n', 'Conciliación\r\n', 'Diálogo\r\n', 'Información\r\n', 'Negociación\r\n', '3', ''),
(14, 'Describe la limitación de la racionalidad y pone de manifiesto los procesos de toma de decisiones frecuentemente utilizados por personas y equipos. \r\n', 'Modelo Racional\r\n', 'Modelo Político para la toma de dicisiones\r\n', 'Modelo de Racionalidad limitada\r\n', 'Ninguna de las anteriores\r\n', '3', ''),
(15, 'Describe la toma de decisiones de las personas para satisfacer sus propios intereses. Las preferencias basadas en metas personales egoístas rara vez cambian conforme se adquiere nueva información. \r\n', 'Modelo de Racionalidad limitada\r\n', 'Modelo Político para la toma de dicisiones\r\n', 'Modelo Racional\r\n', 'Ninguna de las anteriores\r\n', '2', ''),
(16, 'Persigue la constitución de un proceso de elección entre alternativas para maximizar los beneficios de la organización. Incluye una amplia definición del problema, una exhaustiva recopilación y el análisis de los datos, así como una cuidadosa evaluación de las alternativas. \r\n', 'Modelo Político para la toma de dicisiones\r\n', 'Modelo Racional\r\n', 'Modelo de Racionalidad limitada\r\n', 'Ninguna de las anteriores\r\n', '2', ''),
(17, 'Inspira a los demás para trabajar arduamente para el logro de tareas  importantes.\r\n', 'Liderazgo\r\n', 'Autoconcepto\r\n', 'Autoestima\r\n', 'Empowerment\r\n', '1', ''),
(18, 'Se refiere a que los empleados, administradores o equipos de todos los niveles de la organización tienen el poder para tomar decisiones sin tener que requerir la autorización de sus superiores.\r\n', 'Empowerment\r\n', 'Autoconcepto\r\n', 'Autoestima\r\n', 'Liderazgo\r\n', '1', ''),
(19, 'Es un requisito indispensable para unas relaciones interpersonales sanas donde está relacionada con otras variables psicológicas como lo son el locus de control y la expectativa de autoeficacia\r\n', 'Autoestima\r\n', 'Autoconcepto\r\n', 'Empowerment\r\n', 'Liderazgo\r\n', '1', ''),
(20, 'Es la parte que indica tener una buena autoestima siendo conscientes de nuestras virtudes y nuestros defectos\r\n', 'Autoestima\r\n', 'Autoconcepto\r\n', 'Empowerment\r\n', 'Liderazgo\r\n', '2', ''),
(21, 'Es un concepto que las personas generan así como de lo que los demás dicen pensar de nosotros\r\n', 'Autoconcepto\r\n', 'Heteroconcepto\r\n', 'Autoestima\r\n', ' Ninguna de las anteriores\r\n', '2', ''),
(22, 'Es el principal factor mediante el cual la persona logra fortalecer su autoestima\r\n', 'Factor familiar \r\n', 'Liderazgo\r\n', 'Aprender a comunicar sus sentimientos\r\n', 'Ninguna de las anteriores\r\n', '1', ''),
(23, 'Es una característica de como sanar la autoestima de una herida de la infancia\r\n', 'Realizar las acciones y elecciones sin temor y con responsabilidad\r\n', 'Tener confianza en resolver cualquier situación\r\n', 'Aprender a comunicar sus sentimientos\r\n', 'Todas las anteriores\r\n', '4', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `examen_lenguas`
--

CREATE TABLE `examen_lenguas` (
  `id_lenguas` int(11) NOT NULL,
  `pregunta` text NOT NULL,
  `respuesta1` varchar(200) NOT NULL,
  `respuesta2` varchar(200) NOT NULL,
  `respuesta3` varchar(200) NOT NULL,
  `respuesta4` varchar(200) NOT NULL,
  `respuesta_correcta` varchar(50) NOT NULL,
  `carrera` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `examen_lenguas`
--

INSERT INTO `examen_lenguas` (`id_lenguas`, `pregunta`, `respuesta1`, `respuesta2`, `respuesta3`, `respuesta4`, `respuesta_correcta`, `carrera`) VALUES
(20, 'Read the sentences and choose the correct option (s) to complete them.                           Of the (1,281) ____________ pages in the Bible, there are (993)_______pages in the Old ', 'Two hundred eigthy one./ Nine hundred ninety three. ', 'One hundred two thousand eighty one. /  Nine hundred ninety three.', 'One thousand  two hundred eigthy one./ Nine hundred ninety ', '', '3', ''),
(21, 'Read the sentences and choose the correct option (s) to complete them.                       Hello! My name________ Jack, and this ________ Sue. She_______ my sister. Sue_________twelve years old and I_________sixteen. \r\nWe _______ adults. We ________ students. \r\nWe ________Canadians. We ________ Americans. We ________from Chicago. Chicago in the United States.', 'Are, don\'t, isn\'t, she, my,aren\'t, isn´t, arent, is', ' Is, is, is, is, am, aren\'t, are, aren\'t, are, are,is', ' Am, is, are, are,aren\'t, is, isn\'t are, is', '', '2', ''),
(24, 'im01.jpg', 'No, they aren\'t./ It\'s a cellphone', 'Yes it are./ It\'s a television', ' No, it isn\'t./ is a televsion. ', '', '3', ''),
(25, 'im02.jpg', 'It\'s five past three.', 'It\'s five past  four.', ' It\'s five to four.', '', '3', ''),
(26, 'im03.jpg', 'It\'s five past three.', 'It\'s five past  four.', ' It\'s five to four.', '', '3', ''),
(27, 'Read the sentence and choose the correct option to complete it.                           ___________ you ____________ mineral water? (to drink)', 'Does/ drink ', 'Do/ to drink ', 'Do/ drink', '', '3', ''),
(28, 'Read the sentence and choose the correct option to complete it.                                                ______ Sara and Linda _____________ their pets? ( to feed)', ' Do/ to feed ', 'Does/ feed ', 'Does/ to feed ', '', '2', ''),
(29, 'Read the sentence and choose the correct option to complete it.                                       What is your mother doing now?_____________', 'She is do housework.', 'She’s doing housework.', 'She\'s housework.', 'She doing housework.', '2', ''),
(30, 'Read the sentence and choose the correct option to complete it.                                                     The nurse _________ in a big hospital last year', 'did not work', 'did not worked', 'is working', 'was not work', '1', ''),
(31, 'im04.jpg', 'T', 'F', '', '', '2', ''),
(32, 'im05.jpg', 'T', 'F', '', '', '1', ''),
(33, 'im06.jpg\r\n', 'T', 'F', '', '', '1', ''),
(34, 'im07.jpg\r\n', 'T', 'F', '', '', '2', ''),
(35, 'Read the sentence and choose the correct option to complete it.                                                         I am ________ home after school.\r\n', 'taking', 'going', 'playing', 'having', '2', ''),
(36, 'Read the sentence and choose the correct option to complete it.                                           ___________ I open the window?\r\n', 'would', 'have to', 'may', 'should', '3', ''),
(37, 'Read the sentence and choose the correct option to complete it.                                   When Peter arrived I________ a programme about deserts.\r\n', 'were watching', 'was watching', 'watch ', 'watched', '2', ''),
(38, 'Read the conversation and choose the correct option to complete it.                                                       A: Are you ready to order?                                                B: Yes, I ______________ the salmon with steamed vegetables, please.\r\n', 'going have', 'am going to have', 'am going have', '  \'ll have', '4', ''),
(39, 'Read the sentence and choose the correct option to complete it.                                                  When did Victoria become one of the Spice Girls?\r\n', 'When she saw a magazine', 'In 1993', 'When she was an artist in the college', 'When she published an ad in a magazine', '2', ''),
(40, 'Read the sentence and choose the correct option to complete it.                                                  When did Victoria meet her husband?\r\n', 'When she was a manager', 'In 1997', 'When she worked as a footbal player', 'During a soccer game', '2', ''),
(41, 'Read the sentences and choose the correct option                                                               Tom is ______ student than Mary. \r\n', 'good', 'bad', ' better', 'best', '3', ''),
(42, 'Read the sentence and choose the correct option to complete it.                                                  Helen is ______ than Robert.\r\n', 'happier', 'happy', 'the happiest ', 'more happy ', '1', ''),
(43, 'Read the sentence and choose the correct option to complete it.                                                 _____   ________ desert of all is the Sahara and it\'s in Africa.\r\n', ' The hottest', ' hotter', ' hot', ' cold', '1', ''),
(44, 'Read the sentence and choose the correct option to complete it.                                                   That is the _______   ________  sofa in our house. \r\n', ' more comfortable', 'comfortable ', 'most comfortable ', ' uncomfortable', '3', ''),
(45, 'Read the sentence and choose the correct option to complete it.                                                         I ________ go to the beach every day.\r\n', 'use to ', 'uses to', 'used to', 'use', '3', ''),
(46, 'Read the sentence and choose the correct option to complete it.                                                     Ted used to _______ my best friend, but he lives in Canada now.  \r\n', 'is', 'be', 'are', 'being', '2', ''),
(47, 'Read the sentence and choose the correct option to complete it.                                                  When you heat water,_____________________.\r\n', ' it boils.', ' it\'s boiling.', 'boils the water.', 'it was boil. ', '1', ''),
(48, 'Read the sentence and choose the correct option to complete it.                                                      What do you do__________________________?\r\n', ' if the teacher was sick?', ' if the teacher had been sick?', ' if the teacher will be sick?', ' if the teacher is sick? ', '4', ''),
(49, ' Read the sentence and choose the correct option to complete it.                                                         If Tom __________ to class, he would learn more.\r\n', ' go', 'goes', 'have went', ' went', '4', ''),
(50, 'Read the sentence and choose the correct option to complete it.                                                        If he were older, he __________ vote.\r\n', ' will', ' could', ' can', 'will be able to ', '2', ''),
(51, 'Which option is correct?\r\n', ' If I finish my homework, I will go to the party.', ' If I finished my homework, I will go to the party.', ' If I have finished my homework, I will go to the party.', ' If I would have finished my homework, I will go to the party.', '1', ''),
(52, 'Which option is correct?\r\n', ' He plays hockey if he has time tomorrow.', ' He would have played hockey if he has time tomorrow', ' He played hockey if he had time.', ' He is going to play hockey if he has time tomorrow.', '4', ''),
(53, 'Se define como el proceso para la transmisión de mensajes, ideas o emociones mediante signos comunes entre el emisor y receptor; con una reacción o efecto determinado. \r\n', 'Contexto\r\n', 'Conversación\r\n', 'Finalidad\r\n', 'Comunicación\r\n', '3', ''),
(54, 'Los adjetivos, para convertirlos en adverbio, se les agrega la terminación –mente y se respeta la acentuación de la palabra base. Del siguiente grupo de palabras, indica cuál adverbio no respeta la acentuación de la palabra base.\r\n', 'Útilmente\r\n', 'Profundamente\r\n', 'Sutilmente\r\n', 'Tragicamente\r\n', '4', ''),
(55, 'Todos los sustantivos terminados en –azgo, se escriben con z, excepto:\r\n', 'a)    Noviazgo\r\n', 'b)    Cacicazgo\r\n', 'c)    Razgo\r\n', 'd)    Hallazgo\r\n', '3', ''),
(56, 'Documento técnico que se refiere a  producir determinados bienes o servicios capaces de satisfacer necesidades o resolver problemas, dentro de los límites de un presupuesto y de un periodo dado.\r\n', 'Ensayo\r\n', 'Proyecto\r\n', 'Informe final del proyecto\r\n', 'Reporte de actividades\r\n', '2', ''),
(57, 'Texto que tiene la finalidad de dar a conocer las actividades realizadas por su autor o autores desde su inicio hasta su finalización para cumplir el objetivo  planteado y/o realizar el prototipo, explica los métodos empleados, da a conocer la información relevante de la investigación, los problemas enfrentados durante su realización y sus soluciones\r\n', 'Ensayo\r\n', 'Proyecto\r\n', 'Informe final del proyecto\r\n', 'Estudio de mercado\r\n', '3', ''),
(58, 'im08.jpg', '(1) Indicio, (2) Ícono, (3) Símbolo\r\n', '(1) Símbolo, (2) Ícono, (3) Indicio\r\n', '(1) Símbolo, (2) Indicio, (3) Ícono\r\n', '1) Ícono, (2) Símbolo, (3) Indicio\r\n', '2', ''),
(59, 'im09.jpg', 'Controlar y entretener\r\n', 'Informar y persuadir \r\n', 'Improvisar y entretener\r\n', 'Expresar sentimientos y motivar\r\n', '2', ''),
(60, 'im10.jpg', 'Ah /¿   ? / adquicición / tecnícos /,     , / ¿     ? \r\n', 'Ha /  “    “ / adquisision /  técnicos / ,     , / “    “\r\n', 'A  /,     , /  adquisición / técnicos /  “    “ / ¿     ?\r\n', '', '3', ''),
(61, 'im11.jpg', 'A', 'B', 'C', 'D', '3', ''),
(62, 'im12.jpg', 'A', 'B', 'C', '', '2', ''),
(63, 'im13.jpg', 'A', 'B', 'C', '', '1', ''),
(64, 'im14.jpg', 'A', 'B', 'C', '', '2', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exaniceneval`
--

CREATE TABLE `exaniceneval` (
  `id` int(11) NOT NULL,
  `question_name` text CHARACTER SET utf8 NOT NULL,
  `answer1` varchar(250) CHARACTER SET utf8 NOT NULL,
  `answer2` varchar(250) CHARACTER SET utf8 NOT NULL,
  `answer3` varchar(250) CHARACTER SET utf8 NOT NULL,
  `answer4` varchar(250) CHARACTER SET utf8 NOT NULL,
  `answer` varchar(250) CHARACTER SET utf8 NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exaniinterno`
--

CREATE TABLE `exaniinterno` (
  `id_exani` int(11) NOT NULL,
  `pregunta` text NOT NULL,
  `respuesta1` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `respuesta2` varchar(250) NOT NULL,
  `respuesta3` varchar(250) NOT NULL,
  `respuesta4` varchar(45) NOT NULL,
  `respuesta_correcta` varchar(250) NOT NULL,
  `categoria` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `exaniinterno`
--

INSERT INTO `exaniinterno` (`id_exani`, `pregunta`, `respuesta1`, `respuesta2`, `respuesta3`, `respuesta4`, `respuesta_correcta`, `categoria`) VALUES
(1, 'El promedio de 6 números es 4.5 ¿Cuál es la suma de los números?', '27', '45', '24', '30', '1', 0),
(2, 'Si x = 2/5 + 5/2, entonces 1/x es igual a:', '7/10', '10/29', '10/7', '29/10', '2', 0),
(3, 'Un pastel se divide en 12 partes iguales, pero se reparten en forma desigual: Carlos se lleva un tercio del pastel; Andrea se lleva un cuarto del pastel y Diana toma un sexto del pastel. ¿Cuántos trozos le quedaron a Andrés?', '3', '9', '4', '1', '1', 0),
(4, 'En una cubeta se depositan 6L de agua, lo cual corresponde a 2/5 del volumen de la cubeta. ¿Cuál es el volumen de la cubeta, en litros?', '12/5', '12', '32/5', '15', '4', 0),
(5, 'El peso de 180 bultos de cemento es de 9,000 kg ¿Cuál es el peso total si se retira 15% de los bultos?', '1,350', '2,700', '7,650', '8,820', '3', 0),
(6, 'Si 7 rosas cuestan $392, ¿Cuánto costará 5 1/2 docenas de rosas?', '3,360', '3,528', '3,696', '4,032', '3', 0),
(7, '07.png', 'A', 'B', 'C', 'D', '1', 0),
(8, '08.png', 'A', 'B', 'C', 'D', '1', 0),
(9, '09.png', 'A', 'B', 'C', 'D', '1', 0),
(10, '10.png', 'A', 'B', 'C', 'D', '1', 0),
(11, '11.png', 'A', 'B', 'C', 'D', '3', 0),
(12, '¿Cuál es el valor de x, si 2 + (3/2)x = 7?', '18/3', '15/2', '-10/3', '10/3', '4', 0),
(13, '¿Cuál es el número tal que el cuadrado de su mitad es igual al mismo número con sus dígitos en orden inverso?', '13', '11', '18', '24', '3', 0),
(14, '14.png', 'A', 'B', 'C', 'D', '1', 0),
(15, '15.png', 'A', 'B', 'C', 'D', '1', 0),
(16, '16.png', 'A', 'B', 'C', 'D', '3', 0),
(17, '17.png', 'A', 'B', 'C', 'D', '3', 0),
(18, 'En una caja se encuentran 25 tarjetas de memoria. Si 2 tarjetas están dañadas, ¿Cuál es la probabilidad de sacar una tarjeta defectuosa?', '1/2', '2/23', '1/25', '2/25', '4', 0),
(19, 'Si en un recipiente tenemos 6 canicas rojas, 4 blancas y 5 azules, ¿Cuál es la probabilidad de que al extraer una con los ojos cerrados, esta sea blanca?', '2/5', '4/15', '1/3', '3/5', '2', 0),
(20, 'En una línea de autobuses, el costo del pasaje de lujo lo obtenemos de tomar 2/15 partes del triple del pasaje económico. Si el pasaje económico cuesta n, ¿Cuál es el costo del pasaje de lujo?', '(2/15)n', '(3/15)n', '(3/5)n', '(2/5)n', '4', 0),
(21, '¿Cuáles son las coordenadas del punto R, donde la recta 3x - y - 9 = 0 intersecta a la recta 2x + 3y + 5 = 0?', '(-2, -15)', '(2, 3)', '(2, -3)', '(-2, 15)', '3', 0),
(22, 'Si el código siguiente <span style=\'font-size:1.3em\'>¡Zkdqsz!</span> Quiere decir alerta ¿Cómo se escribe <span style=\'font-size:1.3em\'>error</span> ?', 'Dqqnq', 'Dqqpq', 'Fssps', 'Fssqs', '2', 0),
(23, '23.png', 'A', 'B', 'C', 'D', '1', 0),
(24, 'Pediatra es a niño como...', 'clínica a pacientes', 'geriatra a ancianos', 'dermatólogo a piel', 'mujeres a ginecólogo', '2', 0),
(25, 'Complete el silogismo. </br> __ Todos los libros son libros de referencia. </br> __ Ningún libro de referencia es enciclopedia. </br> __ Entonces...', 'ningún libro es enciclopedia', 'todos los libros son enciclopedias', 'ningún libro no es enciclopedia', 'no todos los libros son enciclopedias', '4', 0),
(26, 'Elija las letras del código que completen la frase: la ociosidad es la madre de todos los vicios. </br>. . . .    \nYñ cpvcgvqñq rg yñ znqfr qr hcqcg ycg...', 'iuoubf', 'kwqvdh', 'jvpvch', 'jvpvcg', '4', 0),
(27, 'Una pelota se deja caer desde una altura de 30m. Al primer rebote alcanza una altura 3/4 veces de la altura total, al segundo rebote alcanza una altura 3/4 veces la altura del primer rebote, y así sucesivamente. ¿Qué altura alcanza la pelota al cuarto rebote?', '26.66m', '22.50m', '16.87m', '9.49m', '4', 0),
(28, 'Son números que siguen una secuencia, excepto:</br></br>.   .   .   .   3, 4, 6, 9, 14...', '4', '6', '9', '14', '4', 0),
(29, '29.png', 'A', 'B', 'C', 'D', '3', 0),
(30, '30.png', 'A', 'B', 'C', 'D', '4', 0),
(31, '31.png', 'A', 'B', 'C', 'D', '3', 0),
(32, '32.png', 'A', 'B', 'C', 'D', '4', 0),
(33, '¿Cuál número rompe con el patrón de la serie?</br></br>.   .   .   .   .-100, 200, 100, 400, 500, 600', '-100', '100', '500', '600', '1', 0),
(34, '34.png', 'A', 'B', 'C', 'D', '3', 0),
(35, '35.png', 'A', 'B', 'C', 'D', '4', 0),
(36, '36.png', 'A', 'B', 'C', 'D', '2', 0),
(37, '37.png', 'A', 'B', 'C', 'D', '4', 0),
(38, '38.png', 'A', 'B', 'C', 'D', '3', 0),
(39, '39.png', 'A', 'B', 'C', 'D', '4', 0),
(40, '¿Cuántos lados tiene una figura volumétrica con una base cuadrada y lados triangulares del mismo tamaño?', '2', '3', '4', '5', '4', 0),
(41, '41.png', 'A', 'B', 'C', 'D', '3', 0),
(42, '42.png', 'A', 'B', 'C', 'D', '4', 0),
(43, '43.png', 'A', 'B', 'C', 'D', '3', 0),
(44, '44.png', 'A', 'B', 'C', 'D', '3', 0),
(45, '45.png', 'A', 'B', 'C', 'D', '2', 0),
(46, '46.png', 'A', 'B', 'C', 'D', '3', 0),
(47, 'Con aplausos, el público pidió al cantante que ___________ nuevamente al escenario.', 'salga', 'salía', 'saldría', 'saliese', '4', 0),
(48, 'Es un antónimo de <span style=\'font-size:1.3em\'> lánguido </span>', 'Dañado', 'Licencioso', 'Complaciente', 'Vigoroso', '4', 0),
(49, '49.png', 'A', 'B', 'C', 'D', '1', 0),
(50, '50.png', 'A', 'B', 'C', 'D', '1', 0),
(51, '51.png', 'A', 'B', 'C', 'D', '1', 0),
(52, '52.png', 'A', 'B', 'C', 'D', '1', 0),
(53, '53.png', 'A', 'B', 'C', 'D', '1', 0),
(54, '54.png', 'A', 'B', 'C', 'D', '1', 0),
(55, '55.png', 'A', 'B', 'C', 'D', '2', 0),
(56, '56.png', 'A', 'B', 'C', 'D', '2', 0),
(57, '57.png', 'A', 'B', 'C', 'D', '2', 0),
(58, '58.png', 'A', 'B', 'C', 'D', '3', 0),
(59, '59.png', 'A', 'B', 'C', 'D', '2', 0),
(60, '60.png', 'A', 'B', 'C', 'D', '4', 0),
(61, '61.png', 'A', 'B', 'C', 'D', '2', 0),
(62, '62.png', 'A', 'B', 'C', 'D', '2', 0),
(63, '63.png', 'A', 'B', 'C', 'D', '4', 0),
(64, '64.png', 'A', 'B', 'C', 'D', '4', 0),
(65, '65.png', 'A', 'B', 'C', 'D', '2', 0),
(66, '66.png', 'A', 'B', 'C', 'D', '2', 0),
(67, '67.png', 'A', 'B', 'C', 'D', '4', 0),
(68, '68.png', 'A', 'B', 'C', 'D', '2', 0),
(69, '69.png', 'A', 'B', 'C', 'D', '1', 0),
(70, '70.png', 'A', 'B', 'C', 'D', '2', 0),
(71, '71.png', 'A', 'B', 'C', 'D', '4', 0),
(72, '72.png', 'A', 'B', 'C', 'D', '3', 0),
(73, '73.png', 'A', 'B', 'C', 'D', '2', 0),
(74, '74.png', 'A', 'B', 'C', 'D', '3', 0),
(75, '75.png', 'A', 'B', 'C', 'D', '2', 0),
(76, '76.png', 'A', 'B', 'C', 'D', '2', 0),
(77, '77.png', 'A', 'B', 'C', 'D', '2', 0),
(78, '78.png', 'A', 'B', 'C', 'D', '4', 0),
(79, '79.png', 'A', 'B', 'C', 'D', '1', 0),
(80, '80.png', 'A', 'B', 'C', 'D', '4', 0),
(81, '81.png', 'A', 'B', 'C', 'D', '4', 0),
(82, '82.png', 'A', 'B', 'C', 'D', '4', 0),
(83, '83.png', 'A', 'B', 'C', 'D', '1', 0),
(84, '84.png', 'A', 'B', 'C', 'D', '4', 0),
(85, '85.png', 'A', 'B', 'C', 'D', '4', 0),
(86, '86.png', 'A', 'B', 'C', 'D', '3', 0),
(87, '87.png', 'A', 'B', 'C', 'D', '1', 0),
(88, '88.png', 'A', 'B', 'C', 'D', '3', 0),
(89, '89.png', 'A', 'B', 'C', 'D', '4', 0),
(90, '90.png', 'A', 'B', 'C', 'D', '3', 0),
(91, '91.png', 'A', 'B', 'C', 'D', '4', 0),
(92, '92.png', 'A', 'B', 'C', 'D', '2', 0),
(93, '93.png', 'A', 'B', 'C', 'D', '1', 0),
(94, '94.png', 'A', 'B', 'C', 'D', '1', 0),
(95, '95.png', 'A', 'B', 'C', 'D', '3', 0),
(96, '96.png', 'A', 'B', 'C', 'D', '2', 0),
(97, '97.png', 'A', 'B', 'C', 'D', '1', 0),
(98, 'El promedio de 6 números es 4.5 ¿Cuál es la suma de los números?', '27', '45', '24', '30', '1', 0),
(99, 'Si x = 2/5 + 5/2, entonces 1/x es igual a:', '7/10', '10/29', '10/7', '29/10', '2', 0),
(100, 'Un pastel se divide en 12 partes iguales, pero se reparten en forma desigual: Carlos se lleva un tercio del pastel; Andrea se lleva un cuarto del pastel y Diana toma un sexto del pastel. ¿Cuántos trozos le quedaron a Andrés?', '3', '9', '4', '1', '1', 0),
(101, 'En una cubeta se depositan 6L de agua, lo cual corresponde a 2/5 del volumen de la cubeta. ¿Cuál es el volumen de la cubeta, en litros?', '12/5', '12', '32/5', '15', '4', 0),
(102, 'El peso de 180 bultos de cemento es de 9,000 kg ¿Cuál es el peso total si se retira 15% de los bultos?', '1,350', '2,700', '7,650', '8,820', '3', 0),
(103, 'Si 7 rosas cuestan $392, ¿Cuánto costará 5 1/2 docenas de rosas?', '3,360', '3,528', '3,696', '4,032', '3', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exani_ii`
--

CREATE TABLE `exani_ii` (
  `id_exani_ii` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `dia_nac` varchar(2) NOT NULL,
  `mes_nac` varchar(2) NOT NULL,
  `ano_nac` varchar(4) NOT NULL,
  `sexo` varchar(1) NOT NULL,
  `enti_nac` varchar(2) NOT NULL,
  `imp_cam` varchar(1) NOT NULL,
  `imp_ecu` varchar(1) NOT NULL,
  `imp_ver` varchar(1) NOT NULL,
  `imp_con` varchar(1) NOT NULL,
  `imp_pan` varchar(1) NOT NULL,
  `imp_pca` varchar(1) NOT NULL,
  `imp_pdp` varchar(1) NOT NULL,
  `imp_pat` varchar(1) NOT NULL,
  `imp_pob` varchar(1) NOT NULL,
  `imp_pab` varchar(1) NOT NULL,
  `li_mad` varchar(1) NOT NULL,
  `li_pad` varchar(1) NOT NULL,
  `edo_proc` varchar(2) NOT NULL,
  `mes_cur` varchar(2) NOT NULL,
  `ano_cur` varchar(4) NOT NULL,
  `res_proc` varchar(1) NOT NULL,
  `mod_bac` varchar(1) NOT NULL,
  `sis_nms` varchar(1) NOT NULL,
  `turno` varchar(1) NOT NULL,
  `prom_bac` varchar(1) NOT NULL,
  `bec_nec` varchar(1) NOT NULL,
  `exa_ext` varchar(1) NOT NULL,
  `mat_rep` varchar(1) NOT NULL,
  `fre_fcl` varchar(1) NOT NULL,
  `fre_lltm` varchar(1) NOT NULL,
  `fre_pdc` varchar(1) NOT NULL,
  `fre_dte` varchar(1) NOT NULL,
  `fre_ette` varchar(1) NOT NULL,
  `fre_ppa` varchar(1) NOT NULL,
  `fre_cde` varchar(1) NOT NULL,
  `fre_tsc` varchar(1) NOT NULL,
  `fre_sme` varchar(1) NOT NULL,
  `fre_crt` varchar(1) NOT NULL,
  `per_hqp` varchar(1) NOT NULL,
  `per_aet` varchar(1) NOT NULL,
  `per_arp` varchar(1) NOT NULL,
  `per_cdt` varchar(1) NOT NULL,
  `ide_ese` varchar(1) NOT NULL,
  `ide_vbm` varchar(1) NOT NULL,
  `ide_ome` varchar(1) NOT NULL,
  `ide_ppm` varchar(1) NOT NULL,
  `ide_fam` varchar(1) NOT NULL,
  `ide_ces` varchar(1) NOT NULL,
  `ide_cec` varchar(1) NOT NULL,
  `des_desa` varchar(1) NOT NULL,
  `des_esme` varchar(1) NOT NULL,
  `des_term` varchar(1) NOT NULL,
  `des_duro` varchar(1) NOT NULL,
  `soc_ptfg` varchar(1) NOT NULL,
  `soc_imc` varchar(1) NOT NULL,
  `soc_pdc` varchar(1) NOT NULL,
  `soc_pdm` varchar(1) NOT NULL,
  `ocu_exv` varchar(1) NOT NULL,
  `ocu_dde` varchar(1) NOT NULL,
  `ocu_nep` varchar(1) NOT NULL,
  `ocu_pcc` varchar(1) NOT NULL,
  `ocu_pae` varchar(1) NOT NULL,
  `act_dtd` varchar(1) NOT NULL,
  `act_eod` varchar(1) NOT NULL,
  `act_dca` varchar(1) NOT NULL,
  `act_erc` varchar(1) NOT NULL,
  `hab_ptae` varchar(1) NOT NULL,
  `hab_dam` varchar(1) NOT NULL,
  `hab_aea` varchar(1) NOT NULL,
  `hab_tevs` varchar(1) NOT NULL,
  `hab_lti` varchar(1) NOT NULL,
  `hab_eti` varchar(1) NOT NULL,
  `hab_etiv` varchar(1) NOT NULL,
  `hab_mhc` varchar(1) NOT NULL,
  `hab_oif` varchar(1) NOT NULL,
  `hab_ioa` varchar(1) NOT NULL,
  `hab_eto` varchar(1) NOT NULL,
  `hab_apm` varchar(1) NOT NULL,
  `hab_rel` varchar(1) NOT NULL,
  `hab_sal` varchar(1) NOT NULL,
  `hab_dap` varchar(1) NOT NULL,
  `hab_cma` varchar(1) NOT NULL,
  `est_alca` varchar(1) NOT NULL,
  `ori_aue` varchar(1) NOT NULL,
  `ori_cme` varchar(1) NOT NULL,
  `ori_esx` varchar(1) NOT NULL,
  `ori_hso` varchar(1) NOT NULL,
  `ori_mdp` varchar(1) NOT NULL,
  `ori_mes` varchar(1) NOT NULL,
  `ori_mag` varchar(1) NOT NULL,
  `ori_nut` varchar(1) NOT NULL,
  `uti_lplr` varchar(1) NOT NULL,
  `uti_bite` varchar(1) NOT NULL,
  `itu_cce` varchar(1) NOT NULL,
  `dan_malf` varchar(1) NOT NULL,
  `dan_ofi` varchar(1) NOT NULL,
  `dan_eir` varchar(1) NOT NULL,
  `dan_reqc` varchar(1) NOT NULL,
  `dan_mft` varchar(1) NOT NULL,
  `dan_fhc` varchar(1) NOT NULL,
  `hrs_trab` varchar(1) NOT NULL,
  `esco_mad` varchar(1) NOT NULL,
  `esco_pad` varchar(1) NOT NULL,
  `cuan_lib` varchar(1) NOT NULL,
  `ser_tele` varchar(1) NOT NULL,
  `ser_lav` varchar(1) NOT NULL,
  `ser_ref` varchar(1) NOT NULL,
  `ser_hor` varchar(1) NOT NULL,
  `ser_inte` varchar(1) NOT NULL,
  `ser_cabl` varchar(1) NOT NULL,
  `ser_tabl` varchar(1) NOT NULL,
  `bien_pc` varchar(1) NOT NULL,
  `ser_tv` varchar(1) NOT NULL,
  `ser_auto` varchar(1) NOT NULL,
  `ser_bano` varchar(1) NOT NULL,
  `vac_rm` varchar(1) NOT NULL,
  `car_foll` varchar(1) NOT NULL,
  `car_guia` varchar(1) NOT NULL,
  `car_piov` varchar(1) NOT NULL,
  `car_ptov` varchar(1) NOT NULL,
  `inf_pad` varchar(1) NOT NULL,
  `inf_her` varchar(1) NOT NULL,
  `inf_ami` varchar(1) NOT NULL,
  `inf_prf` varchar(1) NOT NULL,
  `inf_poe` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `exani_ii`
--

INSERT INTO `exani_ii` (`id_exani_ii`, `user_id`, `dia_nac`, `mes_nac`, `ano_nac`, `sexo`, `enti_nac`, `imp_cam`, `imp_ecu`, `imp_ver`, `imp_con`, `imp_pan`, `imp_pca`, `imp_pdp`, `imp_pat`, `imp_pob`, `imp_pab`, `li_mad`, `li_pad`, `edo_proc`, `mes_cur`, `ano_cur`, `res_proc`, `mod_bac`, `sis_nms`, `turno`, `prom_bac`, `bec_nec`, `exa_ext`, `mat_rep`, `fre_fcl`, `fre_lltm`, `fre_pdc`, `fre_dte`, `fre_ette`, `fre_ppa`, `fre_cde`, `fre_tsc`, `fre_sme`, `fre_crt`, `per_hqp`, `per_aet`, `per_arp`, `per_cdt`, `ide_ese`, `ide_vbm`, `ide_ome`, `ide_ppm`, `ide_fam`, `ide_ces`, `ide_cec`, `des_desa`, `des_esme`, `des_term`, `des_duro`, `soc_ptfg`, `soc_imc`, `soc_pdc`, `soc_pdm`, `ocu_exv`, `ocu_dde`, `ocu_nep`, `ocu_pcc`, `ocu_pae`, `act_dtd`, `act_eod`, `act_dca`, `act_erc`, `hab_ptae`, `hab_dam`, `hab_aea`, `hab_tevs`, `hab_lti`, `hab_eti`, `hab_etiv`, `hab_mhc`, `hab_oif`, `hab_ioa`, `hab_eto`, `hab_apm`, `hab_rel`, `hab_sal`, `hab_dap`, `hab_cma`, `est_alca`, `ori_aue`, `ori_cme`, `ori_esx`, `ori_hso`, `ori_mdp`, `ori_mes`, `ori_mag`, `ori_nut`, `uti_lplr`, `uti_bite`, `itu_cce`, `dan_malf`, `dan_ofi`, `dan_eir`, `dan_reqc`, `dan_mft`, `dan_fhc`, `hrs_trab`, `esco_mad`, `esco_pad`, `cuan_lib`, `ser_tele`, `ser_lav`, `ser_ref`, `ser_hor`, `ser_inte`, `ser_cabl`, `ser_tabl`, `bien_pc`, `ser_tv`, `ser_auto`, `ser_bano`, `vac_rm`, `car_foll`, `car_guia`, `car_piov`, `car_ptov`, `inf_pad`, `inf_her`, `inf_ami`, `inf_prf`, `inf_poe`) VALUES
(1, 2088, '24', '01', '1984', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2, 2089, '7', '09', '1909', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(3, 2090, '2', '02', '1901', '1', '05', '2', '1', '1', '1', '2', '1', '1', '1', '1', '1', '2', '2', '02', '03', '1900', '1', '3', '2', '3', '3', '1', '1', '3', '1', '2', '2', '2', '3', '1', '1', '1', '1', '1', '1', '1', '3', '2', '1', '3', '2', '2', '2', '1', '1', '2', '1', '2', '2', '2', '3', '2', '2', '1', '2', '2', '2', '1', '2', '2', '1', '2', '2', '2', '1', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '1', '1', '2', '2', '1', '1', '2', '1', '1', '1', '1', '1', '1', '2', '1', '1', '2', '1', '2', '2', '2', '4', '4', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2', '2', '1', '2', '1'),
(4, 2091, '24', '01', '1984', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(5, 2093, '8', '07', '1909', '1', '12', '1', '2', '2', '2', '2', '2', '1', '1', '1', '1', '1', '1', '11', '03', '1905', '1', '4', '2', '3', '3', '1', '5', '5', '1', '2', '3', '4', '1', '1', '2', '3', '3', '3', '2', '3', '3', '2', '2', '3', '1', '3', '4', '4', '2', '2', '1', '4', '3', '1', '2', '3', '4', '1', '2', '3', '2', '2', '2', '3', '3', '3', '3', '3', '2', '1', '4', '2', '2', '3', '3', '3', '3', '3', '4', '1', '2', '2', '2', '1', '2', '1', '2', '1', '2', '1', '2', '1', '2', '2', '1', '4', '2', '2', '3', '4', '4', '3', '3', '4', '1', '2', '1', '2', '1', '2', '1', '2', '2', '2', '2', '2', '2', '2', '3', '2', '2', '1', '3', '4', '2'),
(6, 2095, '4', '02', '1902', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(7, 2096, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nivela_ingles`
--

CREATE TABLE `nivela_ingles` (
  `id` int(11) NOT NULL,
  `question_name` text NOT NULL,
  `answer1` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `answer2` varchar(250) NOT NULL,
  `answer3` varchar(250) NOT NULL,
  `answer4` varchar(45) NOT NULL,
  `answer` varchar(250) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `nivela_ingles`
--

INSERT INTO `nivela_ingles` (`id`, `question_name`, `answer1`, `answer2`, `answer3`, `answer4`, `answer`, `category_id`) VALUES
(1, 'im.pngHow old <select id=\'radio1_1\' name=\'1\' class=\'detec texto\'></select> your mom?', '0', '0', '0', '0', 'J', 0),
(2, 'im.pngWhen is <select id=\'radio1_2\' name=\'2\' class=\'detec texto\'></select> birthday?', '0', '0', '0', '0', 'E', 0),
(3, 'im.pngIs <select id=\'radio1_3\' name=\'3\' class=\'detec texto\'></select> from U.S.A?', '0', '0', '0', '0', 'H', 0),
(4, 'im.pngNo, she <select id=\'radio1_4\' name=\'4\' class=\'detec texto\'></select>.', '0', '0', '0', '0', 'A', 0),
(5, 'im.pngMy <select id=\'radio1_5\' name=\'5\' class=\'detec texto\'></select> job is interesting.', '0', '0', '0', '0', 'N', 0),
(6, 'im.pngHe is <select id=\'radio1_6\' name=\'6\' class=\'detec texto\'></select> opera singer.', '0', '0', '0', '0', 'B', 0),
(7, 'im.png<select id=\'radio1_7\' name=\'7\' class=\'detec texto\'></select> you like opera?', '0', '0', '0', '0', 'L', 0),
(8, 'im.pngYes, I <select id=\'radio1_8\' name=\'8\' class=\'detec texto\'></select> it a lot. I have a CD collection.', '0', '0', '0', '0', 'C', 0),
(9, 'im.pngI <select id=\'radio1_9\' name=\'9\' class=\'detec texto\'></select> like it. I prefer rock.', '0', '0', '0', '0', 'M', 0),
(10, 'im.pngMy mom is a musician. She <select id=\'radio1_10\' name=\'10\' class=\'detec texto\'></select> the piano.', '0', '0', '0', '0', 'D', 0),
(11, 'She _________ her homework.', 'A) were doing', 'B) be doing', 'C) was doing', 'D) being doing', '3', 0),
(12, ' _______ you having fun?', 'A) Were', 'B) Be', 'C) Was', 'D) Being', '1', 0),
(13, 'My cousin was watching TV _________ the telephone rang.', 'A) when', 'B) how', 'C) while', 'D) where', '1', 0),
(14, '_________ her mom was cooking, her baby slept.', 'A) What', 'B) How', 'C) While', 'D) Where', '3', 0),
(15, 'When Peter __________ I ____________ a program about desserts.', 'A) arrived / was watching,', 'B) arrive / were watching,', 'C) arriving / was watching,', 'D) arrive / were watching,', '1', 0),
(16, 'His brother _________ play the piano.', 'A) must', 'B) have to', 'C) can', 'D) ought to', '3', 0),
(17, 'They _______ check out before noon.', 'A) must', 'B) would like', 'C) can', 'D) ought to', '1', 0),
(18, 'It is very cloudy, it _______________  rain. ', 'A) is', 'B) is going to', 'C) is going ', 'D) going to', '2', 0),
(19, 'It rained and I got wet, I ___________ get sick.\r\n', 'A) will', 'B) won’t', 'C) am going ', 'D) is', '1', 0),
(20, 'I ________________ ready for the party.\r\n', 'A) will getting', 'B) won’t getting', 'C) am going ', 'D) am getting', '4', 0),
(21, 'My best friend is _____ than my little sister.\r\n', 'A) tall', 'B) more tall', 'C) taller', 'D) more taller', '3', 0),
(22, 'Going out with my friends is _____ than going out with my family.\r\n', 'A) expensive', 'B) more expensive', 'C) expensiver', 'D) more expensiver', '2', 0),
(23, 'Yesterday, Hugo had the _____ time ever. He had a surprise birthday party. \r\n', 'A) good', 'B) more good', 'C) best ', 'D) goodest ', '3', 0),
(24, 'Susan had her ____ child when she was 25.\r\n', 'A) older', 'B) more old', 'C) most old', 'D) oldest', '4', 0),
(25, 'For some students High school is the _____ phase in their study time.\r\n', 'A) difficulter', 'B) more difficult', 'C) most difficult', 'D) difficultest ', '3', 0),
(26, 'Their parents _____ to France three times.\r\n', 'A) been ', 'B) be ', 'C) has been', 'D) have been', '4', 0),
(27, 'Connie has loved chocolate _____ she was a little girl.\r\n', 'A) since', 'B) for', 'C) ever', 'D) yet ', '1', 0),
(28, 'George _____ finished his homework _____.\r\n', 'A) has – ever', 'B) has not – yet', 'C) have – for', 'D) have not – yet', '2', 0),
(29, '_____ you ever _____ his daughter?\r\n', 'A) Has – meet', 'B) Have - meeted', 'C) Has – met', 'D) Have – met', '4', 0),
(30, 'After school my friend and I _____ chess and hide and seek.\r\n', 'A) used to play', 'B) uses to play', 'C) use to played', 'D) used to played.', '1', 0),
(31, 'If they ________ here, they always ________ a present.\r\n', 'A) came  -  bring', 'B) come  -  bring', 'C) came – brought', 'D) comes – brings', '2', 0),
(32, 'If I  ________ too much, I ________ tired\r\n', 'A) worked  -  get', 'B) work  -  got', 'C) work  – get', 'D) works - get', '3', 0),
(33, 'If you  ________ water, it  ________  into ice.\r\n', 'A) freeze   -  turns', 'B) freezed -  turned', 'C) froze  –  turned', 'D) freezes – turns', '1', 0),
(34, 'If I ________  the 8 o’clock bus, I ________  late for work.\r\n', 'A) missed – are', 'B) misses – am', 'C) miss – are', 'D) miss - am', '4', 0),
(35, 'If he  ________  now, I  ________  back tomorrow.\r\n', 'A) will be – will come ', 'B) are – will come ', 'C) am – will come', 'D) is  -  will come', '4', 0),
(36, 'If you  ________ hard, ________ a millionaire someday\r\n', 'A) works - may becomes', 'B) work – may become', 'C) worked – becomes', 'D) will work – may become', '2', 0),
(37, 'If you  ________  more than you earn, you ________ a poor man.\r\n', 'A) spend – will become ', 'B) spent - became', 'C) spends – will become', 'D) spended – will become', '1', 0),
(38, 'If I  ________  the lottery, I  ________ around the world.\r\n', 'A) wins  -  would travels', 'B) won – would travels', 'C) won  –  would travel', 'D) won – would travelled', '3', 0),
(39, 'If I  ________ you, I  ________  that car.\r\n', 'A) was – would buy', 'B) were – would buy', 'C) were be – would buy', 'D) were – would buys', '2', 0),
(40, 'If she  ________ more time, she  ________ more often. \r\n', 'A) had – would traveled', 'B) had  – was traveled', 'C) had – was traveling', 'D) had – would travel', '4', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preguntas_por_alumno`
--

CREATE TABLE `preguntas_por_alumno` (
  `id_palumno` int(11) NOT NULL,
  `id_alumno` int(11) NOT NULL,
  `id_examen` int(11) NOT NULL,
  `id_pregunta` int(11) NOT NULL,
  `respuesta` int(11) NOT NULL DEFAULT '5',
  `correcta` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prf_tipo`
--

CREATE TABLE `prf_tipo` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `abreviatura` varchar(45) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resultados`
--

CREATE TABLE `resultados` (
  `idresultados` int(11) NOT NULL,
  `id_alumno` int(11) NOT NULL,
  `no_serie` int(11) NOT NULL,
  `correctas` int(11) NOT NULL,
  `incorrectas` int(11) NOT NULL,
  `sicontestar` int(11) NOT NULL,
  `totalserie` int(11) NOT NULL,
  `fecha` datetime NOT NULL,
  `periodo` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos_usuario`
--

CREATE TABLE `tipos_usuario` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `abreviatura` varchar(45) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipos_usuario`
--

INSERT INTO `tipos_usuario` (`id`, `nombre`, `abreviatura`) VALUES
(1, 'Alumno', 'alum'),
(2, 'Psicologas', 'psi'),
(3, 'Administador', 'admin');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `01_user`
--
ALTER TABLE `01_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username_UNIQUE` (`username`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`),
  ADD KEY `fk_01_user_tipos_usuario_idx` (`tipo_usuario`),
  ADD KEY `fk_01_user_estatus1_idx` (`estatus`);

--
-- Indices de la tabla `alumnos_datos_personales`
--
ALTER TABLE `alumnos_datos_personales`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`),
  ADD KEY `fk_prf_datopersonales_prf_tipo1_idx` (`prf_tipo`),
  ADD KEY `fk_prf_datopersonales_01_user1_idx` (`user_id`);

--
-- Indices de la tabla `bitacora_alumno`
--
ALTER TABLE `bitacora_alumno`
  ADD PRIMARY KEY (`id_bitacora`);

--
-- Indices de la tabla `estatus`
--
ALTER TABLE `estatus`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `examen_basicas`
--
ALTER TABLE `examen_basicas`
  ADD PRIMARY KEY (`id_basicas`);

--
-- Indices de la tabla `examen_especialidad`
--
ALTER TABLE `examen_especialidad`
  ADD PRIMARY KEY (`id_especialidad`);

--
-- Indices de la tabla `examen_gerenciales`
--
ALTER TABLE `examen_gerenciales`
  ADD PRIMARY KEY (`id_gerenciales`);

--
-- Indices de la tabla `examen_lenguas`
--
ALTER TABLE `examen_lenguas`
  ADD PRIMARY KEY (`id_lenguas`);

--
-- Indices de la tabla `exaniceneval`
--
ALTER TABLE `exaniceneval`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `exaniinterno`
--
ALTER TABLE `exaniinterno`
  ADD PRIMARY KEY (`id_exani`);

--
-- Indices de la tabla `exani_ii`
--
ALTER TABLE `exani_ii`
  ADD PRIMARY KEY (`id_exani_ii`);

--
-- Indices de la tabla `nivela_ingles`
--
ALTER TABLE `nivela_ingles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `preguntas_por_alumno`
--
ALTER TABLE `preguntas_por_alumno`
  ADD PRIMARY KEY (`id_palumno`);

--
-- Indices de la tabla `prf_tipo`
--
ALTER TABLE `prf_tipo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `resultados`
--
ALTER TABLE `resultados`
  ADD PRIMARY KEY (`idresultados`);

--
-- Indices de la tabla `tipos_usuario`
--
ALTER TABLE `tipos_usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `01_user`
--
ALTER TABLE `01_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2097;
--
-- AUTO_INCREMENT de la tabla `alumnos_datos_personales`
--
ALTER TABLE `alumnos_datos_personales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1981;
--
-- AUTO_INCREMENT de la tabla `bitacora_alumno`
--
ALTER TABLE `bitacora_alumno`
  MODIFY `id_bitacora` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `estatus`
--
ALTER TABLE `estatus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `examen_basicas`
--
ALTER TABLE `examen_basicas`
  MODIFY `id_basicas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;
--
-- AUTO_INCREMENT de la tabla `examen_especialidad`
--
ALTER TABLE `examen_especialidad`
  MODIFY `id_especialidad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=643;
--
-- AUTO_INCREMENT de la tabla `examen_gerenciales`
--
ALTER TABLE `examen_gerenciales`
  MODIFY `id_gerenciales` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT de la tabla `examen_lenguas`
--
ALTER TABLE `examen_lenguas`
  MODIFY `id_lenguas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
--
-- AUTO_INCREMENT de la tabla `exaniceneval`
--
ALTER TABLE `exaniceneval`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `exaniinterno`
--
ALTER TABLE `exaniinterno`
  MODIFY `id_exani` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;
--
-- AUTO_INCREMENT de la tabla `exani_ii`
--
ALTER TABLE `exani_ii`
  MODIFY `id_exani_ii` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `nivela_ingles`
--
ALTER TABLE `nivela_ingles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT de la tabla `preguntas_por_alumno`
--
ALTER TABLE `preguntas_por_alumno`
  MODIFY `id_palumno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=207;
--
-- AUTO_INCREMENT de la tabla `resultados`
--
ALTER TABLE `resultados`
  MODIFY `idresultados` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT de la tabla `tipos_usuario`
--
ALTER TABLE `tipos_usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
