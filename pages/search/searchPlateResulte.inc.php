<?php
	include("../config.php");
	include("../checkiflogin.php");
	
	// if(!in_array("inventarioconsumo", $ArrayPermisosUser)) { //que tenga permisos para acceder a inventarioconsumo
	// 	header('Location: Inicio');
	// 	exit;
	// }
	
			$query = mysqli_real_escape_string($con, $_GET["q"]);
			if(empty($query)){
				$sql="SELECT * FROM inventories"; 
			} else {
				$sql="SELECT * FROM inventories WHERE identifier like '%".$query."%'"; 
			}
			
			$contadorElementos2=0;
			
			if ($result=mysqli_query($con,$sql))
			{
			  // Fetch one and one row
				while ($row=mysqli_fetch_row($result))
				{
					$identifierInv = $row[1];
                    $typeInv = $row[2];
                    $dataInv = $row[3];

					
					$contadorElementos2++;
				?>
                 
				<tr>
				<td>
				<?=$identifierInv?>
				</td>
				<td>
				<?=$typeInv?>  
				</td>
				<td>
				<?=$dataInv?>
				</td>
				</tr>				
				<?php
				}
			}
			
	
	mysqli_free_result($result);
	mysqli_close($con);
?>