<?php
session_start();
$error="";
include('includes/config.php');
if (isset($_POST["submit"])){
    $regestration=$_POST["regno"];
    $Password=$_POST["password"];
    $query="SELECT* FROM student WHERE regno= '$regestration'  && password= '$Password'";
    $finalquery=mysqli_query($connection,$query);
    
    if(mysqli_num_rows($finalquery)>=1){
        $_SESSION['login']=$_POST['regno'];
        $row=mysqli_fetch_assoc($finalquery);
       if($row){
        header("location:enroll_course.php");
       }
    }else{
        $error="Enter valid information";
    }
}
?>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />

    <title>Student Login</title>
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <link href="assets/css/style.css" rel="stylesheet" />
</head>
<body>
    <?php include('includes/header.php');?>
    <div class="content-wrapper">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h4 class="page-head-line">Please Login To Enter </h4>

                </div>

            </div>
            <form name="admin" method="post">
            <div class="row">
                <div class="col-md-6">
                     <label>Enter Reg no : </label>
                        <input type="text" name="regno" class="form-control"  />
                        <label>Enter Password :  </label>
                        <input type="password" name="password" class="form-control"  />
                        <hr />
                        <center><?php echo $error;?> </center>
                        <button type="submit" name="submit" class="btn btn-info"><span class="glyphicon glyphicon-user"></span> &nbsp;Log Me In </button>&nbsp;
                        <div class="signup_link" style="color:black; font-size:16px;4px; line-height:24px; ">
                         Not a member? <a href="student_ragistration.php">Signup</a>
                     </div>
                </div>
                </form>

                <div class="col-md-6">
                    <div class="info">
                
                        <img class="profile" src="background.jpg" alt="background">
                    </div>
                       
                    </div>
                                  </div>
        </div>
    </div>
    <!-- CONTENT-WRAPPER SECTION END-->
    <?php include('includes/footer.php');?>
    <!-- FOOTER SECTION END-->
    <!-- JAVASCRIPT AT THE BOTTOM TO REDUCE THE LOADING TIME  -->
    <!-- CORE JQUERY SCRIPTS -->
    <script src="assets/js/jquery-1.11.1.js"></script>
    <!-- BOOTSTRAP SCRIPTS  -->
    <script src="assets/js/bootstrap.js"></script>
</body>
</html>
