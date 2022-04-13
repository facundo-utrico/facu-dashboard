<?php
include("settings.php");
session_start();
ob_start();
if(($_POST["username"]==$user) and ($_POST["password"]==$pass)){
$_SESSION["login"] = "true";
$_SESSION["user"] = $user;
$_SESSION["pass"] = $pass;
header("Location:../pages/resume.php");
}else{
    ?>
<html>
<head>
<title>facu-admin</title>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600&display=swap" rel="stylesheet">
<link rel="stylesheet" href="css/facu-error.css" type="text/css" />
</head>
<body>
    <div class="facu-alert">
        <h1>Nombre de usuario o contraseña incorrecta!</h1>
        <p><b>Usted es redirigido a la página de inicio de sesión..</p>
</div>
</body>
</html>
<?php 
header("Refresh: 2; url=login.php");
}
ob_end_flush();
?>