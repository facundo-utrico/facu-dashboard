<?php
session_start();
ob_start();
session_destroy();
// echo "Cerraste sesión. Usted es redirigido a la página de inicio";
header("Refresh: 1; url=index.php");
ob_end_flush();
?>