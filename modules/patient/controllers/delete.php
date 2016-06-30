<?php

if(isset($_GET['id'])){
      //print_r($_POST);
      if($db->delete('patient',["p_id = '{$_GET['id']}'"])){
        $db->redirect('patient/index');
      }else{

      }
}
