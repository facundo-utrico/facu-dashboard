<?php 

if ($_GET) 
{

include("connect.php"); // chequear conexcion

// Eliminar columna seleccionando por ID (hex)
if ($connection->query("DELETE FROM users WHERE identifier='$_GET[id]'")) 
{
    header("location:players.php"); // refrescar para ver los cambios
}
}


?>