<?php

require_once("dbConnect.php");

if ($_SERVER['REQUEST_METHOD'] == 'POST') {

				$fromDest = $_POST["from"];
				$toDest = $_POST["to"];
				$departureDate = $_POST["fromDate"];
				$departureDate = DateTime::createFromFormat('d/m/Y', $departureDate)->format('Y-m-d');

   				$sql = "SELECT * FROM flights WHERE departureDate = '$departureDate' and fromDest='$fromDest' and toDest='$toDest'";
	}

?>

<?php
$page = "search";
$maxAdults = 10;
$maxChildren = 5;
?>
<!DOCTYPE html>
<html>
<head>
<title></title>

</head>
<body>

<div style="margin-left:15%;padding:1px 16px;height:1000px;">
  <h2>AIR ASIA</h2>
  <h3>WELCOMES YOU</h3>
  <form action= "results.php" method="POST" onSubmit="return checkdest();">
<fieldset style="width: 90%; margin: auto">
<legend>Search a flight now!</legend>
<p>
From: <input type="text" name="from" id="fromDest" onkeyup="fromDestinations(this.value)" value="<?php  if ($_SERVER['REQUEST_METHOD'] == 'POST') { echo $_POST["from"]; } ?>"> 
<div id="fromSearch" style="width: 23%;margin-top: -11px;margin-bottom: 10px;"></div> 
</p>
<p>
To: <input type="text" name="to" style="margin-left:18px" id="toDest" onkeyup="toDestinations(this.value)" value="<?php  if ($_SERVER['REQUEST_METHOD'] == 'POST') { echo $_POST["to"]; } ?>">
<div id="toSearch" style="width: 23%;margin-top: -11px;margin-bottom: 10px;"></div> 
</p>

<p>
Date: <input type="text" name="fromDate" style="margin-left: 4px" id="fromDate" value="<?php  if ($_SERVER['REQUEST_METHOD'] == 'POST') { echo $_POST["fromDate"]; } ?>">
</p>

<p>
Adult: <select name="adult">
<?php 
for($counter=1;$counter<=$maxAdults;$counter++) {
	if($counter == (int)$_POST['adult']) {$selected=" selected=\"selected\"";} else {$selected="";}
	echo '<option value = "' . $counter . '"' . $selected . '>' . $counter . '</option>';
}
?>
</select>
Child: <select name="child">
<?php 
for($counter=0;$counter<=$maxChildren;$counter++) {
	if($counter == (int)$_POST['child']) {$selected=" selected=\"selected\"";} else {$selected="";}
	echo '<option value = "' . $counter . '"' . $selected . '>' . $counter . '</option>';
}
?>
</select>
</p>
<p><input type="submit" value="SEARCH"></p>

<p><input type="button" value="Back" onclick="window.location.href='home.php'"></p></fieldset>
</form>



<?php  if ($_SERVER['REQUEST_METHOD'] == 'POST') { 
echo "<h2 style=\"text-align: center;text-decoration: underline;\"> Results </h2>";
	if($result = mysqli_query($con, $sql)){
		$count = mysqli_num_rows($result);
		if($count == 0) 
			{ echo "<h3 style=\"text-align: center; color:red\">There are no flights available!</h3>";
	} else { echo "<p style=\"text-align: center; font-size: 18px;\">There are <strong style=\"font-size: 30px; color:green\">" . $count . "</strong> flights available!</p>"; 
		}
       
	}
}

else {
	header("location:search.php");
}

?>






</div>

</body>

<script type="text/javascript">



function checkdest() {

	var fromDest = document.getElementById("fromDest").value;
	var toDest = document.getElementById("toDest").value;

	if (fromDest == '' | toDest == '') {
		alert('How can the Departure and Arrival be empty?');
		return false;
	}

    if (fromDest == toDest)
	{
		alert('Departure and Arrival cannot be the same! How can one go from ' + fromDest + ' to ' + toDest + '?');
		return false;
	}


	return true;

}

</script>
</html>