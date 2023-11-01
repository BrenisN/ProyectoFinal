<?php
require "secciones.php";
?>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="initial-scale=1, width=device-width" />

    <link rel="stylesheet" href="./global.css" />
    <link rel="stylesheet" href="./ECOMMERCE.css" />
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css2?family=Inter:wght@200;300;400;500;600;700;800&display=swap"
    />
  </head>
  <body>
    <div class="ecommerce">
      <div class="footer21">
        <?php
        foot();
        ?>
      </div>
      <div class="body19">
        <div class="body20"></div>
        <div class="side-panel">
          <?php
          nav();
          ?>
        </div>
      </div>
      <div class="nav42">
        <div class="nav43"></div>
        <div class="registro70" id="registroContainer">
          <div class="registro71"></div>
        </div>
        <div class="registro72" id="registroContainer1">
          <div class="registro73"></div>
          <b class="buscar">Buscar</b>
        </div>
        <div class="registro74" id="registroContainer2">
          <div class="registro73"></div>
          <b class="buscar">Checkout</b>
        </div>
      </div>
      <div class="header42">
        <?php
        head()
        ?>
      </div>
      <img class="image-6-icon" alt="" src="./public/image-6@2x.png" />

      <b class="insumos">.INSUMOS</b>
      <img
        class="herramientas-parnassa-1"
        alt=""
        src="./public/herramientas-parnassa-1@2x.png"
      />

      <img class="he2-1-icon" alt="" src="./public/he2-1@2x.png" />

      <div class="titulo-trabajos4">
        <div class="titulo-trabajos-child2"></div>
        <div class="titulo-trabajos5">
          <div class="trabajos4">Varios</div>
        </div>
      </div>
      
    </div>
  </body>
</html>
