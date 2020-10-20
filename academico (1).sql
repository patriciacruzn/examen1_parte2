-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-10-2020 a las 08:51:29
-- Versión del servidor: 10.4.13-MariaDB
-- Versión de PHP: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `academico`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `identificador`
--

CREATE TABLE `identificador` (
  `ci` int(11) NOT NULL,
  `nombre_completo` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_naci` varchar(40) COLLATE utf8_spanish_ci DEFAULT NULL,
  `residencia` varchar(2) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `identificador`
--

INSERT INTO `identificador` (`ci`, `nombre_completo`, `fecha_naci`, `residencia`) VALUES
(1245, 'jose flores', '17/09/1998', '06'),
(1246, 'belen nina', '26/11/2000', '03'),
(1247, 'leo gomez', '12/08/1998', '08'),
(1248, 'laura paz', '25/06/1999', '09'),
(1249, 'patricia cruz', '23/07/2001', '04'),
(1250, 'juan garcia', '12/03/1995', '05'),
(1251, 'sara mamani', '03/09/1992', '08'),
(1252, 'carlos silva', '24/09/2000', '09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nota`
--

CREATE TABLE `nota` (
  `ci` int(11) NOT NULL,
  `materia` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `nota` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `nota`
--

INSERT INTO `nota` (`ci`, `materia`, `nota`) VALUES
(1245, 'inf-111', 85),
(1245, 'inf-112', 45),
(1245, 'inf-113', 45),
(1246, 'inf-273', 80),
(1247, 'inf-131', 32),
(1249, 'inf-141', 42),
(1250, 'inf-153', 75),
(1251, 'inf-142', 75),
(1251, 'inf-151', 33),
(1251, 'inf-271', 65),
(1252, 'inf-121', 46),
(1252, 'inf-272', 49);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `ci` int(11) NOT NULL,
  `clave` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `login` varchar(20) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`ci`, `clave`, `login`) VALUES
(1245, '123456a', 'joseflores'),
(1246, '123456b', 'belennina'),
(1247, '123456c', 'leogomez'),
(1248, '123456d', 'laurapaz'),
(1249, '123456e', 'patriciacruz'),
(1250, '123456f', 'juangarcia'),
(1251, '123456g', 'saramamani'),
(1252, '123456h', 'carlossilva');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `identificador`
--
ALTER TABLE `identificador`
  ADD PRIMARY KEY (`ci`);

--
-- Indices de la tabla `nota`
--
ALTER TABLE `nota`
  ADD PRIMARY KEY (`materia`,`nota`),
  ADD KEY `ci` (`ci`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`clave`,`ci`),
  ADD KEY `ci` (`ci`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `nota`
--
ALTER TABLE `nota`
  ADD CONSTRAINT `nota_ibfk_1` FOREIGN KEY (`ci`) REFERENCES `identificador` (`ci`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`ci`) REFERENCES `identificador` (`ci`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
