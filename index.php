<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>AmastyTest</title>
    <link rel="stylesheet" href="style.css">
    <script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>
</head>
<body>

<?php
require_once 'DataBase.php';
$dataBase=new DataBase();
$connect=$dataBase->getConnection();
$listPizza=$dataBase->getListPizzas($connect);
$listSizes=$dataBase->getListSizes($connect);
$listSauces=$dataBase->getListSauces($connect);
?>

<div class="center">
    <select name="pizza" id="pizza">
        <?php
        foreach ($listPizza as $arr => $value) {
            echo "<option>{$value['Pizza_Name']}</option>";
        }?>
             </select>

    <select name="size" id="size">
    <?php
        foreach ($listSizes as $arr => $value) {
            echo "<option>{$value['Size_Name']}</option>";
        }?>
             </select>


    <select name="sauce" id="sauce">

    <?php
        foreach ($listSauces as $arr => $value) {
            echo "<option>{$value['Sauce_Name']}</option>";
        }?>
             </select>

    <button class="sending">Заказать</button>

    <div id="modal-content"></div>
</div>

<script src="script.js"></script>
</body>
</html>