<?php
error_reporting(E_ALL^E_DEPRECATED);
$con = mysql_connect("localhost","root"); //connecting to the database
if (!$con)
  {
  die('Could not connect: ' . mysql_error()); //if connection is unsuccessful it give a message 'could not connect'
  }
echo "<tr>";
mysql_select_db("riverside", $con); //tells which database that you want to work with

$result = mysql_query("SELECT * FROM member"); //getting information from emp table

echo "<table border='1'>  
<tr> 	
<th>Member Number</th>
<th>Member Name </th>
<th>Sporting Organisation</th>
<th>Member_Telephone Number</th>
<th>Member Address </th>
<th>Member DOB</th>
<th>Member email</th>
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
echo "<a href='../MembersPage.html'>Back to Facilities Booking Page</a>";

mysql_close($con); //closing connection
?> 