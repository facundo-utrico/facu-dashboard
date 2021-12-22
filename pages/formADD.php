<?php
include("config.php");
include("checkiflogin.php");


// 	if(!in_array("inventarioconsumo", $ArrayPermisosUser)) { //que tenga permisos para acceder a inventarioconsumo
// 		header('Location: Inicio');
// 		exit;
// 	}
// ?>


<!--
=========================================================
* Material Dashboard 2 - v3.0.0
=========================================================

* Product Page: https://www.creative-tim.com/product/material-dashboard
* Copyright 2021 Creative Tim (https://www.creative-tim.com)
* Licensed under MIT (https://www.creative-tim.com/license)
* Coded by Creative Tim

=========================================================

* The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
-->
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="../assets/img/favicon.png">
  <title>
    Facu Dashboard
  </title>
  <!--     Fonts and icons     -->
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900|Roboto+Slab:400,700" />
  <!-- Nucleo Icons -->
  <link href="../assets/css/nucleo-icons.css" rel="stylesheet" />
  <link href="../assets/css/nucleo-svg.css" rel="stylesheet" />
  <!-- Font Awesome Icons -->
  <script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>
  <!-- Material Icons -->
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons+Round" rel="stylesheet">
  <!-- CSS Files -->
  <link id="pagestyle" href="../assets/css/material-dashboard.css?v=3.0.0" rel="stylesheet" />
</head>

<?php
							// get users count 
              $sql="SELECT * FROM users"; 
              if ($result=mysqli_query($con,$sql))
              {
                    // Return the number of rows in result set
                $usersCount = mysqli_num_rows( $result );
              }

              $sql="SELECT * FROM owned_vehicles"; 
                if ($result=mysqli_query($con,$sql))
              {
                    // Return the number of rows in result set
                $vehiclesCount = mysqli_num_rows( $result );
              }


  ?>

<body class="g-sidenav-show  bg-gray-200">
<aside onLoad="searchname();" class="sidenav navbar navbar-vertical navbar-expand-xs border-0 border-radius-xl my-3 fixed-start ms-3   bg-gradient-dark" id="sidenav-main">
    <div class="sidenav-header">
      <i class="fas fa-times p-3 cursor-pointer text-white opacity-5 position-absolute end-0 top-0 d-none d-xl-none" aria-hidden="true" id="iconSidenav"></i>
      <a class="navbar-brand m-0" href=" https://demos.creative-tim.com/material-dashboard/pages/dashboard " target="_blank">
        <img src="../assets/img/logo-ct.png" class="navbar-brand-img h-100" alt="main_logo">
        <span class="ms-1 font-weight-bold text-white">Facu Dashboard</span>
      </a>
    </div>
    <hr class="horizontal light mt-0 mb-2">
    <div class="collapse navbar-collapse  w-auto  max-height-vh-100" id="sidenav-collapse-main">
      <ul class="navbar-nav">
      <li class="nav-item">
          <a class="nav-link text-white " href="../pages/dashboard.php">
            <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
              <i class="material-icons opacity-10">home</i>
            </div>
            <span class="nav-link-text ms-1">Dashboard</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-white active bg-gradient-primary" href="../pages/players.php">
            <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
              <i class="material-icons opacity-10">supervised_user_circle</i>
            </div>
            <span class="nav-link-text ms-1">Players</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-white " href="../pages/store.php">
            <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
              <i class="material-icons opacity-10">store</i>
            </div>
            <span class="nav-link-text ms-1">Store</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-white " href="../pages/items.php">
            <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
              <i class="material-icons opacity-10">assignment_turned_in</i>
            </div>
            <span class="nav-link-text ms-1">Search Items</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-white " href="../pages/playerinventories.php">
            <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
            <i class="material-icons opacity-10">inventory_2</i>
            </div>
            <span class="nav-link-text ms-1">Search Player Inventory</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-white " href="../pages/vehicleinventory.php">
            <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
            <i class="material-icons opacity-10">local_shipping</i>
            </div>
            <span class="nav-link-text ms-1">Search Veh Inventories</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-white " href="../pages/vehicledashboard.php">
            <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
                            <i class="material-icons opacity-10">drive_eta</i>

            </div>
            <span class="nav-link-text ms-1">Search Vehicles</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-white " href="../pages/profile.php">
            <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
                            <i class="material-icons opacity-10">account_circle</i>

            </div>
            <span class="nav-link-text ms-1">Profile</span>
          </a>
        </li>
      </ul>
    </div>
    <div class="sidenav-footer position-absolute w-100 bottom-0 ">
      <div class="mx-3">
      </div>
    </div>
  </aside>
  <main class="main-content position-relative max-height-vh-100 h-100 border-radius-lg ">
  <form name="miFormulario1" class="form-horizontal">
  <h1>Insert Item Into DB</h1>
  <div class="form-group col-lg-12 d-flex align-items-center justify-content-center">
    <!-- <label class="col-xs-2 control-label">Name:</label> -->
    <div class="col-xs-10">
      <input placeholder="Name" type="text" id="idDescripcionT" name="txt_Descripcion" class="form-control input-sm">
    </div>
  </div>
  <div class="form-group d-flex align-items-center justify-content-center">
    <!-- <label class="col-xs-2 control-label">Label:</label> -->
    <div class="col-xs-10">
    <input placeholder="Label" type="text" id="idDescripcionT" name="txt_Descripcion" class="form-control input-sm col-lg-12 d-flex align-items-center justify-content-center">
    </div>
  </div>
  <div class="form-group d-flex align-items-center justify-content-center">
    <!-- <label class="col-xs-2 control-label">Limit: </label><br> -->
    <div class="col-xs-10">
    <input  placeholder="Limit" class="form-control col-md-12 col-sm-12 input-sm d-flex" type="text" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1');" />
    </div>
  </div>
  <button type="button" class="col-lg-2 align-items-center justify-content-center btn btn-dark">Insert item</button>
</form>
  </main>
  <!--   Core JS Files   -->
  <script src="../assets/js/core/popper.min.js"></script>
  <script src="../assets/js/core/bootstrap.min.js"></script>
  <script src="../assets/js/plugins/perfect-scrollbar.min.js"></script>
  <script src="../assets/js/plugins/smooth-scrollbar.min.js"></script>
  <script>
    var win = navigator.platform.indexOf('Win') > -1;
    if (win && document.querySelector('#sidenav-scrollbar')) {
      var options = {
        damping: '0.5'
      }
      Scrollbar.init(document.querySelector('#sidenav-scrollbar'), options);
    }
  </script>
  <!-- Github buttons -->
  <script async defer src="https://buttons.github.io/buttons.js"></script>
  <!-- Control Center for Material Dashboard: parallax effects, scripts for the example pages etc -->
  <script src="../assets/js/material-dashboard.min.js?v=3.0.0"></script>
</body>

</html>