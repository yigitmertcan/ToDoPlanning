<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\cacheprovider;
use Illuminate\Support\Facades\DB;

class dashboard extends Controller
{

    public function index() //Ana sayfa
    {

        $work =$halfwork= array(); //is ve fazla isleri toplayan dizi
        $totales=0;//toplam baz alinan sure
        $allime=DB::table('providers')->sum("estimated_duration");
        $totalhaftasay=intval($allime/5/45+1);
        for ($i=1; $i < 6; $i++) { //zorluga gore isleri listeler. 
            $devtime=DB::table('providers')->where("level",$i)->sum("estimated_duration");
            $devtimedata=DB::table('providers')->where("level",$i)->get();
            $totales=0;
            if ($allime/5<=$devtime) { //is zamani ortalam isten buyukse bu kosula girer

                foreach ($devtimedata as  $v) {
                    
                    $totales+=$v->estimated_duration;//total isi hesabi
                    if ($totales<=$allime/5) {
                        $work[$i][]=["level"=>$v->level,"name"=>$v->name,"est"=>$v->estimated_duration,"week"=>intval($totales/45)+1];
                    }else {
                        $halfwork[]=["level"=>$v->level,"name"=>$v->name,"est"=>$v->estimated_duration];//fazla isi bu diziye aktarir
                    }
                }                
            }else {
                foreach ($devtimedata as  $v) { // ortalama isten az isi oldugu icin ilk basta tum isi ceker
                    $totales+=$v->estimated_duration;
                    $work[$i][]=["level"=>$v->level,"name"=>$v->name,"est"=>$v->estimated_duration,"week"=>intval($totales/45)+1];
                }
                foreach ($halfwork as $k  => $v) { //Paylasilan islerden alir
                    $totales+=$v['est'];
                    $work[$i][]=["level"=>$v['level'],"name"=>$v['name'],"est"=>$v['est'],"week"=>intval($totales/45)+1];
                    unset($halfwork[$k]);//paylasilan is tekrardan kalmamasi icin
                    if ($i!=5 && $totales>=$allime/5) {
                        break;
                    }
                }
            }
        }
        return view('dashboard')->with('lists',$work)->with('total',$totalhaftasay);
    }


    public function reload()
    {
        cacheprovider::reload_provider(); //Cache methodu calistirir
        return redirect()->route('dashboard');
    }

}
