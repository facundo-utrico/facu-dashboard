<?php
	include("../config.php");
	include("../checkiflogin.php");
	
	// if(!in_array("inventarioconsumo", $ArrayPermisosUser)) { //que tenga permisos para acceder a inventarioconsumo
	// 	header('Location: Inicio');
	// 	exit;
	// }
	
			$query = mysqli_real_escape_string($con, $_GET["q"]);
			if(empty($query)){
				$sql="SELECT * FROM user_inventory"; 
			} else {
				$sql="SELECT * FROM user_inventory WHERE identifier like '%".$query."%'"; 
			}
			
			$contadorElementos=0;
			
			if ($result=mysqli_query($con,$sql))
			{
			  // Fetch one and one row
				while ($row=mysqli_fetch_row($result))
				{
					$identifierPlayer = $row[1];
                    $itemName = $row[2];
                    $itemCount = $row[3];

					
					$contadorElementos++;
				?>
                 
				<tr>
				<td>
				<?=$identifierPlayer?>
				</td>
				<td>
				<?=$itemName?>  
				</td>
				<td>
				<?=$itemCount?>
				</td>
				</tr>			
				<?php
				}
			}
			
	
	mysqli_free_result($result);
	mysqli_close($con);
?>