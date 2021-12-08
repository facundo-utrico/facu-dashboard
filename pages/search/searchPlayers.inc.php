<?php
	include("../config.php");
	include("../checkiflogin.php");
	
	// if(!in_array("inventarioconsumo", $ArrayPermisosUser)) { //que tenga permisos para acceder a inventarioconsumo
	// 	header('Location: Inicio');
	// 	exit;
	// }
	
			$query = mysqli_real_escape_string($con, $_GET["q"]);
			if(empty($query)){
				$sql="SELECT * FROM users"; 
			} else {
				$sql="SELECT * FROM users WHERE name like '%".$query."%'"; 
			}
			
			$contadorElementos=0;
			
			if ($result=mysqli_query($con,$sql))
			{
			  // Fetch one and one row
				while ($row=mysqli_fetch_row($result))
				{
					$identifier = $row[0];
					$money = $row[1];
					$name = $row[3];
					$bank = $row[9];
					$group = $row[11];
					$level = $row[28];
					$boostime = $row[34];
					$isDead = $row[17]; 

					if ($isDead == 1) {
					$textIsDead = 'Yes';          
					} else {
					$textIsDead = 'No';
					}
					
					$contadorElementos++;
				?>
                 
				<tr>
				<td>
				<a href="ElementoInventarioConsumo?"><?=$name?></a>
				</td>
				<td>
				<?=$identifier?>
				</td>
                  <td>
				<?=$bank?>  
				</td>
                  <td>
				<?=$money?>
				</td>
                  <td>
				<?=$level?>
				</td>
                  <td>
				<?=$group?>
				</td>
                  <td>
				<?=$boostime?>
					</td>
                  <td>
				<?=$textIsDead?>
					</td>
				</tr>					
				<?php
				}
			}
			
	
	mysqli_free_result($result);
	mysqli_close($con);
?>