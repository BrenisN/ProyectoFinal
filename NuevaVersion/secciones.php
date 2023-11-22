<?php
require "ConexionBD.php";
?>

<?php

function head(){
    echo'
        <div class=header>
          <a href="main.php">
            <img class=repLogo src="./imagenes/logo-repar.png">
          </a>
        </div>
        '
;}

function navBar($Titulo,$Boton1,$Boton2){
  echo'
      <div class="navBar">
      <div class="TextoBienvenida">
        BIENVENIDO Usuario
      </div>
      <div class="Titulo">
        '.$Titulo.'
      </div>
      <div class="navButtons">
        <button class="navButton">'.$Boton1.'</button>
        <a href="login.php" class="navButton">'.$Boton2.'</a>
        </div>
      </div>
      '
;}

function sideBar(){
  echo'
      <div class="sideBar">
        <div class="sideProd">
          <a href="main.php?CATEGORIA=1" class="catItem">Construccion</a>
          <a href="main.php?CATEGORIA=2" class="catItem">Pintura</a>
          <a href="main.php?CATEGORIA=3" class="catItem">Carpinteria</a>
          <a href="main.php?CATEGORIA=4" class="catItem">Plomeria</a>
          <a href="main.php?CATEGORIA=5" class="catItem">Herramientas</a>
          <a href="main.php?CATEGORIA=6" class="catItem">Electricidad</a>
          <a href="main.php?CATEGORIA=7" class="catItem">GAS</a>
          <a href="main.php?CATEGORIA=8" class="catItem">Refrigeracion</a>
          <a href="main.php?CATEGORIA=9" class="catItem">Electro</a>
          <a href="main.php?CATEGORIA=10" class="catItem">Mecanica</a>
        </div>
      </div>
      '
;}

function listProd($con) {
  if(isset($_GET["CATEGORIA"])){
    $cat = $_GET["CATEGORIA"];
    $queryProd = "SELECT * FROM productos where idcategoria = ". $cat ;
    $result = mysqli_query($con,$queryProd);
    if ($result->num_rows > 0){
      echo '<div class="list-container">
      <h2>Categoria: '. $cat .'</h2>
      <div class="listProd">';  
    
      while($row = $result->fetch_assoc()) {
        echo '<div class="item">
                <img src="'. $row["imagen"] .'">
                <div class="itemContent">    
                  <h3>'. $row["nombre"] .'</h3>
                  <p>'. $row["descripcion"] .'</p>
                  <p>Precio: $'. $row["precio"] .'</p>
                  <div class="quantity-dropdown">
                    <label for="quantity">Cantidad:</label>
                    <select id="quantity" name="quantity">';
        for ($i = 1; $i <= 10; $i++) {
          echo '<option value="' . $i . '">' . $i . '</option>';
        }
        echo '      </select>
                  </div>
                  <br>
                  <button>COMPRAR</button>
                </div>
              </div>';     
      }

      echo '</div></div>';
    } else {
      echo 'No se encontraron productos';
    }
    $con->close();
  } else {
    echo ' No hay productos para la categoria';
  }
}

function footer(){
  echo'
      <div class="footer">    
        <div class="iconos22">
          <div class="iconos-row">          
            <img class="logo-facebook-icon22" alt=""src="./imagenes/logo-facebook@2x.png"/>
            <img class="logo-ig-icon22" alt="" src="./imagenes/logo-ig@2x.png"/>
            <img class="logo-twitter-icon22" alt="" src="./imagenes/logo-twitter@2x.png"/>
          </div>
          <div class="iconos-row">
            <img class="logo-registrado-icon22" alt="" src="./imagenes/logo-registrado@2x.png"/>
            <div class="repar22"> REP.AR</div>
          </div>  
        </div>
      </div> 
      '
;}

?>