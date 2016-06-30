
<a href="index.php?r=patient/create" class="btn btn-success"> เพิ่มข้อมูล</a>


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
    <?=$val->p_id?>
  </td>
  <td>
    <a href="index.php?r=patient/detail&id=<?=$val->p_id?>"><?=$val->p_name . " ".$val->p_surname;?></a>
  </td>
  <td>
    <a href="index.php?r=patient/update&id=<?=$val->p_id?>">Upadate</a> | <a href="index.php?r=patient/delete&id=<?=$val->p_id?>" onclick="return confirm('แน่ใจที่จะลบ ?')">ลบ</a>
  </td>
</tr>
  <?php } ?>
</table>

