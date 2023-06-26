<?php


class Sum
{
    public function count($connect, $size, $pizza, $sauce)
    {
        $resultSelect=$connect->prepare("SELECT(
            SELECT Pizza_Price FROM Pizza 
            join Pizza_Price ON Pizza_Price.Pizza_ID = Pizza.Pizza_ID 
            join Pizza_Size  ON Pizza_Size.Size_ID   = Pizza_Price.Size_ID 
            WHERE Size_Name = ? && Pizza_Name = ?
            )+(
            SELECT Sauce_Price FROM Sauces WHERE Sauce_Name=?)  ");
        $resultSelect->bind_param("sss", $size, $pizza, $sauce);
        $resultSelect->execute();
        $resultSelect=$resultSelect->get_result();
        $resultSelect=$resultSelect->fetch_all();
        $price=$resultSelect["0"]["0"];
        return $price;
    }
}
