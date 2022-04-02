<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\subfunc;
use Illuminate\Support\Facades\DB;

class cacheprovider extends Controller
{

    //Ana cache dagitim fonksiyonu
    public static  function reload_provider()
    {
        DB::table('providers')->delete();
        $cacheprovider = new cacheprovider();
        $cacheprovider->mainprovider(1,"http://www.mocky.io/v2/5d47f24c330000623fa3ebfa");
        $cacheprovider->mainprovider(2,"http://www.mocky.io/v2/5d47f235330000623fa3ebf7");
    }


    //Ana sorgu fonksiyonu
    protected function mainprovider($tur,$link)
    {
        try {
            $allproviders=json_decode(subfunc::GetCurl($link),true);
            if ($tur==1) {
                $this->provider1($allproviders);
            }elseif ($tur==2) {
                $this->provider2($allproviders);
            }
        } catch (\Throwable $th) {
            echo "Hata";
        }
        

    }

    //Provider tur 1 data iceri alma fonskiyonu
    private function provider1($array)
    {
        foreach ($array as $v) {
            DB::table('providers')->insert(
                ['tur' => 1,'name'=>$v['id']  ,'level' =>$v['zorluk'],'estimated_duration'=>$v['sure']]
            );
        }
        echo "Success";
    }

    //Provider tur 2
    private function provider2($array)
    {
        foreach ($array as  $variable) {
                foreach ($variable as $k => $v) {
                    DB::table('providers')->insert(
                        ['tur' => 2,'name'=>$k  ,'level' =>$v['level'],'estimated_duration'=>$v['estimated_duration']]
                    );
                }
        }
        echo "Success";
    }


}
