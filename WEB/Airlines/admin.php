<?php
require_once("dbConnect.php");

if($_SERVER["REQUEST_METHOD"] == "POST") {

	if(isset($_POST['stafflogin'])) {

      $myusername = mysqli_real_escape_string($con,$_POST['username']);
      $mypassword = mysqli_real_escape_string($con,$_POST['password']);

      $sql = "SELECT id FROM staffs WHERE username = '$myusername' and password = '$mypassword'";
      $result = mysqli_query($con,$sql);
      $row = mysqli_fetch_array($result,MYSQLI_ASSOC);

      $count = mysqli_num_rows($result);

	
      if($count == 1) {
         $_SESSION['login-staff']=$myusername;
         header("location: staffs-functions.php");
      }	else 
      {
         $error = "<h2>Invalid Username/Password</h2>";
      }
	}
}
?>
