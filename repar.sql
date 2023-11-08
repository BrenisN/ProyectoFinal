-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-11-2023 a las 22:59:22
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `repar`
--
-- Creo la base de datos repar
CREATE DATABASE IF NOT EXISTS `repar` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `repar`;
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `idCategoria` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`idCategoria`, `nombre`) VALUES
(1, 'Categoría 1'),
(2, 'Categoría 2'),
(3, 'Categoría 3'),
(4, 'Categoría 4'),
(5, 'Categoría 5'),
(6, 'Categoría 6'),
(7, 'Categoría 7'),
(8, 'Categoría 8'),
(9, 'Categoría 9'),
(10, 'Categoría 10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE `compras` (
  `idUsuario` int(10) UNSIGNED NOT NULL,
  `idProducto` int(10) UNSIGNED NOT NULL,
  `idCompra` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `compras`
--

INSERT INTO `compras` (`idUsuario`, `idProducto`, `idCompra`) VALUES
(1, 1, 21),
(2, 2, 22),
(3, 3, 23),
(4, 4, 24),
(5, 5, 25),
(6, 6, 26),
(7, 7, 27),
(8, 8, 28),
(9, 9, 29),
(10, 10, 30);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `idProducto` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `cantidad` int(10) DEFAULT NULL,
  `precio` int(30) DEFAULT NULL,
  `porMayor` int(30) DEFAULT NULL,
  `imagen` varchar(30) NOT NULL,
  `idcategoria` int(30) UNSIGNED NOT NULL,
  `descripcion` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`idProducto`, `nombre`, `cantidad`, `precio`, `porMayor`, `imagen`, `idcategoria`, `descripcion`) VALUES
(1, 'Producto 1', 10, 50, 40, 'imagenes/imagen1.jpg', 1, 'Descripción del Producto 1'),
(2, 'Producto 2', 15, 70, 60, 'imagenes/imagen2.jpg', 2, 'Descripción del Producto 2'),
(3, 'Producto 3', 20, 30, 25, 'imagenes/imagen3.jpg', 1, 'Descripción del Producto 3'),
(4, 'Producto 4', 8, 45, 35, 'imagenes/imagen4.jpg', 2, 'Descripción del Producto 4'),
(5, 'Producto 5', 12, 60, 50, 'imagenes/imagen5.jpg', 1, 'Descripción del Producto 5'),
(6, 'Producto 6', 18, 80, 70, 'imagenes/imagen6.jpg', 3, 'Descripción del Producto 6'),
(7, 'Producto 7', 25, 55, 45, 'imagenes/imagen7.jpg', 3, 'Descripción del Producto 7'),
(8, 'Producto 8', 5, 40, 30, 'imagenes/imagen8.jpg', 2, 'Descripción del Producto 8'),
(9, 'Producto 9', 30, 65, 55, 'imagenes/imagen9.jpg', 1, 'Descripción del Producto 9'),
(10, 'Producto 10', 22, 75, 65, 'imagenes/imagen10.jpg', 3, 'Descripción del Producto 10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `idUsuario` int(10) UNSIGNED NOT NULL,
  `sexo` varchar(50) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `Password` varchar(30) NOT NULL,
  `edad` int(4) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idUsuario`, `sexo`, `Nombre`, `email`, `Password`, `edad`, `telefono`, `status`) VALUES
(1, 'Masculino', 'Usuario 1', 'usuario1@email.com', '12345678', 25, '1234567890', 1),
(2, 'Femenino', 'Usuario 2', 'usuario2@email.com', '12345678', 30, '9876543210', 1),
(3, 'Otro', 'Usuario 3', 'usuario3@email.com', '12345678', 22, '5678901234', 0),
(4, 'Femenino', 'Usuario 4', 'usuario4@email.com', '12345678', 28, '6789012345', 1),
(5, 'Masculino', 'Usuario 5', 'usuario5@email.com', '12345678', 35, '8901234567', 0),
(6, 'Otro', 'Usuario 6', 'usuario6@email.com', '12345678', 26, '0123456789', 1),
(7, 'Masculino', 'Usuario 7', 'usuario7@email.com', '12345678', 29, '2345678901', 1),
(8, 'Femenino', 'Usuario 8', 'usuario8@email.com', '12345678', 31, '3456789012', 0),
(9, 'Otro', 'Usuario 9', 'usuario9@email.com', '12345678', 24, '4567890123', 1),
(10, 'Femenino', 'Usuario 10', 'usuario10@email.com', '12345678', 27, '5678901234', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`idCategoria`);

--
-- Indices de la tabla `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`idCompra`),
  ADD KEY `idUsuario` (`idUsuario`),
  ADD KEY `idProducto` (`idProducto`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`idProducto`),
  ADD KEY `idcategoria` (`idcategoria`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idUsuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `idCategoria` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `compras`
--
ALTER TABLE `compras`
  MODIFY `idCompra` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `idProducto` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idUsuario` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `compras`
--
ALTER TABLE `compras`
  ADD CONSTRAINT `compras_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuarios` (`idUsuario`),
  ADD CONSTRAINT `compras_ibfk_2` FOREIGN KEY (`idProducto`) REFERENCES `productos` (`idProducto`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`idcategoria`) REFERENCES `categorias` (`idCategoria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
