<?php
$con = mysqli_connect("localhost","id21579143_pedidosscm","Dx3GtpFa$","id21579143_pedidosscm");
if(!$con) 
{
    die('Hubo un error al conectarse:'.mysqli_error());
}

$sql="INSERT INTO pedidos VALUES
('$_POST[ID]', 
'$_POST[Nombre]', 
'$_POST[Fecha_Pedido]', 
'$_POST[Desc_Pedido]')";

if (!mysqli_query($con, $sql, MYSQLI_USE_RESULT))
{
    die('Error:'.mysqli_error($con));
}

echo "<center>";
echo "<h1>Pedido agregado!!</h1><br>";
echo "<a href='index.html' class='Link'>Volver a la pagina principal</a>";
mysqli_close($con);
?>
