<form class="" action="" method="post">


<div class="form-group">
    <label>ข้อมูลการรักษาพยาบาล</label>
    <input class="form-control" type="text" name="t_no" value="<?=$data->t_no?>">
    <p class="help-block">Example block-level help text here.</p>
</div>

เลขที่การรักษา
<input type="text" name="t_no" value="<?=$data->t_no?>"> <br/><br/>
รหัสผู้ป่วย
<input type="text" name="p_id" value="<?=$data->p_id?>"> <br/><br/>
วันที่เข้ารักษา
<input type="text" name="t_date" value="<?=$data->t_date?>"> <br/><br/>
อาการป่วย
<input type="text" name="symptom" value="<?=$data->symptom?>"> <br/><br/>
ความดัน
<input type="text" name="pressure" value="<?=$data->pressure?>"> <br/><br/>
อุณหภูมิร่างกาย
<input type="text" name="temp" value="<?=$data->temp?>"> <br/><br/>
ชีพจร
<input type="text" name="pulse" value="<?=$data->pulse?>"> <br/><br/>
อัตราการหายใจ
<input type="text" name="breathe" value="<?=$data->breathe?>"><br/><br/>
ผลการวินิจฉัย
<input type="text" name="resultjudge" value="<?=$data->resultjudge?>"> <br/><br/>
รหัสยา-เวชภัณฑ์
<input type="text" name="m_id" value="<?=$data->m_id?>"><br/><br/>
รหัสเจ้าหน้าที่/พยาบาล
<input type="text" name="s_id" value="<?=$data->s_id?>">


<br/><br/>

<input type="submit" name="บันทึก" value="บันทึก">

</form>
