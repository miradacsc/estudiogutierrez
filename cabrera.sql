-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 19-08-2021 a las 21:31:49
-- Versión del servidor: 5.5.24-log
-- Versión de PHP: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `cabrera`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE IF NOT EXISTS `clientes` (
  `id_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) NOT NULL,
  `apellido` varchar(20) NOT NULL,
  `dni` varchar(10) NOT NULL,
  `estado` varchar(250) NOT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `nombre`, `apellido`, `dni`, `estado`) VALUES
(1, 'Mirta', 'Paez', '15945362', 'Estamos a la espera del ofrecimiento.'),
(2, 'Rita', 'Maurencig', '10123555', 'Su dictamen se encuentra apelado, Aguardamos fecha de pericia médica. '),
(3, 'Alan', 'Auci', '32357921', 'Su juicio se encuentra finalizado. Gracias por elegirnos..'),
(4, 'Lucas ', 'Gonzalez', '40351423', 'Falta documental. Contáctese con nosotros.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `novedades`
--

CREATE TABLE IF NOT EXISTS `novedades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(250) NOT NULL,
  `subtitulo` text NOT NULL,
  `img_id` varchar(250) DEFAULT NULL,
  `cuerpo` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Volcado de datos para la tabla `novedades`
--

INSERT INTO `novedades` (`id`, `titulo`, `subtitulo`, `img_id`, `cuerpo`) VALUES
(1, 'Se celebró la primera audiencia de homologación bajo la ley N° 27.348 en Santa Fe', 'Luego de la implementación de la Ley N° 27.348 en Santa Fe, se llevó a cabo la primera homologación virtual con la presencia de funcionarios de la Superintendencia de Riesgos del Trabajo (SRT) y del Ministerio de Trabajo de la provincia.', 'a6wytpszg8lndxr577qe', '<p>La jornada se produjo en el marco de una recorrida que incluyó las Comisiones Médicas Jurisdiccionales de Rosario y de Santa Fe con Sergio Ripoll, titular del Servicio de Homologación de Santa Fe; Antonio Milici, subsecretario de Trabajo del Ministerio de Trabajo, Empleo y Seguridad Social de Santa Fe, y Mariela Migliori, coordinadora del Servicio de Homologación de la SRT.</p>\r\n\r\n<p>La cobertura de cargos profesionales y puesta en funcionamiento de los Servicios de Homologación para sustanciar y convalidar los acuerdos por incapacidades laborales, es un paso esencial para unificar criterios en la valoración de daños y un momento esperado por sindicatos, cámaras empresarias y aseguradoras con cápita en la provincia.\r\nEl subsecretario de Trabajo de Santa Fe, afirmó que “esto es muy importante porque los trabajadores y las trabajadoras tienen un espacio donde acudir y estar representados en caso de haber sufrido un accidente laboral o enfermedad profesional”.</p>\r\n\r\n<p>Por su parte, Mariela Migliori, destacó la celeridad del circuito del trámite e indicó que “un trabajador que homologa un acuerdo va a estar percibiendo su prestación dineraria en 10 días y eso significa tener un Estado eficaz al servicio de la ciudadanía”.</p>\r\n\r\n<p>Cabe destacar que este es un paso más de un proceso que se inició con la adhesión de la provincia de Santa Fe a la ley complementaria de Riesgos del Trabajo, en octubre de 2020 y que –en función del convenio de implementación firmado por el gobernador, Omar Perotti; el ministro de Trabajo, Empleo y Seguridad Social de la Nación, Claudio Moroni; y el superintendente de la SRT, Enrique Cossio- contempla la creación de nuevas Comisiones Médicas para las cinco circunscripciones judiciales de la provincia.</p>'),
(2, 'Informe anual sobre trabajadores mayores de 55 años', 'La Superintendencia de Riesgos del trabajo (SRT) publicó el Informe anual sobre la situación de trabajadores de mayor edad en el sistema de riesgos del trabajo correspondiente al año 2019.', 'mcnoel8nxdthydf7kzpi', '<p>En el año 2019, la población de 55 años y más cubierta es de 1.271.828 trabajadores. Este colectivo está compuesto por un 42% de mujeres y un 58% de varones, representan el 13,4% del total de trabajadores cubiertos y el 90% trabaja en unidades productivas.</p>\r\n\r\n<p>En primer lugar, se presenta información contextual de población y mercado de trabajo, estimando el peso de la población de adultos de 55 años y más, y describiendo aspectos tales como desempleo y empleo registrado durante el año 2019.</p>\r\n\r\n<p>Un segundo apartado describe la población cubierta – asalariada registrada- por el Sistema de Riesgos del Trabajo, atendiendo a su distribución por sexo, según actividad económica y salario bruto promedio, para los adultos de 55 y más, y para el grupo de 16 a 54 años.</p>\r\n\r\n<p>En el tercer apartado se considera la evolución de la accidentabilidad y la mortalidad por accidentes de trabajo y enfermedades profesionales (AT y EP) y por accidentes in itinere durante el último trienio. Para el año 2019, se describen las principales características de los casos con secuelas incapacitantes y de las enfermedades profesionales y se analiza la incidencia de la accidentabilidad y mortalidad por AT y EP según sexo y sector de actividad económica.</p>\r\n\r\n<p>Asimismo, se presentan las principales formas de ocurrencia del accidente, zonas del cuerpo afectadas, tipos de lesión y diagnósticos. Toda la información se muestra desagregada para el colectivo de trabajadores de mayor edad, y para los trabajadores de 16 a 54 años.</p>\r\n\r\n<p>Por último, se presenta un anexo estadístico y un anexo metodológico con la descripción de las fuentes de datos, variables, índices e indicadores utilizados.</p>'),
(3, 'La importancia de contar con una ART', 'En julio se cumplen 25 años de la creación del Sistema de Riesgos del Trabajo, que supo implementar estrategias de prevención y brindar seguridad a los diferentes trabajadores y empleadores. Asociart, una de las primeras ART también festeja su primer cuarto de siglo ofreciendo tranquilidad para promover una mejor vida en comunidad', 'gotcz0nbefutbc2rhzaa', '<p>El impacto de la recesión y la pandemia del COVID-19 en el sistema de riesgos del trabajo, afectaron la recaudación del sistema. Además, junto a una insuficiencia tarifaria, la situación actual se volvió difícil de sobrellevar.</p>\r\n\r\n<p>“La pandemia, entre otras cuestiones, generó una fuerte caída en gran parte de las actividades profesionales, afectando a todas las cadenas de valor de la producción. La compleja situación, junto con la incertidumbre, impactan directamente en el Sistema de Riesgos del Trabajo que, una vez más, supo estar a la altura de las circunstancias”, agrega Álvarez.</p>\r\n\r\n<p>En coincidencia con lo enunciado desde la UART, Diego Alvarez expresa que es fundamental atender la necesidad de refondeo urgente del Fondo Fiduciario para Enfermedades Profesionales, esto es con respecto al coronavirus. “Si el COVID-19 continúa considerándose una “enfermedad laboral no listada” y la cobertura se mantiene en cabeza del Sistema de Riesgos del Trabajo con cargo al Fondo Fiduciario para Enfermedades Profesionales es vital plantear la necesidad de un refondeo urgente. Resulta insuficiente este Fondo frente a las prestaciones actuales y potenciales que puedan derivar en incapacidades permanentes o en el aumento de la judicialidad. El sostenimiento de cualquier cobertura, en Argentina como en cualquier parte del mundo, se logra con el financiamiento adecuado”.</p>\r\n\r\n<p>Con respecto a las perspectivas del sistema y de sus empresas para 2021 menciona que, en términos de mercado y empleo registrado, confía en que se verá una recuperación, quizás más lenta de la que se necesita, pero recuperación al fin. Y también cree que de la mano de esa recuperación, es factible pensar en la incorporación de más colectivos dentro de la cobertura, tales como autónomos y monotributistas. A su vez, aclara que, tanto desde Asociart como desde el sistema, se continuará poniendo foco en la prevención y en la capacitación como la mejor herramienta para evitar accidentes de trabajo y enfermedades profesionales, como así también mejorar las condiciones de salud y seguridad de los trabajadores.</p>\r\n\r\n<p>Asimismo, agrega que el otro foco está puesto en la atención integral al trabajador que sufre un siniestro laboral. A pesar de las problemáticas originadas por la pandemia, el Sistema de Riesgos del Trabajo y la ART han dado siempre respuesta brindando atención médica, farmacéutica, rehabilitación, capacitación y al pago de jornales caídos o indemnizaciones de actualización automática, entre otros. “Nos adaptamos rápidamente al extraordinario contexto, con el reconocido respaldo patrimonial de Asociart y del Grupo San Cristóbal, construido con mucha responsabilidad en estos 25 años”.</p>'),
(8, 'Prueba eliminar Flavia', 'prueba para eliminar', 'olwea6ea3gamakl2yma4', 'prueba para eliminar'),
(9, 'prueba modificar ', 'prueba modificar', 'empgoyz2fpw6lfzonty4', 'prueba modificar');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `password`) VALUES
(1, 'Claudia', '81dc9bdb52d04dc20036dbd8313ed055'),
(2, 'Oscar', '912e79cd13c64069d91da65d62fbb78c');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
