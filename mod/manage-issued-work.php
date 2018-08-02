<?php
session_start();
error_reporting(0);
$conn=mysqli_connect("localhost","root","","library");
include('includes/config.php');
if(strlen($_SESSION['mlogin'])==0)
    {   
header('location:index.php');
}
else{ 

    ?>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>TAMS | Manage Issued Works</title>
    <!-- BOOTSTRAP CORE STYLE  -->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONT AWESOME STYLE  -->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <!-- DATATABLE STYLE  -->
    <link href="assets/js/dataTables/dataTables.bootstrap.css" rel="stylesheet" />
    <!-- CUSTOM STYLE  -->
    <link href="assets/css/style.css" rel="stylesheet" />
    <!-- GOOGLE FONT -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />

</head>
<body>
      <!------MENU SECTION START-->
<?php include('includes/header.php');?>
<!-- MENU SECTION END-->
    <div class="content-wrapper">
         <div class="container">
        <div class="row pad-botm">
            <div class="col-md-12">
                <h4 class="header-line">Manage Issued Work</h4>
    </div>
     <div class="row">
 <!--   <?php if($_SESSION['error']!="")
    {?>
<div class="col-md-6">
<div class="alert alert-danger" >
 <strong>Error :</strong> 

</div>
</div>
<?php } ?>
<?php if($_SESSION['msg']!="")
{?>
<div class="col-md-6">
<div class="alert alert-success" >
 <strong>Success :</strong> 
 
</div>
</div>
<?php } ?>



   <?php if($_SESSION['delmsg']!="")
    {?><!--
<div class="col-md-6">
<div class="alert alert-success" >
 <strong>Success :</strong> 

</div>
</div>-->
<?php } ?>

</div>


        </div>
            <div class="row">
                <div class="col-md-12">
                    <!-- Advanced Tables -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                          Issued Works
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>Employee Name</th>
                                            <th>Project Name</th>        
                                            <th>Issued Date</th>
                                            <th>Completion Date</th>
                                          
                                        </tr>
                                    </thead>
      <?php 
       $sql="select * from tblissuedworkdetails order by tblissuedworkdetails.id desc";
        $res=mysqli_query($conn,$sql);
        $cnt=1;
       ?>
       <tbody>
           <?php
           while ($row=mysqli_fetch_row($res)) 
           {
            if($row[5]=="")
            {
                $var="Not Completed yet";
            }
            else
            {
                $var=$row[5];
            }
            echo 
            '<tr>
            <td class="center">'.$cnt.'</td>
            <td class="center">'.$row[3].'</td>  
            <td class="center">'.$row[2].'</td>
            <td class="center">'.$row[4].'</td>
            <td class="center">'.$var.'</td>
       
            </tr>';
            $cnt=$cnt+1;  } 
            ?>
          
       </tbody>
                                </table>
                            </div>
                            
                        </div>
                    </div>
                    <!--End Advanced Tables -->
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
    <!-- DATATABLE SCRIPTS  -->
    <script src="assets/js/dataTables/jquery.dataTables.js"></script>
    <script src="assets/js/dataTables/dataTables.bootstrap.js"></script>
      <!-- CUSTOM SCRIPTS  -->
    <script src="assets/js/custom.js"></script>
</body>
</html>
<?php } ?>
