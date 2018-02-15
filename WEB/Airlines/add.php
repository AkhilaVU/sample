<?php

require_once("dbConnect.php");

$destCode=$_POST['destCode'];
$destName=$_POST['destName'];
$fromDest=$_POST['fromDest'];
$toDest=$_POST['toDest'];
$depDate=$_POST['depDate'];
$arDate=$_POST['arDate'];
$class=$_POST['class'];

$sql = "INSERT INTO flights
VALUES ('DEFAULT','$destCode','$destName','$fromDest','$toDest','$depDate','DEFAULT','$arDate','DEFAULT','$class','DEFAULT')";
if (mysqli_query($con, $sql)) {
	echo "<script type='text/javascript'>alert('Inserted Successfully!')</script>";
	header( "refresh:0.5;url=staffs-functions.php" );
} else {
    echo "<script type='text/javascript'>alert('Error!')</script>";
	header( "refresh:0.5;url=staffs-functions.php" );
}

?>