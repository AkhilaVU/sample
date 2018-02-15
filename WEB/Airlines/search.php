<?php
ini_set('display_errors', 'Off');
session_start();
$page = "search";
$maxAdults = 10;
$maxChildren = 5;
?>
<!DOCTYPE html>
<html>
<head>
<title>Airlines Booking</title>
</head>
<body>

<div style="margin-left:15%;padding:1px 16px;height:1000px;">
  <h2>AIR ASIA</h2>
  <h3>WELCOMES YOU</h3>
  <form action= "results.php" method="POST" onSubmit="return checkdest();">
<fieldset style="width: 90%; margin: auto">
<legend>Search a flight now!</legend>
<p>
From: <input type="text" name="from" id="fromDest" onkeyup="fromDestinations(this.value)" value="<?php  if ($_SERVER['REQUEST_METHOD'] == 'GET') { echo $_GET['from']; } ?>"> 
<div id="fromSearch" style="width: 23%;margin-top: -11px;margin-bottom: 10px;"></div> 
</p>
<p>
To: <input type="text" name="to" style="margin-left:18px" id="toDest" onkeyup="toDestinations(this.value)" value="<?php  if (($_SERVER['REQUEST_METHOD'] == 'GET')) { echo $_GET['to']; } ?>">
<div id="toSearch" style="width: 23%;margin-top: -11px;margin-bottom: 10px;"></div> 
</p>
<p>
Date: <input type="text" name="fromDate" style="margin-left: 4px" id="fromDate" value="<?php  if ($_SERVER['REQUEST_METHOD'] == 'POST') { echo $_POST["fromDate"]; } ?>">
</p>
<p>
Adult: <select name="adult">
<?php 
for($counter=1;$counter<=$maxAdults;$counter++) {
echo '<option value = "' . $counter . '">' . $counter . '</option>';
}
?>
</select>
Child: <select name="child">
<?php 
for($counter=0;$counter<=$maxChildren;$counter++) {
echo '<option value = "' . $counter . '">' . $counter . '</option>';
}
?>
</select>
</p>
<p><input type="submit" value="SEARCH"></p>

<p><input type="button" value="Back" onclick="window.location.href='home.php'"></p>
</fieldset>
</form>
</div>

</body>

<script type="text/javascript">

if(document.getElementById('fromDate').value == '') {
var today = new Date();
var dd = today.getDate();
var mm = today.getMonth()+1; //January is 0!
var yyyy = today.getFullYear();

if(dd<10) {
    dd = '0'+dd
} 

if(mm<10) {
    mm = '0'+mm
} 

today = dd + '/' + mm + '/' + yyyy;
document.getElementById('fromDate').value = today;
}

function checkdest() {

	var fromDest = document.getElementById("fromDest").value;
	var toDest = document.getElementById("toDest").value;

	if (fromDest == '' | toDest == '') {
		alert('Departure and Arrival are empty');
		return false;
	}

    if (fromDest == toDest)
	{
		alert('Departure and Arrival cannot be the same!');
		return false;
	}


	return true;

}

</script>
</html>