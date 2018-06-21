-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-06-2018 a las 03:03:58
-- Versión del servidor: 10.1.24-MariaDB
-- Versión de PHP: 7.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tp`
--
CREATE DATABASE IF NOT EXISTS `tp` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `tp`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `choferes`
--

CREATE TABLE `choferes` (
  `id_chofer` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `legajo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `choferes`
--

INSERT INTO `choferes` (`id_chofer`, `id_usuario`, `legajo`) VALUES
(1, 19, 1),
(2, 20, 2),
(3, 21, 3),
(4, 22, 4),
(5, 23, 5),
(6, 24, 6),
(7, 25, 7),
(8, 26, 8),
(9, 27, 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `choferes_vehiculos`
--

CREATE TABLE `choferes_vehiculos` (
  `id_chofer` int(11) NOT NULL,
  `id_vehiculo` int(11) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `domicilio` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `id_usuario`, `domicilio`) VALUES
(1, 10, 'Juncal 380'),
(2, 11, '1321321313'),
(3, 12, '1321321313'),
(4, 13, '1321321313'),
(5, 14, '1321321313'),
(6, 15, '13132'),
(7, 16, '13132'),
(8, 17, '13132'),
(9, 18, '13132');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `encargados`
--

CREATE TABLE `encargados` (
  `id_encargado` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `legajo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puntajes`
--

CREATE TABLE `puntajes` (
  `id_puntaje` int(11) NOT NULL,
  `id_viaje` int(11) NOT NULL,
  `puntaje_viaje` int(11) NOT NULL,
  `id_chofer` int(11) NOT NULL,
  `puntaje_chofer` int(11) NOT NULL,
  `id_vehiculo` int(11) NOT NULL,
  `puntaje_vehiculo` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `puntaje_cliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `mail` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  `password` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  `nombre` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  `apellido` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  `dni` int(11) NOT NULL,
  `telefono` int(20) NOT NULL,
  `tipo` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `mail`, `password`, `nombre`, `apellido`, `dni`, `telefono`, `tipo`) VALUES
(9, 'juanp@gmail.com', 'asd123', 'joselooooo', 'perez', 36451289, 142233654, 1),
(10, 'mail', 'uberto29124119', 'jujan', 'lelrkelr', 29124119, 2147483647, 3),
(11, 'mail', 'uberto29124119', 'jujan', 'lelrkelr', 29124119, 2147483647, 3),
(12, 'mail', 'uberto29124119', 'jujan', 'lelrkelr', 29124119, 2147483647, 3),
(13, 'mail', 'uberto29124119', 'jujan', 'lelrkelr', 29124119, 2147483647, 3),
(14, 'mail', 'uberto29124119', 'jujan', 'lelrkelr', 29124119, 2147483647, 3),
(15, 'mail', 'uberto16546461', '32132132', '132132', 16546461, 2147483647, 3),
(16, 'mail', 'uberto16546461', '32132132', '132132', 16546461, 2147483647, 3),
(17, 'mailssss', 'uberto16546461', '32132132', '132132', 16546461, 2147483647, 3),
(18, 'mailssssqweqwe', 'uberto16546461', 'qweqwe', '132132', 16546461, 2147483647, 3),
(19, 'juan@a.c', 'asd', 'Juan', 'Rodriguez', 32002223, 1522324546, 2),
(20, 'pedro@hotmail.com', 'asd', 'Pedro', 'Gutierrez', 22321543, 1167836451, 2),
(21, 'destructor@hotmail.com', 'asd', 'Enzo', 'Salomon', 22436734, 1199326853, 2),
(22, 'juancarlos@hotmail.com', 'asd', 'Juan Carlos', 'Manon', 22938547, 1155437834, 2),
(23, 'humberto@hotmail.com', 'asd', 'Humberto', 'Roldan', 2199438, 1144295867, 2),
(24, 'ludovico@hotmail.com', 'asd', 'Ludovico', 'Do Santo', 22317940, 1144356399, 2),
(25, 'raul@hotmail.com', 'asd', 'Raul', 'Gutierrez', 2147483647, 1166930694, 2),
(26, 'ranzo@hotmail.com', 'asd', 'Renzo', 'Perez', 22543901, 1177930549, 2),
(27, 'rodrigo@hotmail.com', 'asd', 'Rodrigo', 'Smith', 225928549, 1155343264, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculos`
--

CREATE TABLE `vehiculos` (
  `id_vehiculo` int(11) NOT NULL,
  `id_chofer` int(11) NOT NULL,
  `marca` varchar(50) NOT NULL,
  `modelo` varchar(50) NOT NULL,
  `anio` int(11) NOT NULL,
  `fumar` int(11) NOT NULL,
  `aire` int(11) NOT NULL,
  `baul` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `vehiculos`
--

INSERT INTO `vehiculos` (`id_vehiculo`, `id_chofer`, `marca`, `modelo`, `anio`, `fumar`, `aire`, `baul`) VALUES
(3, 1, 'Chevrolet', 'Corsa', 2015, 0, 0, 0),
(4, 2, 'Fiat', 'Palio', 2017, 1, 1, 0),
(5, 3, 'Chevrolet', 'Onix', 2013, 1, 1, 0),
(6, 4, 'Chevrolet', 'Prisma', 2013, 1, 1, 1),
(7, 5, 'Renault', 'Sandero', 2015, 0, 1, 0),
(8, 6, 'Renault', 'Sandero', 2016, 1, 0, 0),
(9, 7, 'Renault', 'Kangoo', 2017, 1, 1, 1),
(10, 8, 'Renault', 'Kangoo', 2015, 0, 1, 1),
(11, 9, 'Renault', '12', 1986, 1, 0, 0),
(12, 0, 'Volkswagen', 'Voyage', 2014, 1, 1, 1),
(13, 0, 'Volkswagen', 'Fox', 2015, 0, 1, 0),
(14, 0, 'Volkswagen', 'Suran', 2014, 1, 0, 1),
(15, 0, 'Volkswagen', 'Suran', 2015, 1, 1, 1),
(16, 0, 'Chevrolet', 'Spin', 2016, 1, 1, 1),
(17, 0, 'Chevrolet', 'Spin', 2017, 1, 1, 1),
(18, 0, 'Volkswagen', 'Gol Trend', 2016, 0, 1, 0),
(19, 0, 'Chevrolet', 'Prisma', 2018, 0, 1, 1),
(20, 0, 'Ford', 'Fiesta', 2016, 0, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `viajes`
--

CREATE TABLE `viajes` (
  `id_viaje` int(11) NOT NULL,
  `id_encargado` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_chofer` int(11) NOT NULL,
  `distancia` int(11) NOT NULL,
  `estado` int(11) NOT NULL,
  `costo` int(11) NOT NULL,
  `forma_pago` int(11) NOT NULL,
  `latitud_inicio` int(30) NOT NULL,
  `longitud_inicio` int(30) NOT NULL,
  `latitud_destino` int(30) NOT NULL,
  `longitud_destino` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `choferes`
--
ALTER TABLE `choferes`
  ADD PRIMARY KEY (`id_chofer`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `choferes_vehiculos`
--
ALTER TABLE `choferes_vehiculos`
  ADD KEY `id_chofer` (`id_chofer`,`id_vehiculo`),
  ADD KEY `id_vehiculo` (`id_vehiculo`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `encargados`
--
ALTER TABLE `encargados`
  ADD PRIMARY KEY (`id_encargado`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `puntajes`
--
ALTER TABLE `puntajes`
  ADD PRIMARY KEY (`id_puntaje`),
  ADD KEY `id_viaje` (`id_viaje`,`id_chofer`,`id_vehiculo`,`id_cliente`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- Indices de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  ADD PRIMARY KEY (`id_vehiculo`),
  ADD KEY `id_chofer` (`id_chofer`);

--
-- Indices de la tabla `viajes`
--
ALTER TABLE `viajes`
  ADD PRIMARY KEY (`id_viaje`),
  ADD KEY `id_encargado` (`id_encargado`),
  ADD KEY `id_cliente` (`id_cliente`),
  ADD KEY `id_chofer` (`id_chofer`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `choferes`
--
ALTER TABLE `choferes`
  MODIFY `id_chofer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `encargados`
--
ALTER TABLE `encargados`
  MODIFY `id_encargado` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `puntajes`
--
ALTER TABLE `puntajes`
  MODIFY `id_puntaje` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  MODIFY `id_vehiculo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT de la tabla `viajes`
--
ALTER TABLE `viajes`
  MODIFY `id_viaje` int(11) NOT NULL AUTO_INCREMENT;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `choferes`
--
ALTER TABLE `choferes`
  ADD CONSTRAINT `choferes_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`);

--
-- Filtros para la tabla `choferes_vehiculos`
--
ALTER TABLE `choferes_vehiculos`
  ADD CONSTRAINT `choferes_vehiculos_ibfk_1` FOREIGN KEY (`id_chofer`) REFERENCES `choferes` (`id_chofer`),
  ADD CONSTRAINT `choferes_vehiculos_ibfk_2` FOREIGN KEY (`id_vehiculo`) REFERENCES `vehiculos` (`id_vehiculo`);

--
-- Filtros para la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD CONSTRAINT `clientes_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`);

--
-- Filtros para la tabla `encargados`
--
ALTER TABLE `encargados`
  ADD CONSTRAINT `encargados_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`);

--
-- Filtros para la tabla `puntajes`
--
ALTER TABLE `puntajes`
  ADD CONSTRAINT `puntajes_ibfk_1` FOREIGN KEY (`id_viaje`) REFERENCES `viajes` (`id_viaje`);

--
-- Filtros para la tabla `viajes`
--
ALTER TABLE `viajes`
  ADD CONSTRAINT `viajes_ibfk_1` FOREIGN KEY (`id_encargado`) REFERENCES `encargados` (`id_encargado`),
  ADD CONSTRAINT `viajes_ibfk_2` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`),
  ADD CONSTRAINT `viajes_ibfk_3` FOREIGN KEY (`id_chofer`) REFERENCES `choferes` (`id_chofer`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
