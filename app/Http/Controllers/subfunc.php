<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class subfunc extends Controller
{

    //Get fonksiyonu
    public static function GetCurl($url) { 
    $ch = curl_init(); 
    curl_setopt($ch,CURLOPT_URL,$url); 
    curl_setopt($ch,CURLOPT_RETURNTRANSFER,true); 
    $output=curl_exec($ch); 
    curl_close($ch); 
    return $output; 
} 
}
