<?php
error_reporting(E_ALL ^ E_DEPRECATED);
$con = mysql_connect("localhost","root"); //connecting to database
if (!$con)
  {
  die('Could not connect: ' . mysql_error()); //if connection is unsuccessful it give a message 'could not connect'
  }

mysql_select_db("riverside", $con); //tells which database that you want to work with
  echo "<body style='background-color:peru'>";

$sql="INSERT INTO facility_booking (facility_name, date, start_time, end_time, member_number, instructor_required)
VALUES 
('$_POST[facility_name]','$_POST[date]','$_POST[start_time]','$_POST[end_time]','$_POST[member_number]','$_POST[instructor_required]')";


if (!mysql_query($sql,$con)) //this executes all the code above for the sql statement
  {
  die('Error: ' . mysql_error());
  }
 echo "Your booking has been successfully entered    ";

echo "<a href='../FacilityBookings.html'>Back to Facilities Booking Page</a>";
mysql_close($con); //closing connection to database
?> 