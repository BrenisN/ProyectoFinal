-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-11-2023 a las 21:54:17
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

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
(1, 'Construcción'),
(2, 'Pintura'),
(3, 'Carpintería'),
(4, 'Plomeria'),
(5, 'Herramientas'),
(6, 'Electricidad'),
(7, 'Gas'),
(8, 'Refrigeración'),
(9, 'Electro'),
(10, 'Mecánica');

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
(1, 'Bolsa de cemento', 10, 50, 40, 'imagenes/imagen1.jpg', 1, 'Este producto es ideal para una variedad de aplicaciones, desde la construcción de estructuras de hormigón hasta la reparación de superficies. Su versatilidad y rendimiento hacen que sea una elección popular entre los profesionales de la construcción y los entusiastas del bricolaje.'),
(2, 'Ladrillo comun', 15, 70, 60, 'imagenes/imagen2.jpg', 1, 'Descripción del Producto\r\nCaracterísticas 12x25x6\r\nIdeal Para levantar Muros'),
(3, 'Casco', 20, 30, 25, 'imagenes/imagen3.jpg', 1, 'Casco ideal para construcción'),
(4, 'Espatula', 8, 45, 35, 'imagenes/imagen4.jpg', 1, 'Ya sea que estés realizando trabajos de construcción, renovación o simplemente necesites una herramienta confiable para tareas domésticas, la Espátula Flexible de 1.5 pulgadas es la elección perfecta. Su resistencia y versatilidad la convierten en una adición valiosa a cualquier caja de herramientas.'),
(5, 'Pincel', 12, 60, 50, 'imagenes/imagen5.jpg', 2, 'El Pincel  Pura Cerda 100% Natural 1 Pulgada es el complemento perfecto para tus proyectos de pintura.'),
(6, 'Rodillo', 18, 80, 70, 'imagenes/imagen6.jpg', 2, 'El Rodillo de 22cm Mayor Carga 50mm es el aliado perfecto para tus proyectos de pintura'),
(7, 'Rasqueta ', 25, 55, 45, 'imagenes/imagen7.jpg', 2, 'Rasqueta para pintores '),
(8, 'Pistola para pintar ', 5, 40, 30, 'imagenes/imagen8.jpg', 2, 'Pistola para pintar cualquiera tipo de cosas mas rapido'),
(9, 'Cerrucho ', 30, 65, 55, 'imagenes/imagen9.jpg', 3, 'Cerrucho especial para la carpinteria'),
(10, 'Sierra', 22, 75, 65, 'imagenes/imagen10.jpg', 3, 'Sierra para carpintería '),
(11, 'Lijadora', 50, 50, 45, 'imagenes/imagen11.jpg', 3, 'Lijadora para carpienteria'),
(12, 'Taladro', 30, 70, 65, 'imagenes/imagen12.jpg', 3, 'Taladro para carpienteria'),
(13, 'Bomba de agua', 30, 250, 230, 'imagenes/imagen13.jpg', 4, 'Bomba elevadora de agua '),
(14, 'Canilla', 200, 10, 8, 'imagenes/imagen14.jpg', 4, 'Canilla de acero'),
(15, 'Tanque de agua', 50, 70, 65, 'imagenes/imagen15.jpg', 4, 'Tanque de agua de 500l'),
(16, 'Tijera corta caño', 140, 6, 4, 'imagenes/imagen16.jpg', 4, 'Tijera corta caño especial para plomeria '),
(17, 'Set de llaves', 30, 30, 28, 'imagenes/imagen17.jpg', 5, 'El set de llaves mas completo'),
(18, 'Kit de destornilladores ', 40, 50, 45, 'imagenes/imagen18.jpg', 5, 'Los mejores destornilladores '),
(19, 'Kit juego llave tubo', 30, 70, 65, 'imagenes/imagen19.jpg', 5, 'El mejor kit de juego llave tubo'),
(20, 'Pela cables', 50, 30, 25, 'imagenes/imagen20.jpg', 5, 'Pela cables para acelerar el trabajo'),
(21, 'Pinza', 150, 30, 28, 'imagenes/imagen21.jpg', 6, 'Pinza para electricista'),
(22, 'Alicate', 200, 15, 12, 'imagenes/imagen22.jpg', 6, 'Alicate para electricista'),
(23, 'Pinza pico de loro', 30, 50, 46, 'imagenes/imagen23.jpg', 6, 'Pinza pico de loro 10 pulgadas'),
(24, 'Tijera electricista', 30, 15, 12, 'imagenes/imagen24.jpg', 6, 'Tijera para electricista'),
(25, 'Manometro', 30, 80, 77, 'imagenes/imagen25.jpg', 7, 'Manometro para gasistas '),
(26, 'Porta mechas', 30, 50, 48, 'imagenes/imagen26.jpg', 7, 'Porta mecha para gasistas '),
(27, ' Lote Codos P/ Caños', 70, 30, 22, 'imagenes/imagen27.jpg', 7, 'Lote de caños'),
(28, 'Pesca tuerca', 30, 20, 25, 'imagenes/imagen28.jpg', 7, 'pesca tuerca para gasista'),
(29, 'Mensula', 400, 50, 48, 'imagenes/imagen29.jpg', 8, 'Mensula para refrigeracion'),
(30, 'Cable', 300, 20, 15, 'imagenes/imagen30.jpg', 8, 'Cable para refrigeracion'),
(31, 'caño', 200, 20, 15, 'imagenes/imagen31.jpg', 8, 'Caño para refrigeracion'),
(32, 'dobladora de caño', 30, 25, 23, 'imagenes/imagen32.jpg', 8, 'Dobladora de caño para refrigeracion'),
(33, 'Ventilador', 200, 50, 40, 'imagenes/imagen33.jpg', 9, 'Ventilador de pie '),
(34, 'Televisor', 300, 100, 95, 'imagenes/imagen34.jpg', 9, 'Televisor smart de 50 pulgadas'),
(35, 'Heladera', 100, 500, 480, 'imagenes/imagen35.jpg', 9, 'Disfrutá de tus alimentos frescos y almacenalos de manera práctica y cómoda en la heladera, la protagonista de la cocina.'),
(36, 'Microondas ', 40, 130, 125, 'imagenes/imagen36.jpg', 9, 'Es ideal para vos ya que presenta simples funciones de uso'),
(37, 'Bateria', 300, 60, 55, 'imagenes/imagen37.jpg', 10, 'Baterias para autos'),
(38, 'Radiador', 200, 100, 95, 'imagenes/imagen38.jpg', 10, 'Radiadores para autos'),
(39, 'Neumatico', 100, 100, 90, 'imagenes/imagen39.jpg', 10, 'neumatico rodado 13'),
(40, ' Crique', 40, 30, 28, 'imagenes/imagen40.jpg', 10, 'Crique hasta 6 toneladas ');

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
  MODIFY `idProducto` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

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
