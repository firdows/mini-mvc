<?php

class DB extends PDO {

    function __construct($host,$user,$pass) {
        try {
            parent::__construct($host, $user, $pass);
            $this->exec("SET CHARACTER SET utf8");
            return $this;
        } catch (PDOException $e) {
            echo $e->getMessage();
        }
    }

    public $sql;

    public function sql($sql) {
        $this->sql = $sql;
        return $this;
    }

    public function select($tb, $field = '*') {
        $this->sql = "SELECT {$field} FROM {$tb}";
        return $this;
    }

    public function where($arr = []) {
        $where = ' WHERE ';
        $this->sql .=!empty($arr) ? $where . implode(' AND ', $arr) : '';
        return $this;
    }

    public function orWhere($arr = []) {
        $where = (strpos('where', $this->sql)) ? ' WHERE ' : ' OR ';
        $this->sql .=!empty($arr) ? $where . implode(' OR ', $arr) : '';
        return $this;
    }

    public function one() {
        $query = $this->query($this->sql);
        //echo $this->sql;
        //exit();
        // /$query->debugDumpParams();
        //$query->execute();
        return $query->fetch(PDO::FETCH_OBJ);
    }

    public function all() {
        $query = $this->query($this->sql);
        //$query->execute();
        //$query->debugDumpParams();
        $all = [];
        if($query)
        while ($row = $query->fetch(PDO::FETCH_OBJ)) {
            $all[] = $row;
        }
        return $all;
    }

    public function insert($tb, $field) {
        $sql = "INSERT INTO {$tb} ";
        $key = [];
        $values = [];
        foreach ($field as $k => $v) {
            $key[] = $k;
            $value[] = $v ? $v : NULL;
        }
        $sql.="(" . implode(", ", $key) . ") VALUES ('" . implode("', '", $value) . "')";
        $query = $this->prepare($sql);
        return $query->execute();
    }

    public function update($tb, $field,$where=[],$orWhere=[]) {
        $sql = "UPDATE {$tb} SET ";
        $key = [];
        $values = [];
        foreach ($field as $k => $v) {
            $value[] = $k." = '{$v}' ";
        }
        $sql.= implode(", ", $value) ;
        $sql.=$where? " WHERE " .implode(" AND ", $where):'' ;
        $sql.=$orWhere? " OR " .implode(" OR ", $orWhere):'' ;
        //echo $sql;
		//exit();
        $query = $this->prepare($sql);
        return $query->execute();
    }

    public function delete($tb,$where,$orWhere=[]){
      $sql = "DELETE FROM {$tb} ";
      $sql.=$where? " WHERE " .implode(" AND ", $where):'' ;
      $sql.=$orWhere? " OR " .implode(" OR ", $orWhere):'' ;
      return $this->query($sql);
    }

    public function redirect($rout,$param=[]){
      $params =[];
      if($param){
        foreach($param as $k=>$v)
          $params[] = $k."=".$v;
      }
      $params=($params)?"&".@implode('&',$params):'';
      header('Location:index.php?r='.$rout.$params);
    }


}

$db = new DB('mysql:host=localhost;dbname=' . dbname . ';', username, password);
