<?php $connection = new mysqli("localhost", "root", "", "5mbase");

if ($connection->connect_errno > 0) {
    die("<b>Error de conexión:</b> " . $connection->connect_error);
}

$connection->set_charset("utf8");

?>