<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\HomeModel;
use App\Models\KategoriModel;
use Illuminate\Support\Facades\DB;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */

    public function __construct()
    {
        $this->HomeModel = new HomeModel();
        $this->KategoriModel = new KategoriModel();
    }

    public function index()
    {
        $bulan = date('n');
        $tahun = date('Y');
        $view = $this->HomeModel->mostView($bulan, $tahun);
        $judul = [];
        $file = [];
        $idbacaan = [];

        foreach($view as $view){
            $judul[] = DB::table('bacaan')->where('id_bacaan', '=', $view->id_bacaan)->select('judul')->get();
            $idbacaan[] = $view->id_bacaan;
            $file[] = DB::table('bacaan')->where('id_bacaan', '=', $view->id_bacaan)->select('file as yyy')->get();
        }

        $data = [
            'topik'=> $this->KategoriModel->allData1(),
            'bacaan'=> $this->HomeModel->mostRecent(),
            'judul' => $judul,
            'id_bacaan' => $idbacaan,
            'file' => $file
        ];
        return view('v_home',$data);
    }
    
    public function file($file)
    {
        if (session()->has('username_mhs')) {
        } 
        else if (session()->has('username_dosen')) {
        }
        else if (session()->has('username')) {
        }
        else {
            return redirect()->route('login')->with('pesan', 'Anda harus login terlebih dahulu!');
        }
        $data = [
            'bacaan'=> $this->HomeModel->detailBacaan($file),
        ];
        return view('v_tampilpdf', $data);
    }
}
