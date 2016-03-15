<?php
$con = mysql_connect("localhost","root");
if (!$con)
  {
  die('Could not connect: ' . mysql_error());
  }

mysql_select_db("testempdept", $con);

$result = mysql_query("SELECT * FROM Dept");

echo "<table border='1'>
<tr>
<th>Dept Id</th>
<th>Dept Name</th>
<th>Location</th?
</tr>";

while($row = mysql_fetch_array($result))
  {
  echo "<tr>";
  echo "<td>" . $row['deptno'] . "</td>";
  echo "<td>" . $row['dname'] . "</td>";
  echo "<td>" . $row['loc'] ."</td>";
  echo "</tr>";
  }
echo "</table>";

mysql_close($con);
?> 