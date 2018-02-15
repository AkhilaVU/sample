<?php

require_once("dbConnect.php");



function getDestinations($con) {
$sql = "SELECT id, name, shortcode FROM destinations";
$result = mysqli_query($con,$sql);
while ($row = mysqli_fetch_array($result,MYSQLI_ASSOC)) {
echo "<option value=\"" . $row['id'] . "\">" . $row['name'] . " (" . $row['shortcode'] . ")</option>";
 }
}


function getCustomerNameFromID($con, $id) {
  $sql = "select name from customers WHERE id = '$id'";
  $result = mysqli_query($con,$sql);
  $row = mysqli_fetch_array($result,MYSQLI_ASSOC);
  return $row['name'];
}

?>
<!DOCTYPE html>
<html>
<head>
<title>Staff Management</title>


</head>
<body>

<div style="margin-left:15%;padding:1px 16px;height:1000px;">

  <h2>AIR ASIA</h2>
  <h3>ADMIN HOME</h3>

<div>
  
  <div>
  <form action= "add.php" method="POST" onSubmit="return checkdest();">
  <fieldset style="text-align: center">
  <legend>Add Flights</legend>
  <p>Flight No: <input type="text" name="destCode"></p>
  <p>Airline Name: <input type="text" name="destName"></p>
  <p>From Destination: <input type="text" name="fromDest" id="fromDest"></p>
  <p>To Destination: <input type="text" name="toDest" id="toDest"></p>
<p>Departure Date: <input type="text" name="depDate" placeholder="yyyy-mm-dd"></p>
<p>Arrival Date: <input type="text" name="arDate" placeholder="yyyy-mm-dd"></p>
<p>Class: <input type="text" name="class"></p>
  <p><input type="submit" name="dest" value="Add Flight"></p>
<p><input type="button" value ="LOGOUT" onclick="window.location.href='adminhm.php'"></p>
  </fieldset>
  </form>
  </div>
</div>
<br>
<?php
$result = mysqli_query($con,"SELECT * FROM flights");

echo "<table border='1'>
<tr>
<th>Flight No</th>
<th>Name</th>
<th>From</th>
<th>To</th>
<th>Departure</th>
<th>Arrival</th>
<th>Class</th>
</tr>";

while($row = mysqli_fetch_array($result))
{
echo "<tr>";
echo "<td>" . $row['flightNo'] . "</td>";
echo "<td>" . $row['airlineName'] . "</td>";
echo "<td>" . $row['fromDest'] . "</td>";
echo "<td>" . $row['toDest'] . "</td>";
echo "<td>" . $row['departureDate'] . "</td>";
echo "<td>" . $row['arrivalDate'] . "</td>";
echo "<td>" . $row['class'] . "</td>";
echo "</tr>";
}
echo "</table>";
?>


</body>
<script type="text/javascript">

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