<?php
	include("../config.php");
	include("../checkiflogin.php");
	
	// if(!in_array("inventarioconsumo", $ArrayPermisosUser)) { //que tenga permisos para acceder a inventarioconsumo
	// 	header('Location: Inicio');
	// 	exit;
	// }
	
			$query = mysqli_real_escape_string($con, $_GET["q"]);
			if(empty($query)){
				$sql="SELECT * FROM items"; 
			} else {
				$sql="SELECT * FROM items WHERE name like '%".$query."%'"; 
			}
			
			$contadorElementos=0;
			
			if ($result=mysqli_query($con,$sql))
			{
			  // Fetch one and one row
				while ($row=mysqli_fetch_row($result))
				{
					$itemName = $row[0];
					$itemLabel = $row[1];
					$itemLimit = $row[2];
					$itemRare = $row[3];
					$can_remove = $row[4];


					if ($itemRare == 1) {
					$textRare = 'Yes';          
					} else {
					$textRare = 'No';
					}


					if ($can_remove == 1) {
					$textRemove = 'Yes';          
					} else {
					$textRemove = 'No';
					}
					
					$contadorElementos++;
				?>
                 
				<tr>
				<td>
				<?=$itemName?>
				</td>
				<td>
				<?=$itemLabel?>  
				</td>
				<td>
				<?=$itemLimit?>
				</td>
				<td>
				<?=$textRare?>
				</td>
				<td>
				<?=$textRemove?>
				</td>
				</tr>					
				<?php
				}
			}
			
	
	mysqli_free_result($result);
	mysqli_close($con);
?>