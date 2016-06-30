<form class="" action="" method="post">


<div class="form-group">
    <label>รหัสผู้ป่วย</label>
    <input class="form-control" type="text" name="p_id" value="<?=$data->p_id?>">
    <p class="help-block">Example block-level help text here.</p>
</div>

รหัสผู้ป่วย
<input type="text" name="p_id" value="<?=$data->p_id?>">
รหัสสิทธิการรักษา
<input type="text" name="pv_id" value="<?=$data->pv_id?>"><br/><br/>
ชื่อ
<input type="text" name="p_name" value="<?=$data->p_name?>">
นามสกุล
<input type="text" name="p_surname" value="<?=$data->p_surname?>"><br/><br/>
เลขบัตรประชาชน
<input type="text" name="p_nid" value="<?=$data->p_nid?>">
วัน/เดือน/ปีเกิด
<input type="text" name="p_birthday" value="<?=$data->p_birthday?>"><br/><br/>
อายุ
<input type="text" name="p_age" value="<?=$data->p_age?>">
เพศ
<input type="text" name="p_sex" value="<?=$data->p_sex?>"><br/><br/>
สัญชาติ
<input type="text" name="p_national" value="<?=$data->p_national?>">
สถานภาพ
<input type="text" name="p_status" value="<?=$data->p_status?>"><br/><br/>
ที่อยู่
<input type="text" name="p_address" value="<?=$data->p_address?>">
เบอร์โทรศัพท์
<input type="text" name="p_tel" value="<?=$data->p_tel?>"><br/><br/>
น้ำหนัก
<input type="text" name="p_wieght" value="<?=$data->p_wieght?>">
ส่วนสูง
<input type="text" name="p_hight" value="<?=$data->p_hight?>"><br/><br/>
โรคประจำตัว
<input type="text" name="disease" value="<?=$data->disease?>">
กรุ๊ปเลือด
<input type="text" name="blood" value="<?=$data->blood?>"><br/><br/>
แพ้ยา
<input type="text" name="allergic" value="<?=$data->allergic?>">
ผู้ที่ติดต่อในกรณีฉุกเฉิน
<input type="text" name="delegate" value="<?=$data->delegate?>"><br/><br/>
เบอร์โทรผู้ติดต่อ
<input type="text" name="delegate_tel" value="<?=$data->delegate_tel?>">
ความสัมพันธ์
<input type="text" name="relationship" value="<?=$data->relationship?>"><br/><br/>

<br/><br/>

<input type="submit" name="บันทึก" value="บันทึก">

</form>
