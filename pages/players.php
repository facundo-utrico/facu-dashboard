<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <!-- Bootstrap Link -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <!-- Bootrstrap JS -->
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    <!-- Titulo -->
<title>facu Admin Panel</title>
</head>
<?php
include("../config/settings.php");

session_start();
if(!isset($_SESSION["login"])){
header("Location:/index.php");
}else{
?>
<body>
    <?php include("../nav/facu-nav.php"); ?>
    <?php include("../config/connect.php"); ?>
    <h1 style="margin-top: 50px; text-align: center; width: 100%; color: #fff; font-size: 20px;">Facu admin - Jugadores</h1>

<div class="input-group">
  <div class="form-outline">
    <input type="search" id="form1" class="form-control" placeholder="Buscar" />
    <label class="form-label" for="form1"></label>
  </div>
</div>

<table class="table table-bordered">
  <thead>
    <tr>
    <th scope="col">Steam</th>
      <th scope="col">Name</th>
      <th scope="col">Group</th>
      <th scope="col">Job</th>
      <th scope="col">Gender</th>
      <th scope="col">Phone</th>
      <th scope="col">Edit</th>
      <th scope="col">Delete</th>
    </tr>
  </thead>
  <tbody>
  <?php 

$request = $connection->query("SELECT * FROM users"); 

while ($row = $request->fetch_assoc()) { 

$hex = $row['identifier'];
$completeName = $row['firstname'].' '.$row['lastname']; 
$usergroup = $row['group'];
$job = $row['job'];
$sex = $row['sex'];
$phone = $row['phone_number']; 

?>
    <tr>
      <th scope="row"><?php echo $hex; ?></th>
      <td><?php echo $completeName; ?></td>
      <td><?php if($usergroup == 'user'){?> User <?php } else {?><font color="red">Admin</font><?php } ?></td>
      <td><font color="#0091ff"><?php echo $job; ?></font></td>
      <td><?php if($sex == 'M') {?><font color="#0091ff">Male</font><?php } else { ?><font color="#ff009d">Female</font><?php } ?></td>
      <td><h5><span class="badge bg-danger"><?php echo $phone; ?></span></h5></td>
      <td><a target="blank" href="edit.php?id=<?php echo $hex; ?>"<button class="btn btn-primary" type="button">Edit</button></td>
      <td><a href="delete.php?id=<?php echo $hex; ?>"<button class="btn btn-danger" type="button">DELETE</button></td>


    </tr>
    <?php 
} 
?>



  </tbody>
</table>



  </tbody>
</table>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>
</body>
</html>

<?php
}
?>

