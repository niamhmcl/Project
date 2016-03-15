<?php
error_reporting(E_ALL^E_DEPRECATED);
$con = mysql_connect("localhost","root"); //connecting to the database
if (!$con)
  {
  die('Could not connect: ' . mysql_error()); //if connection is unsuccessful it give a message 'could not connect'
  }

mysql_select_db("riverside", $con); //tells which database that you want to work with

$result = mysql_query("SELECT * FROM earth"); //getting information from emp table
echo $result;
echo "<table border='1'>  
<tr> 
<th>EMPNO</th>
<th>ENAME </th>
</tr>";
echo $result;

while($row = mysql_fetch_array($result)) //this creates a loop 
  {
  echo "<tr>";
  echo "<td>" . $row['liam'] . "</td>";
  echo "<td>" . $row['aoife'] . "</td>";
  echo "</tr>";
  }
echo "</table>";

mysql_close($con); //closing connection
?> 