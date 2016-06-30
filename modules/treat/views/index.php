
<a href="index.php?r=treat/create" class="btn btn-success"> เพิ่มข้อมูล</a>


<table class="table">
  <tr>
    <td>
      Id
    </td>
    <td>
      Name
    </td>
    <td>
      Action
    </td>
  </tr>

  <?php
  foreach($data as $val){
?>
<tr>
  <td>
    <?=$val->t_no?>
  </td>
  <td>
    <a href="index.php?r=treat/detail&id=<?=$val->t_no?>"></a>
  </td>
  <td>
    <a href="index.php?r=treat/update&id=<?=$val->t_no?>">Upadate</a>
    <a href="index.php?r=treat/delete&id=<?=$val->t_no?>" onclick="return confirm('แน่ใจที่จะลบ ?')">ลบ</a>
  </td>
</tr>
  <?php } ?>
</table>
