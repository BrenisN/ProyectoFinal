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
          <a class="catItem">Construccion</a>
          <a class="catItem">Pintura</a>
          <a class="catItem">Carpinteria</a>
          <a class="catItem">Plomeria</a>
          <a class="catItem">Herramientas</a>
          <a class="catItem">Electricidad</a>
          <a class="catItem">GAS</a>
          <a class="catItem">Refrigeracion</a>
          <a class="catItem">Electro</a>
          <a class="catItem">Mecanica</a>
        </div>
      </div>
      '
;}

function listProd(){
  echo'
      <div class="listProd">

      </div>
      '
;}

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