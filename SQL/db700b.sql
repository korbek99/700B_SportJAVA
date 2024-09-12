-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 12-09-2024 a las 02:20:36
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db700b`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `deportes`
--

CREATE TABLE `deportes` (
  `dpte_id` int(11) NOT NULL,
  `dpte_nombre` varchar(255) DEFAULT NULL,
  `dpte_descripcion` varchar(4000) DEFAULT NULL,
  `dpte_img` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `deportes`
--

INSERT INTO `deportes` (`dpte_id`, `dpte_nombre`, `dpte_descripcion`, `dpte_img`) VALUES
(1, 'GIMNASIA', 'La Gimnasia de los Juegos Olimpicos de Londres 2012 estara llena de gracia y belleza. Es un deporte enormemente popular en todo el mundo que sera muy disfrutados durante los dias de las olimpiadas. Dividida en tres grandes competiciones (Gimnasia Artistica, Gimnasia Ritmica y Gimnasia Acrobatica o Trampolin) los dias de competencias atraeran a enormes multitudes en el North Greenwich Arena (O2 Arena) y en el Wembley Arena, sedes de estas pruebas.', 'foto1.jpg'),
(2, 'TRIATLON', 'Los origenes precisos del Triatlon son desconocidos: algunos dicen que el deporte comenzo en Francia entre las dos guerras, otros que en realidad se desarrollaron en los Estados Unidos durante la decada de 1970. Cualquiera que sea la verdadera historia, el triatlon es ahora uno de los deportes de mas rapido crecimiento en el mundo, y en los juegos de Londres 2012 la competencia realizada en el Hyde Park promete atraer a multitudes enormes y entusiastas.', 'foto2.jpg'),
(3, 'CANOTAJE', 'Durante los Juegos de Londres 2012, la Canoa estara dividida en dos depertes, la Canoa Srtint y la Cania Slalom. Ambas estaran matizadas por la velocidad y la potencia de los competidores', 'foto3.jpg'),
(4, 'PESAS', 'El levantamiento de pesas en los Juegos Olimpicos de Londres 2012 sera una prueba de exibicion de fuerza pura - la forma mas antigua y mas basica de la competencia fisica.', 'foto4.jpg'),
(5, 'NATACION', 'La Natacion cuenta en los juegos de Londres con 34 eventos de medallas, es un deporte muy popular en todo el mundo como una actividad de ocio y un deporte competitivo. Hay cuatro estilos utilizados en la competicion olimpica: estilo libre (esencialmente, en estilo crol), espalda, pecho y mariposa.', 'foto5.jpg'),
(6, 'TAEKWONDO', 'La palabra Taekwondo se traduce en Ingles como la forma del pie y el puno, una descripcion precisa de los principios detras de este arte marcial coreano. Poderosas patadas y punetazos dan, literalmente, el nombre del deporte, que ofrece tension, drama y mucha accion.', 'foto6.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `cod` int(11) NOT NULL,
  `apellidos` varchar(255) DEFAULT NULL,
  `nombres` varchar(255) DEFAULT NULL,
  `dpto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`cod`, `apellidos`, `nombres`, `dpto`) VALUES
(1, 'Perez', 'Juan', 3),
(2, 'Fuentes', 'Marlene', 4),
(3, 'Poblete', 'Hugo', 3),
(4, 'Castro', 'Gonzalo', 3),
(5, 'Polanco', 'Paola', 4),
(6, 'Gatica', 'Gabriela', 3),
(7, 'null', 'Cony Rica', 69),
(8, 'Cesar weco', 'Cesar weco', 69),
(9, 'Medina', 'JUanito', 89),
(10, 'Alvarez', 'Myriam', 69);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paises`
--

CREATE TABLE `paises` (
  `pais_id` int(11) NOT NULL,
  `pais_nombre` varchar(255) DEFAULT NULL,
  `pais_descripcion` varchar(255) DEFAULT NULL,
  `pais_img` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `paises`
--

INSERT INTO `paises` (`pais_id`, `pais_nombre`, `pais_descripcion`, `pais_img`) VALUES
(1, 'CHILE', 'Chile participo por primera vez en los Juegos Olimpicos en la inauguracion de los Juegos de 1896, y desde entonces ha enviado a los atletas a competir en la mayoria de los Juegos Olimpicos de Verano y en los Juegos Olimpicos de Invierno.', 'pais1.jpg'),
(2, 'CUBA', 'Cuba participo por primera vez en los Juegos Olimpicos en 1900, y desde entonces ha enviado atletas a competir en 18 de los 26 Juegos Olimpicos de Verano. Los atletas cubanos nunca han participado en los Juegos Olimpicos de Invierno.', 'pais2.jpg'),
(3, 'CHINA', 'La Republica Popular de China compitio por primera vez en los Juegos Olimpicos en 1952, en Helsinki, aunque solo llego a tiempo para participar en un evento.', 'pais3.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pw01_usuario`
--

CREATE TABLE `pw01_usuario` (
  `PW01_ID` int(11) NOT NULL,
  `PW01_LOGIN` varchar(100) DEFAULT NULL,
  `PW01_PASSWORD` varchar(100) DEFAULT NULL,
  `PW01_NOMBRES` varchar(255) DEFAULT NULL,
  `PW01_STD` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pw01_usuario`
--

INSERT INTO `pw01_usuario` (`PW01_ID`, `PW01_LOGIN`, `PW01_PASSWORD`, `PW01_NOMBRES`, `PW01_STD`) VALUES
(1, 'JOSEB', 'JOSEB', 'JOSE BUSTOS', 1),
(2, 'CMALDON', 'CMALDON', 'CESAR MALDONADO', 2),
(3, 'VALVAREZ', 'VALVAREZ', 'VICTOR ALVAREZ', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pw02_categoria`
--

CREATE TABLE `pw02_categoria` (
  `PW02_ID` int(11) NOT NULL,
  `PW02_DESCRIPCION` varchar(20) DEFAULT NULL,
  `PW02_STD` int(11) DEFAULT NULL,
  `Pw02_ULR` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pw02_categoria`
--

INSERT INTO `pw02_categoria` (`PW02_ID`, `PW02_DESCRIPCION`, `PW02_STD`, `Pw02_ULR`) VALUES
(1, 'FUTBOL', 1, NULL),
(2, 'TENIS', 1, NULL),
(3, 'CICLISMO', 1, NULL),
(4, 'NATACION', 1, NULL),
(5, 'OTROS PRODUCTOS', 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pw03_contenido`
--

CREATE TABLE `pw03_contenido` (
  `PW03_ID` int(11) NOT NULL,
  `PW03_TITULO` varchar(25) DEFAULT NULL,
  `PW03_DESCRIPCION` text DEFAULT NULL,
  `PW03_IMG1` varchar(100) DEFAULT NULL,
  `PW03_IMG2` varchar(100) DEFAULT NULL,
  `PW03_STD` int(11) DEFAULT NULL,
  `PW02_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pw03_contenido`
--

INSERT INTO `pw03_contenido` (`PW03_ID`, `PW03_TITULO`, `PW03_DESCRIPCION`, `PW03_IMG1`, `PW03_IMG2`, `PW03_STD`, `PW02_ID`) VALUES
(1, 'FUTBOL', 'PELOTA PROFESIONAL ', 'pelo1.jpg', 'pelo1.jpg', 2, 1),
(2, 'FUTBOL', 'PELOTA PROFESIONAL EXTREME', 'pelo2.jpg', 'pelo2.jpg', 1, 1),
(3, 'FUTBOL', 'PITO PROFESIONAL', 'pito1.jpg', 'pito1.jpg', 1, 1),
(4, 'TENIS', 'RAQUETA PROFESIONAL', 'tenis1.jpg', 'tenis1.jpg', 1, 1),
(5, 'TENIS', 'RAQUETA PROFESIONAL FC', 'tenis2.jpg', 'tenis2.jpg', 1, 2),
(6, 'TENIS', 'Zapatillas Power', 'tilla1.jpg', 'tilla1.jpg', 1, 2),
(7, 'TENIS', 'PELOTAS TENIS PROFESIONAL', 'bola1.jpg', 'bola1.jpg', 1, 2),
(8, 'CICLISMO', 'BICICLETA PROFESIONAL', 'bici1.jpg', 'bici1.jpg', 1, 3),
(9, 'CICLISMO', 'CASCO PROFESIONAL EXTREME', 'casco1.jpg', 'casco1.jpg', 1, 3),
(10, 'CICLISMO', 'CANDADO BICICLETA', 'canda1.jpg', 'canda1.jpg', 1, 3),
(11, 'NATACION', 'TRAJE BAÑO MUJER', 'trajeM1.jpg', 'trajeM1.jpg', 1, 4),
(12, 'NATACION', 'TRAJE BAÑO MUJER HEAVEN', 'trajeM2.jpg', 'trajeM2.jpg', 1, 4),
(13, 'NATACION', 'GAFAS DE NATACION', 'lente1.jpg', 'lente1.jpg', 1, 4),
(14, 'OTROS ARTICULOS', 'CANASTA BASKETBALL', 'canasta.jpg', 'canasta.jpg', 1, 5),
(15, 'OTROS ARTICULOS', 'CRONOMETRO PROFESIONAL', 'crono.jpg', 'crono.jpg', 1, 5),
(16, 'OTROS ARTICULOS', 'PELOTA BASKETBALL', 'ballbask.jpg', 'ballbask.jpg', 1, 5),
(22, 'cesar ', 'csar', 'cs', 'vs', 2, 5),
(23, 'saco de golpe', 'saco de golpe', 'pelo1.jpg', 'pelo1.jpg', 1, 15),
(24, 'bolas de acero', 'bolas de acero', 'pelo2.jpg', 'pelo2.jpg', 1, 15),
(25, 'bolas de gomas', 'bolas de gomas', 'tilla1.jpg', 'tilla1.jpg', 1, 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pw04_destacado`
--

CREATE TABLE `pw04_destacado` (
  `PW04_ID` int(11) NOT NULL,
  `PW03_ID` int(11) DEFAULT NULL,
  `PW04_ORDEN` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pw04_destacado`
--

INSERT INTO `pw04_destacado` (`PW04_ID`, `PW03_ID`, `PW04_ORDEN`) VALUES
(1, 11, 2),
(2, 12, 1),
(3, 2, 3),
(4, 20, 4),
(5, 21, 5),
(7, 8, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas_clientes_detalle`
--

CREATE TABLE `ventas_clientes_detalle` (
  `id_DetalleVentas` int(4) NOT NULL,
  `id_Ventas` int(4) NOT NULL,
  `CodPro` int(11) NOT NULL,
  `Precio` int(11) NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `Totaldetalle` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `deportes`
--
ALTER TABLE `deportes`
  ADD PRIMARY KEY (`dpte_id`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`cod`);

--
-- Indices de la tabla `paises`
--
ALTER TABLE `paises`
  ADD PRIMARY KEY (`pais_id`);

--
-- Indices de la tabla `pw01_usuario`
--
ALTER TABLE `pw01_usuario`
  ADD PRIMARY KEY (`PW01_ID`);

--
-- Indices de la tabla `pw02_categoria`
--
ALTER TABLE `pw02_categoria`
  ADD PRIMARY KEY (`PW02_ID`);

--
-- Indices de la tabla `pw03_contenido`
--
ALTER TABLE `pw03_contenido`
  ADD PRIMARY KEY (`PW03_ID`);

--
-- Indices de la tabla `pw04_destacado`
--
ALTER TABLE `pw04_destacado`
  ADD PRIMARY KEY (`PW04_ID`);

--
-- Indices de la tabla `ventas_clientes_detalle`
--
ALTER TABLE `ventas_clientes_detalle`
  ADD PRIMARY KEY (`id_DetalleVentas`),
  ADD KEY `id_Ventas` (`id_Ventas`),
  ADD KEY `CodPro` (`CodPro`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `deportes`
--
ALTER TABLE `deportes`
  MODIFY `dpte_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `paises`
--
ALTER TABLE `paises`
  MODIFY `pais_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `pw01_usuario`
--
ALTER TABLE `pw01_usuario`
  MODIFY `PW01_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `pw02_categoria`
--
ALTER TABLE `pw02_categoria`
  MODIFY `PW02_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `pw03_contenido`
--
ALTER TABLE `pw03_contenido`
  MODIFY `PW03_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `pw04_destacado`
--
ALTER TABLE `pw04_destacado`
  MODIFY `PW04_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `ventas_clientes_detalle`
--
ALTER TABLE `ventas_clientes_detalle`
  MODIFY `id_DetalleVentas` int(4) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
