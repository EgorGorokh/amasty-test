<?php

require_once 'DataBase.php';
require_once 'Sum.php';
require_once 'Api.php';

if(isset($_POST)){
    $pizza=htmlentities($_POST['pizza']);
    $sauce=htmlentities($_POST['sauce']);
    $size=htmlentities($_POST['size']);
}

$dataBase=new DataBase();
$db=$dataBase->getConnection();
$sum=new Sum();
$price=$sum->count($db, $size, $pizza, $sauce);
$PriceInRubles=Api::translate($price);

echo $PriceInRubles;
