-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-11-2021 a las 06:48:19
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `relojes`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre_reloj` text NOT NULL,
  `precio` float NOT NULL,
  `oferta` int(11) NOT NULL,
  `marca` text NOT NULL,
  `imagen` text NOT NULL,
  `destacado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre_reloj`, `precio`, `oferta`, `marca`, `imagen`, `destacado`) VALUES
(1, 'Reloj 1', 10000, 50, 'Rolex', '/img/r1.jpg', 0),
(2, 'Reloj 2', 10001, 60, 'Tag Heuer', '/img/r2.jpg', 0),
(3, 'Reloj 3', 50000, 50, 'Rolex', '/img/r3.jpg', 0),
(4, 'Reloj 4', 15000, 50, 'Rolex', '/img/r4.jpg', 0),
(5, 'Reloj 5', 1000, 50, 'Rolex', '/img/r5.jpg', 0),
(6, 'Reloj 6', 20000, 50, 'Cartier', '/img/r6.jpg', 0),
(7, 'Reloj 7', 500000, 50, 'Patek Philippe', '/img/r7.jpg', 0),
(8, 'Reloj 8', 30000, 50, 'Tag Heuer', '/img/r8.jpg', 0),
(9, 'Reloj 9', 600000, 50, 'Cartier', '/img/r9.jpg', 0),
(10, 'Reloj 10', 80000, 50, 'Rolex', '/img/r10.jpg', 0),
(11, 'Reloj 11', 56000, 50, 'Cartier', '/img/r11.jpg', 0),
(12, 'Reloj 12', 400000, 50, 'Patek Philippe\r\n', '/img/r12.jpg', 0),
(13, 'Reloj 13', 75000, 50, 'Rolex', '/img/r13.jpg', 0),
(14, 'Reloj 14', 140000, 50, 'Tag Heuer', '/img/r14.jpg', 0),
(15, 'Reloj 15', 15000, 50, 'Rolex', '/img/r15.jpg', 0),
(16, 'Reloj 16', 100001, 50, 'Rolex', '/img/r16.jpg', 0),
(17, 'reloj 18', 180000, 50, 'rolex', '/img/r3.jpg', 0),
(18, 'reloj 19', 63366, 50, 'rolex', '/img/r15.jpg', 0),
(19, 'reloj 20', 951236, 50, 'rolex', '/img/r11.jpg', 0),
(20, 'reloj 21', 1000000, 0, 'rolex', '/img/r1d.webp', 1),
(21, 'reloj 21', 1000000, 0, 'rolex', '/img/r2d.webp', 1),
(22, 'reloj 22', 1000000, 0, 'rolex', '/img/r3d.webp', 1),
(23, 'reloj 23', 1000000, 0, 'rolex', '/img/r4d.webp', 1),
(24, 'reloj 24', 1000000, 0, 'rolex', '/img/r5d.webp', 1),
(25, 'reloj 26', 1000000, 0, 'rolex', '/img/r6d.webp', 1),
(26, 'reloj 27', 999999, 0, 'tag Hauger', '/img/r2d.webp', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `apellido` text NOT NULL,
  `email` text NOT NULL,
  `celular` int(11) NOT NULL,
  `mensaje` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellido`, `email`, `celular`, `mensaje`) VALUES
(1, 'horacio', 'yeuchuk', 'horamda@gmail.com', 2147483647, 'llamar');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
