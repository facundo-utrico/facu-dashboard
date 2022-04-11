<?php
	include("connect.php");
	// include("checkiflogin.php");
	
	
			$query = mysqli_real_escape_string($connection, $_GET["q"]);
			if(empty($query)){
				$sql="SELECT * FROM user_inventory"; 
			} else {
				$sql="SELECT * FROM user_inventory WHERE identifier like '%".$query."%'"; 
			}
			
			$contadorElementos2=0;
			
			if ($result=mysqli_query($connection,$sql))
			{
			  // Fetch one and one row
				while ($row=mysqli_fetch_row($result))
				{
					$identifierInv = $row[1];
                    $item = $row[2];
                    $ammount = $row[3];

					
					$contadorElementos2++;
				?>
                 
				<tr>
				<td>
				<?=$identifierInv?>
				</td>
				<td>
				<?=$item?>  
				</td>
				<td>
				<?=$ammount?>
				</td>
				</tr>				
				<?php
				}
			}
			
	
	mysqli_free_result($result);
	mysqli_close($connection);
?>