<?php

 class Api
 {
     public static function translate($price)
     {
         $arrContextOptions=array(
             "ssl"=>array(
                 "verify_peer"=>false,
                 "verify_peer_name"=>false,
             ),
         );
         $responce = file_get_contents('https://www.nbrb.by/api/exrates/rates/431', false, stream_context_create($arrContextOptions));
         $arr=json_decode($responce, true);
         $dollar = $arr['Cur_OfficialRate'];
         $priceInRubles=$price * $dollar;
         return $priceInRubles;
     }
 }
