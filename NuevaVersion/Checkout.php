<?php
require "ConexionBD.php";
require "secciones.php";
?>

<!DOCTYPE html>
<html>
<head>
    <title>Resumen de Compra</title>
    <link rel="stylesheet" href="estilo.css">
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <style>
        /* Estilos para centrar el contenido */
        .centro {
            display: flex;
            justify-content: center;
            align-items: center;
            margin: 0;
        }
        #content {
            text-align: center;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
  <div class=wrapper>
    <?php
      head();
      navBar("LISTADO DE PRODUCTOS","Usuario","Salir");
      listProd();
      footer();
    ?>
      <div class=centro id="content" >
      <form id="checkoutForm" action="/checkout" method="POST">
        <!-- Detalles de la compra -->
        <label for="producto">Producto:</label>
        <input type="text" id="producto" name="producto" required /><br><br>

        <label for="precio">Precio:</label>
        <input type="text" id="precio" name="precio" required /><br><br>

        <label for="cantidad">Cantidad:</label>
        <input type="number" id="cantidad" name="cantidad" required /><br><br>

        <!-- Total -->
        <label for="total">Total:</label>
        <span id="total">0.00</span><br><br>

        <button type="button" onclick="realizarPedido()">Realizar Pedido</button><br><br>
    </form>

    <!-- Div para mostrar el resumen de la compra -->
    <div id="resumenCompra"></div>
</div>

<script>
    // Función para calcular el total automáticamente
    function calcularTotal() {
        var precio = parseFloat($('#precio').val()) || 0;
        var cantidad = parseInt($('#cantidad').val()) || 0;
        var total = precio * cantidad;

        // Actualizar el contenido del span con el nuevo total
        $('#total').text(total.toFixed(2));
    }

    // Agregar eventos para calcular el total al cambiar precio o cantidad
    $('#precio, #cantidad').on('input', calcularTotal);

    function realizarPedido() {
        // Obtener datos del formulario
        var producto = $('#producto').val();
        var precio = parseFloat($('#precio').val());
        var cantidad = parseInt($('#cantidad').val());
        var total = precio * cantidad;

        // Añadir el total al formulario
        $('#checkoutForm').append('<input type="hidden" name="total" value="' + total + '">');

        // Enviar el formulario al servidor
        $('#checkoutForm').submit();
    }
</script>

  </div>
</body>
</html>