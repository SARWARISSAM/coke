<?php 
require_once("includes/config.php");
if(!empty($_POST["TaskId"])) {
  $TaskId=$_POST["TaskId"];
 
    $sql ="SELECT WorkName,id FROM tblwork WHERE (WorkId=:TaskId)";
$query= $dbh -> prepare($sql);
$query-> bindParam(':TaskId', $TaskId, PDO::PARAM_STR);
$query-> execute();
$results = $query -> fetchAll(PDO::FETCH_OBJ);
$cnt=1;
if($query -> rowCount() > 0)
{
  foreach ($results as $result) {?>
<option value="<?php echo htmlentities($result->id);?>"><?php echo htmlentities($result->WorkName);?></option>
<b>Book Name :</b> 
<?php  
echo htmlentities($result->WorkName);
 echo "<script>$('#submit').prop('disabled',false);</script>";
}
}
 else{?>
  
<option class="others"> Invalid Work_ID</option>
<?php
 echo "<script>$('#submit').prop('disabled',true);</script>";
}
}



?>
