<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Document</title>
</head>
<?php
include("settings.php");

session_start();
if(!isset($_SESSION["login"])){
header("Location:index.php");
}else{
?>
<body>
    <?php include("facu-nav.php"); ?>
    <?php include("connect.php");  ?>

    <?php 
$connection->set_charset("utf8");

$users = $connection->query("SELECT COUNT(*) FROM `users`");
	
$allUsers = $users->fetch_array();

$owned_vehicles = $connection->query("SELECT COUNT(*) FROM `owned_vehicles`");
	
$allCars = $owned_vehicles->fetch_array();

$properties = $connection->query("SELECT COUNT(*) FROM `datastore`");
	
$allProperties = $properties->fetch_array();

$items = $connection->query("SELECT COUNT(*) FROM `items`");
	
$allItems = $items->fetch_array();

$tweets = $connection->query("SELECT COUNT(*) FROM `twitter_tweets`");
	
$allTweets = $tweets->fetch_array();


$ventas = $connection->query("SELECT COUNT(*) FROM `insto_instas`");
	
$allVentas = $ventas->fetch_array();

$jobs = $connection->query("SELECT COUNT(*) FROM `jobs`");
	
$allJobs = $jobs->fetch_array();

$crews = $connection->query("SELECT COUNT(*) FROM `crew`");
	
$allCrews = $crews->fetch_array();

$vips = $connection->query("SELECT COUNT(*) FROM `owned_shops`");
	
$allVips = $vips->fetch_array();

$registeredData = $connection->query("SELECT COUNT(*) FROM `addon_inventory`");
	
$allData = $registeredData->fetch_array();

?>

<div class="row">

  <div class="col-12 grow col-lg-4 col-md-6 col-sm-12">
    <div class="card bg-light mb-3" style="max-width: 28rem;">
      <div class="card-header">Registered Players</div>
      <div class="card-body">
        <h5 class="card-title"><?=$allUsers[0]?></h5>
      </div>
    </div>
  </div>
  <div class="col-12 grow col-lg-4 col-md-6 col-sm-12">
    <div class="card bg-light mb-3" style="max-width: 28rem;">
      <div class="card-header">Vehicles</div>
      <div class="card-body">
        <h5 class="card-title"><?=$allCars[0]?></h5>
      </div>
    </div>
  </div>
  <div class="col-12 grow col-lg-4 col-md-6 col-sm-12">
    <div class="card bg-light mb-3" style="max-width: 28rem;">
      <div class="card-header">Properties</div>
      <div class="card-body">
        <h5 class="card-title"><?=$allProperties[0]?></h5>
      </div>
    </div>
  </div>
  <div class="col-12 grow col-lg-4 col-md-6 col-sm-12">
    <div class="card bg-light mb-3" style="max-width: 28rem;">
      <div class="card-header">Items</div>
      <div class="card-body">
        <h5 class="card-title"><?=$allItems[0]?></h5>
      </div>
    </div>
  </div>
  <div class="col-12 grow col-lg-4 col-md-6 col-sm-12">
    <div class="card bg-light mb-3" style="max-width: 28rem;">
      <div class="card-header">Tweets</div>
      <div class="card-body">
        <h5 class="card-title"><?=$allTweets[0]?></h5>
      </div>
    </div>
  </div>
  <div class="col-12 grow col-lg-4 col-md-6 col-sm-12">
    <div class="card bg-light mb-3" style="max-width: 28rem;">
      <div class="card-header">Jobs</div>
      <div class="card-body">
        <h5 class="card-title"><?=$allJobs[0]?></h5>
      </div>
    </div>
  </div>
  <div class="col-12 grow col-lg-4 col-md-6 col-sm-12">
    <div class="card bg-light mb-3" style="max-width: 28rem;">
      <div class="card-header">Crews</div>
      <div class="card-body">
        <h5 class="card-title"><?=$allCrews[0]?></h5>
      </div>
    </div>
  </div>
  <div class="col-12 grow col-lg-4 col-md-6 col-sm-12">
    <div class="card bg-light mb-3" style="max-width: 28rem;">
      <div class="card-header">Vips</div>
      <div class="card-body">
        <h5 class="card-title"><?=$allVips[0]?></h5>
      </div>
    </div>
  </div>
  <div class="col-12 grow col-lg-4 col-md-6 col-sm-12">
    <div class="card bg-light mb-3" style="max-width: 28rem;">
      <div class="card-header">Users</div>
      <div class="card-body">
        <h5 class="card-title"><?=$allData[0]?></h5>
      </div>
    </div>
  </div>
  <!-- <div class="col-12 grow col-lg-4 col-md-6 col-sm-12">
    <div class="card bg-light mb-3" style="max-width: 28rem;">
      <div class="card-header">Tweets totales</div>
      <div class="card-body">
        <h5 class="card-title"><?=$allTweets[0]?></h5>
      </div>
    </div>
  </div>
  <div class="col-12 grow col-lg-4 col-md-6 col-sm-12">
    <div class="card bg-light mb-3" style="max-width: 28rem;">
      <div class="card-header">Tweets totales</div>
      <div class="card-body">
        <h5 class="card-title"><?=$allTweets[0]?></h5>
      </div>
    </div>
  </div> -->
  <div class="col-12 grow col-lg-4 col-md-6 col-sm-12">
    <div class="card bg-light mb-3" style="max-width: 28rem;">
      <div class="card-header">Instagram ACC Total</div>
        <div class="card-body">
          <h5 class="card-title"><?=$allVentas[0]?></h5>
      </div>
    </div>
  </div>
</div>



<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>
</body>
</html>

<?php
}
?>