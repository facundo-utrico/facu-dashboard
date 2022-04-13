<?php
	include("../config/connect.php");
	
	// if(!in_array("inventarioconsumo", $ArrayPermisosUser)) { //que tenga permisos para acceder a inventarioconsumo
	// 	header('Location: Inicio');
	// 	exit;
	// }
	
			$query = mysqli_real_escape_string($connection, $_GET["q"]);
			if(empty($query)){
				$sql="SELECT * FROM items"; 
			} else {
				$sql="SELECT * FROM items WHERE name like '%".$query."%'"; 
			}
			
			$contadorElementos=0;
			
			if ($result=mysqli_query($connection,$sql))
			{
			  // Fetch one and one row
				while ($row=mysqli_fetch_row($result))
				{
					$name = $row[0];
                    $label = $row[1];
                    $limit = $row[2];

					
					$contadorElementos++;
				?>
                 
					<tr>
					<td>
					<?=$name?>
					</td>
					<td>
					<?=$label?>  
					</td>
					<td>
					<?=$limit?>
					</td>
					<td><a target="blank" href="createItem.php?label=<?php echo $label; ?>"<button class="btn btn-primary" type="button">Edit</button></td>
					</tr>				
				<?php
				}
			}
			
	
	mysqli_free_result($result);
	mysqli_close($connection);
?>