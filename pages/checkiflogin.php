<?php
	session_start();
	include("config.php");
	
	date_default_timezone_set('America/Argentina/Buenos_Aires');

	// if(isset($_SESSION['user_mail'])){
		
		$con=mysqli_connect($server, $db_user, $db_pass, $database); //Conectamos a la BD
		// Check connection
		if (mysqli_connect_errno())
		{
		  echo "Failed to connect to MySQL: " . mysqli_connect_error(); //Verificamos conexion
		}
		
		// $user_mail = $_SESSION['user_mail'];
		// $check_user = mysqli_num_rows(mysqli_query($con, "SELECT * FROM usuarios WHERE mail = '$user_mail'"));
		// if($check_user>0){ //chequeamos que este correcto
		
		// 	$sql="SELECT tipoUser, permisos FROM usuarios WHERE mail = '$user_mail'"; 
		// 	if ($result=mysqli_query($con,$sql))
		// 	{

		// 		while ($row=mysqli_fetch_row($result))
		// 		{
		// 			$TipoUser = $row[0];
					
		// 			if($TipoUser==1){ //si es administrador
		// 				$PermisosUser = $row[1];
		// 				$ArrayPermisosUser = explode(",", $PermisosUser); //array con los permisos
		// 			}
		// 		}
		// 	}
			
		// } else {
		// 	header('Location: login.php?user_error');
		// 	exit();
		// }
	// } else {
	// 	header('Location: login');
	// 	exit();
	// }
?>