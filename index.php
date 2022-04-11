<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Style link -->
    <link rel="stylesheet" href="login.css">
    <!-- Bootstrap Link -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <!-- Bootrstrap JS -->
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    <!-- Titulo -->
    <title>Administration Panel</title>
</head>
<body>

<!--  -->
<form id="formulario" class="col-lg-3 col-md-2 col-sm-12" action="islogged.php" method="POST">
    <div class="d-flex justify-content-center"><h1>LOGIN</h1></div>
    <div class="d-flex justify-content-center div-foto"><img id="login-foto" src="img/logo.png" alt="Logo de Facundo" class="img-thumbnail"></div>
    <div class="form-group">
        <label for="exampleInputEmail1" class="monserrat">User</label>
        <input type="text" class="form-control login-form" id="exampleInputEmail1" name="username" aria-describedby="emailHelp" placeholder="User" required>
        <small id="emailHelp" class="form-text text-muted">Dont share this info.</small>
    </div>
    <div class="form-group">
        <label for="exampleInputPassword1" class="monserrat">Password</label>
        <input type="password" class="form-control login-form monserrat" name="password"  id="exampleInputPassword1" placeholder="Password" required>
    </div>
    <div class="form-check">
        <input type="checkbox" class="form-check-input" id="exampleCheck1">
        <label class="form-check-label monserrat" for="exampleCheck1">Save</label>
    </div>
    <div class="d-flex justify-content-center"><input type="submit" value="Login" class="btn btn-lg btn-outline-dark"></input></div>
    <div class="love"><small id="emailHelp" class="form-text text-muted"><p id="amor"></p>(WIP) Made with &#10084;&#65039; by <a href="https://github.com/facundo-utrico" target="blank">Facu</a></p></small></div>
</form>



    
</body>
</html>