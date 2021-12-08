<?php
	include("../config.php");
	include("../checkiflogin.php");
	
	// if(!in_array("inventarioconsumo", $ArrayPermisosUser)) { //que tenga permisos para acceder a inventarioconsumo
	// 	header('Location: Inicio');
	// 	exit;
	// }
	
			$query = mysqli_real_escape_string($con, $_GET["q"]);
			if(empty($query)){
				$sql="SELECT * FROM owned_vehicles"; 
			} else {
				$sql="SELECT * FROM owned_vehicles WHERE owner like '%".$query."%'"; 
			}
			
			$contadorElementos=0;
			
			if ($result=mysqli_query($con,$sql))
			{
			  // Fetch one and one row
				while ($row=mysqli_fetch_row($result))
				{
					$identifier = $row[1];
                    $plate = $row[7];
                    $type = $row[8];
                    $garageID = $row[10];

					
					$contadorElementos++;
				?>
                 
					<tr>
					<td>
					<?=$identifier?>
					</td>
					<td>
					<?=$plate?>  
					</td>
					<td>
					<?=$type?>
					</td>
					<td>
					<?=$garageID?>
					</td>
					</tr>				
				<?php
				}
			}
			
	
	mysqli_free_result($result);
	mysqli_close($con);
?>