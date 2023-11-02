-- sql de Repar

-- Tabla Productos (Alta, Baja y Modificación)
-- Columnas IdProducto, nombre, cantidad, precio, por mayor, imagen, categoria, descripcion 

-- Tabla Usuarios
-- Columnas IdUsuario, sexo, Nombre, edad, email, telefono

-- Tabla Categorias (Alta, Baja y Modificación)
-- Columnas IdCategoria, nombre

-- tabla Compras (Alta, Baja y Modificación)
-- Columnas idCompras, idproductos, idusuario
	

-- Generación de tablas

-- Creo la base de datos repar
CREATE DATABASE IF NOT EXISTS `repar` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `repar`;
-- Creo la tabla productos
CREATE TABLE repar.productos (
    idProducto int (10) UNSIGNED NOT NULL AUTO_INCREMENT,
    nombre varchar(30) NOT NULL,
    cantidad int (10),
    precio int (30),
    porMayor int (30),
    imagen varchar(30) not null,
    idcategoria int(30) unsigned not null,
    descripcion varchar(1000) not null,
    PRIMARY KEY (idProducto)
    ); 
-- Creo la tabla Usuarios
CREATE TABLE repar.usuarios (
    idUsuario int (10) UNSIGNED NOT NULL AUTO_INCREMENT,
    sexo varchar(50) NOT NULL,
    Nombre varchar(50) not null,
    email varchar(30) not null,
    edad int (4) not null,
    telefono varchar(20) not null,
    status TINYINT(1) NOT NULL DEFAULT 0,
    PRIMARY KEY (idUsuario)
); 

-- Creo la tabla compras

CREATE TABLE repar.compras (
    idUsuario  INT(10) UNSIGNED NOT NULL,
    idProducto  INT(10) UNSIGNED NOT NULL,
    idCompra int (10) UNSIGNED NOT NULL AUTO_INCREMENT,    
    PRIMARY KEY (idCompra)
); 

-- Creo tabla Categoria
CREATE TABLE repar.categorias (
    idCategoria int (10) UNSIGNED NOT NULL AUTO_INCREMENT,
    nombre varchar(50) NOT NULL,
    PRIMARY KEY (idCategoria)
); 


-- Asigno la FK dando como referencia a la PK de la otra tabla

ALTER TABLE repar.compras
ADD FOREIGN KEY(idUsuario) REFERENCES repar.usuarios(idUsuario);

ALTER TABLE repar.compras
ADD FOREIGN KEY(idProducto) REFERENCES repar.productos(idProducto);

ALTER TABLE repar.productos
ADD FOREIGN KEY (idCategoria) REFERENCES repar.Categorias(idCategoria);

