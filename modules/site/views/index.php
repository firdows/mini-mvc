<h1>ข้อมูลทั้งหมด</h1>

<table>
  <tr><td>id</td><td>Subject</td></tr>
<?php
foreach ($query as $value) {
  echo "<tr>";
  echo "<td>".$value->booking_id."</td>";
  echo "<td>".$value->booking_subject."</td>";
  echo "</tr>";
}
 ?>
</table>
