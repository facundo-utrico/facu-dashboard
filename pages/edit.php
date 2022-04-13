<html>
<head>
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
header("Location:index.php");
}else{
?>
<body>
    <?php include("../nav/facu-nav.php"); ?>
    <?php include("../config/connect.php"); ?>
 
    <?php  $request = $connection->query("SELECT * FROM users WHERE identifier='$_GET[id]'");
    $data = $request->fetch_assoc(); // ejecutando consulta - obteniendo datos

?>
<style>
.editar {
    padding: 50px;
    background-color: rgb(187, 185, 185);
    margin-top: 5%;
    margin-left: 15%;
    border: 2px solid black;
}


    </style>

<div class="col-lg-8 col-md-8 col-sm-12 editar">
    <form method="post">
    <div class="form-group">
        <label for="exampleInputEmail1">Identifier</label>
        <input type="text" name="identifier" class="form-control" placeholder="Identifier" value="<?php echo $data['identifier']; ?>" />
    </div>
    <div class="form-group">
        <label for="exampleInputEmail1">Name</label>
        <input type="text" class="form-control" placeholder="Nombre" value="<?php echo $data['firstname']; ?>" />
    </div>
    <div class="form-group">
        <label for="exampleInputPassword1">Last Name</label>
        <input type="text" name="lastname" class="form-control" placeholder="Apellido" value="<?php echo $data['lastname']; ?>" />
    </div>
    <div class="form-group">
        <label for="exampleInputPassword1">Job</label>
        <input type="text" name="job" class="form-control" placeholder="Trabajo" value="<?php echo $data['job']; ?>" />
    </div>
    <div class="form-group">
        <label for="exampleInputPassword1">Job Grade</label>
        <input type="text" name="job_grade" class="form-control" placeholder="Rango de trabajo" value="<?php echo $data['job_grade']; ?>" />
    </div>
    <div class="form-group">
        <label for="exampleInputPassword1">Phone</label>
        <input type="text" name="phone_number" class="form-control" placeholder="Telefono" value="<?php echo $data['phone_number']; ?>" />
    </div>
    <div class="form-group">
        <label for="exampleInputPassword1">Bank</label>
        <input type="text" class="form-control" id="exampleInputPassword1" placeholder="Dinero en banco" value="<?php echo $data['bank']; ?>" />
    </div>
    <div class="d-flex justify-content-center"><input type="submit" class="btn btn-lg btn-outline-dark" value="UPDATE"></div>
    </form>
</div>
</div>
<div>
    
<?php 

if ($_POST) { // Chequear si hay post.
    
    $hex = $_POST['identifier']; // Pasar los datos del post a variables
    $job = $_POST['job'];
    $firstname = $_POST['firstname'];
    $lastname = $_POST['lastname'];
    $joblevel = $_POST['job_grade'];
    $phone = $_POST['phone_number'];
    $group = $_POST['group'];
    $job_grade = $_POST['job_grade'];
    $bank = $_POST['bank'];



    if ($hex!="" && $job!="") { // Asegurarnos de que los datos no esten vacios
        
        // Escribir la query del update
        if ($connection->query("UPDATE users SET identifier = '$hex', job = '$job', firstname = '$firstname', bank = '$bank', lastname = '$lastname', job_grade = '$joblevel', phone_number = '$phone' WHERE identifier='$_GET[id]'")) 
        {
            header("location:players.php"); 
            // Si la query funciono, se redirige players.php
        }
        else
        {
            echo "An error occurred"; // Si la query no se ejecuta correctamente, printeamos un error
        }
    }
}
?>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>
</body>
</html>

<?php
}
?>

