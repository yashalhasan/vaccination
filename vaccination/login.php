<?php

session_start();

if(isset($_SESSION["parent_id"])){
    echo "<script>window.location.assign('index.php')</script>";
   } 

   if(isset($_SESSION["hospital_id"])){
    echo "<script>window.location.assign('hospital_index.php')</script>";
   } 
?>


<!doctype html>
<html lang="en">
  <head>
  <link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
     <!-- basic -->
     <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <!-- mobile metas -->
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="viewport" content="initial-scale=1, maximum-scale=1">
      <!-- site metas -->
      <title>login</title>
      <meta name="keywords" content="">
      <meta name="description" content="">
      <meta name="author" content="">
     
      
      <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
 <!-- basic -->
 <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <!-- mobile metas -->
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="viewport" content="initial-scale=1, maximum-scale=1">
     
      <!-- bootstrap css -->
      <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
      <!-- style css -->
      <link rel="stylesheet" type="text/css" href="css/style.css">
      <!-- Responsive-->
      <link rel="stylesheet" href="css/responsive.css">
      <!-- fevicon -->
      <link rel="icon" href="images/fevicon.png" type="image/gif" />
      <!-- Scrollbar Custom CSS -->
      <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
      <!-- Tweaks for older IEs-->
      <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
      <!-- owl stylesheets --> 
      <link rel="stylesheet" href="css/owl.carousel.min.css">
      <link rel="stylesheet" href="css/owl.theme.default.min.css">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
   </head>
   
  
   <style>
     body{
      background-color:#ECECEC;
     }
     
    .login-container{
    margin-top: 5%;
    margin-bottom: 5%;
    background-color:white;
}
.login-logo{
    position: relative;
    margin-left: -41.5%;
}
.login-logo img{
    position: absolute;
    width: 20%;
    margin-top: 19%;
    background: #282726;
    border-radius: 4.5rem;
    padding: 5%;
}
.login-form-1{
    padding: 9%;
    background:#282726;
    box-shadow: 0 5px 8px 0 rgba(0, 0, 0, 0.2), 0 9px 26px 0 rgba(0, 0, 0, 0.19);
}
.login-form-1 h3{
    text-align: center;
    margin-bottom:12%;
    color:#fff;
    font-weight:900;
    font-size:25px;
}
.login-form-2{
    padding: 9%;
    background: #CC7DFF;
    box-shadow: 0 5px 8px 0 rgba(0, 0, 0, 0.2), 0 9px 26px 0 rgba(0, 0, 0, 0.19);
}
.login-form-2 h3{
    text-align: center;
    margin-bottom:12%;
    color: #fff;
    font-weight:900;
    font-size:25px;
}
.btnSubmit{
    font-weight: 600;
    width: 50%;
    color: #282726;
    background-color: #fff;
    border: none;
    border-radius: 1.5rem;
    padding:2%;
}
.btnForgetPwd{
    color: #fff;
    font-weight: 600;
    text-decoration: none;
}
.btnForgetPwd:hover{
    text-decoration:none;
    color:#fff;
}


  
   </style>
  </head>
  <body>
    
  <?php
include('navbar.php');
?>
 
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<div class="container login-container">
            <div class="row">
                <div class="col-md-6 login-form-1">
                    <h3>patient login</h3>
                    <div id="alert"></div>
                    <form action="" method="post">
                    
                        <div class="form-group">
                            <input type="text" class="form-control" name="email" required placeholder="Your Email *"  />
                        </div>
                        <div class="form-group">
                            <input type="password" name="password" required class="form-control" placeholder="Your Password *" />
                        </div>
                        <div class="form-group">
                            <input type="submit" name="btn" class="btnSubmit" value="Login" />
                        </div>
                        <div class="form-group">
                        not have an account?   <a href="signup1.php" class="btnForgetPwd">signup</a>
                        </div>
</form>
                </div>

                <div class="col-md-6 login-form-2">
                    
                    <h3>Hospital Login </h3>
                    <div id="alert1"></div>
                    <form action="" method="post">
                        <div class="form-group">
                            <input type="text" class="form-control" name="email" placeholder="Your Email *" value="" />
                        </div>
                        <div class="form-group">
                            <input type="password" class="form-control" name="password" placeholder="Your Password *" value="" />
                        </div>
                        <div class="form-group">
                            <input type="submit" name="btn1" class="btnSubmit" value="Login" />
                        </div>
                       
                    </form>
                </div>
            </div>
        </div>



<?php
    
  
include("Admin/connection.php");
if(isset($_POST["btn"])){

    $data = mysqli_query($con,"select * from parent where email = '".$_POST["email"]."' and password = '".$_POST["password"]."' ");
    if($user_data = mysqli_fetch_array($data)){
        $_SESSION["parent_name"] = $user_data["name"];
        $_SESSION["parent_id"] = $user_data["id"];
        echo "<script>document.getElementById('alert').innerHTML = `<div class='alert alert-success alert-dismissible fade show' role='alert'>Successfully LoggedIn<button type='button' class='close' data-dismiss='alert' aria-label='Close'<span aria-hidden='true'>&times;</span></button></div>` </script>";
      
        echo "<script>setTimeout(function(){  window.location.assign('index.php');  }, 1000); </script>";
    }
    else{
      echo "<script>document.getElementById('alert').innerHTML = `<div class='alert alert-danger alert-dismissible fade show' role='alert'>Invalid<button type='button' class='close' data-dismiss='alert' aria-label='Close'<span aria-hidden='true'>&times;</span></button></div>` </script>";
    }
  }



?>

<?php
    
  
include("Admin/connection.php");
if(isset($_POST["btn1"])){

    $data3 = mysqli_query($con,"select * from hospital where email = '".$_POST["email"]."' and password = '".$_POST["password"]."' and status = 'Active' ");
    if($user_data2 = mysqli_fetch_array($data3)){
        $_SESSION["hospital_name"] = $user_data2["name"];
        $_SESSION["hospital_id"] = $user_data2["id"];
        echo "<script>document.getElementById('alert1').innerHTML = `<div class='alert alert-success alert-dismissible fade show' role='alert'>Successfully LoggedIn<button type='button' class='close' data-dismiss='alert' aria-label='Close'<span aria-hidden='true'>&times;</span></button></div>` </script>";
      
        echo "<script>setTimeout(function(){  window.location.assign('hospital_index.php');  }, 1000); </script>";
    }
    else{
      echo "<script>document.getElementById('alert1').innerHTML = `<div class='alert alert-danger alert-dismissible fade show' role='alert'>Invalid<button type='button' class='close' data-dismiss='alert' aria-label='Close'<span aria-hidden='true'>&times;</span></button></div>` </script>";
    }
       
        
    }
  
  


?>

    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    -->
<?php

include('footer.php');
?>
  </body>
  <script src="assets/js/jquery-3.2.1.min.js"></script>
<script src="assets/js/popper.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/js/script.js"></script>
<script>
         $(document).ready(function(){
         $(".fancybox").fancybox({
         openEffect: "none",
         closeEffect: "none"
         });
              
         $(".zoom").hover(function(){
              
         $(this).addClass('transition');
         }, function(){
              
         $(this).removeClass('transition');
         });
         });
      </script> 
      <script>
         function openNav() {
         document.getElementById("myNav").style.width = "100%";
         }
         function closeNav() {
         document.getElementById("myNav").style.width = "0%";
         }
      </script> 
</html>