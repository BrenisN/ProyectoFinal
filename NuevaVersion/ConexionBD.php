<?php

$host = "localhost"; // Servidor de la BD
$username = "root"; // User de la BD
$password = ""; // PW para el User
$db_name = "repar"; // Base de dato

//Estableciendo conexion
$con = mysqli_connect($host,$username,$password,$db_name); //Funcion que recibe por parametro las variables declaras mas arriba

if (mysqli_connect_errno()){
    echo "Error al conectar a MySQL: " . mysqli_connect_error();//Mensaje de error en caso de la que conexion ($con) no se pudiera establecer
}

?>