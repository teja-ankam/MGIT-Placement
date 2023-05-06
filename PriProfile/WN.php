<?php
 

  $connect = mysqli_connect("localhost","root","") or die("Couldn't Connect");
		mysqli_select_db($connect,"comm") or die("Cant find DB");
    if(isset($_POST['submit'])){
  $sub = $_POST['Subject'];
  $msg = $_POST['Message'];
  $name = $_FILES['image']['name'];
  $tmp_name = $FILES['files']['tmp_name'];
  $location = 'Uploads/';
  $target = 'Uploads/'.$name;
  
  if(move_uploaded_file($tmp_name,$location.$name)){
    echo "File Uploaded";
    $nam = $_POST['nam'];
    $query = mysqli_query($connect,"INSERT INTO prim(Id,Subject,Message,Images_loc,Images_Name) VALUES ('','$sub','$msg','".$target."','$nam')");
  } else echo "<center>Failed</center>";
  }
   ?>
   
   