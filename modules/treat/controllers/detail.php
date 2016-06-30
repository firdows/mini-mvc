<?php

$data = $db->select('treat')->where(["t_no = '{$_GET['id']}'"])->one();
