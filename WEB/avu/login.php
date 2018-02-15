<?php
   include("dbConnect.php");
   session_start();

   if($_SERVER["REQUEST_METHOD"] == "POST") {

      $myusername = mysqli_real_escape_string($con,$_POST['username']);
      $mypassword = mysqli_real_escape_string($con,$_POST['password']);

      $sql = "SELECT id FROM login WHERE username = '$myusername' and password = '$mypassword'";
      $result = mysqli_query($con,$sql);
      $row = mysqli_fetch_array($result,MYSQLI_ASSOC);
      //$active = $row['active'];

      $count = mysqli_num_rows($result);

      // If result matched $myusername and $mypassword, table row must be 1 row

      if($count == 1) {
         //session_register("myusername");
         $_SESSION['login_user'] = $myusername;

         header("location: welcome.php");
      }else 
      {

         header( "location: login_failed.php");
      }

   }
?>

