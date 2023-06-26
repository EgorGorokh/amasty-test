<?php

class DataBase
{
    private $servername;
    private $username;
    private $passpord;
    private $dbname;

    public function getConnection()
    {
        $this->servername ='localhost';
        $this->username='root';
        $this->password='root';
        $this->dbname='AmastyTest';

        try {
            $connect=new mysqli($this->servername, $this->username, $this->password, $this->dbname);
            return $connect;
        } catch (Exception $e) {
            $error=$e->getMessage();
            echo $error;
        }
    }

public function getListPizzas($connect)
{
    $request1 = "SELECT Pizza_Name FROM Pizza";
    $result1 = $connect->prepare($request1);
    $result1->execute();
    $result1 = $result1->get_result();
    return  $result1;
}

public function getListSizes($connect)
{
    $request2 = "SELECT Size_Name FROM Pizza_Size ";
    $result2 = $connect->prepare($request2);
    $result2->execute();
    $result2 = $result2->get_result();
    return  $result2;
}
public function getListSauces($connect)
{
    $request3 = "SELECT Sauce_Name FROM Sauces ";
    $result3 = $connect->prepare($request3);
    $result3->execute();
    $result3 = $result3->get_result();
    return  $result3;
}
}
