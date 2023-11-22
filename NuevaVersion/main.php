<?php
require "ConexionBD.php";
require "secciones.php";
?>

<!DOCTYPE html>
<html>
<head>
    <title>Listado de Productos</title>
    <link rel="stylesheet" href="estilo.css">
</head>
<body>
  <div class=wrapper>
    <?php
      head();
      navBar("LISTADO DE PRODUCTOS","Usuario","Salir");
      sideBar();
      listProd($con,"Construccion");
      footer();
    ?>
  </div>
</body>
</html>