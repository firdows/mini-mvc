<?php

$data = $db->select('patient')->where(["p_id = '{$_GET['id']}'"])->one();