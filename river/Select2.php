<?php
error_reporting(E_ALL^E_DEPRECATED);
$con = mysql_connect("localhost","root"); //connecting to the database
if (!$con)
  {
  die('Could not connect: ' . mysql_error()); //if connection is unsuccessful it give a message 'could not connect'
  }

mysql_select_db('RiverSideClub', $con); //tells which database that you want to work with

$result = mysql_query("SELECT * FROM member"); //getting information from emp table

echo "<table border='1'>  
<tr> 
<th>member_number</th>
<th>member_name </th>
<th>sporting_organisation</th>
<th>member_tel_num</th>
<th>member_address </th>
<th>member_dob</th>
<th>member_email</th>
</tr>";

while($row = mysql_fetch_array($result)) //this creates a loop 
  {
  echo "<tr>";
  echo "<td>" . $row['member_number'] . "</td>";
  echo "<td>" . $row['member_name'] . "</td>";
  echo "<td>" . $row['sporting_organisation'] . "</td>";
   echo "<td>" . $row['member_tel_num'] . "</td>";
   echo "<td>" . $row['member_address'] . "</td>";
  echo "<td>" . $row['member_dob'] . "</td>";
   echo "<td>" . $row['member_email'] . "</td>";
  echo "</tr>";
  }
echo "</table>";

mysql_close($con); //closing connection
?> 