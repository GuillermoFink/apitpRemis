-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-06-2018 a las 02:56:38
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

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  ADD PRIMARY KEY (`id_vehiculo`),
  ADD KEY `id_chofer` (`id_chofer`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  MODIFY `id_vehiculo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
