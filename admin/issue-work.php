<?php
session_start();
error_reporting(0);
$conn=mysqli_connect("localhost","root","","library");
include('includes/config.php');
if(strlen($_SESSION['alogin'])==0)
    {   
header('location:index.php');
}
else{ 
if(isset($_POST['issue']))
{

$Employee=$_POST['Employee'];   //Actually it is Name of the Employee
$Task=$_POST['Task'];
$sql1="select id from tblemployees where FullName='$Employee'";
$q=mysqli_query($conn,$sql1);
$row1=mysqli_fetch_row($q);
$sql="INSERT INTO tblissuedworkdetails(EmpID,Task,Employee)VALUES(".$row1[0].",'".$Task."','".$Employee."')";
$qt=mysqli_query($conn,$sql);
if($qt)
{
$_SESSION['msg']="Work issued successfully";
header('location:manage-issued-work.php');
}
else 
{
$_SESSION['error']="Something went wrong. Please try again";
header('location:manage-issued-work.php');
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
    <title>TAMS | Issue a new Work</title>
    <!-- BOOTSTRAP CORE STYLE  -->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONT AWESOME STYLE  -->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <!-- CUSTOM STYLE  -->
    <link href="assets/css/style.css" rel="stylesheet" />
    <!-- GOOGLE FONT -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
<style type="text/css">
  .others{
    color:red;
}

</style>


</head>
<body>
      <!------MENU SECTION START-->
<?php include('includes/header.php');?>
<!-- MENU SECTION END-->
    <div class="content-wra
    <div class="content-wrapper">
         <div class="container">
        <div class="row pad-botm">
            <div class="col-md-12"><br>
                <h4 class="header-line">Issue a New Work</h4>
                
                            </div>

</div>
<div class="row">
<div class="col-md-10 col-sm-6 col-xs-12 col-md-offset-1"">
<div class="panel panel-info">
<div class="panel-heading">
Issue a New Work
<br>
</div>
<div class="panel-body">
<form role="form" method="post">

<div class="form-group">
    <?php 
    $sql1="select FullName from tblemployees  ";
    $sql2="select WorkName from tblwork";
    $res1=mysqli_query($conn,$sql1);
    $res2=mysqli_query($conn,$sql2);
    ?>
    <label>Employee Name</label>
    <select  name="Employee" class="form-control" required>
         <option value="">--Select a Employee--</option>
        <?php while($row1=mysqli_fetch_row($res1)) { ?>
        <option value="<?php echo $row1[0]; ?>"><?php echo $row1[0]; ?></option>
        <?php } ?>
    </select>
     
<br>
    <label>Task Name</label> 
    <select name="Task" class="form-control" required>
         <option value="">--Select a Task--</option>
        <?php while($row2=mysqli_fetch_row($res2)) { ?>
        <option value="<?php echo $row2[0]; ?>"><?php echo $row2[0]?></option>
        <?php } ?>
    </select>
<br>    
<input type="submit" name="issue" id="submit" class="btn btn-info">.  Issue Work </button>
                            </form>
                          </div>
                        </div>
                    </div>

        </div>
   
    </div>
    </div>
     <!-- CONTENT-WRAPPER SECTION END-->
  <?php include('includes/footer.php');?>
      <!-- FOOTER SECTION END-->
    <!-- JAVASCRIPT FILES PLACED AT THE BOTTOM TO REDUCE THE LOADING TIME  -->
    <!-- CORE JQUERY  -->
    <script src="assets/js/jquery-1.10.2.js"></script>
    <!-- BOOTSTRAP SCRIPTS  -->
    <script src="assets/js/bootstrap.js"></script>
      <!-- CUSTOM SCRIPTS  -->
    <script src="assets/js/custom.js"></script>

</body>
</html>
<?php } ?>
