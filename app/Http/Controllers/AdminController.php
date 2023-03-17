<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\MahasiswaAdminModel;
use App\Models\DosenAdminModel;
use App\Models\HomeModel;
use Illuminate\Support\Facades\DB;

class AdminController extends Controller
{
    public function __construct()
    {
        $this->MahasiswaAdminModel = new MahasiswaAdminModel();
        $this->DosenAdminModel = new DosenAdminModel();
        $this->HomeModel = new HomeModel();
    }
    public function index()
    {
        if (session()->has('username')) {
        } else {
            return redirect()->route('login')->with('pesan', 'Anda harus login terlebih dahulu!');
        }
        $data = [
            'masukan'=> $this->HomeModel->masukan('Masukan untuk Saran Penambahan Bacaan'),
            'masukan1'=> $this->HomeModel->masukan('Komentar untuk Tampilan'),
            'masukan2'=> $this->HomeModel->masukan('Komentar untuk Fitur pada Sistem'),
            'bacaan'=> $this->HomeModel->mostRecent()
        ];

        $ip    = $_SERVER['REMOTE_ADDR']; // Mendapatkan IP user
        $date  = date("d-m-Y"); // Mendapatkan tanggal sekarang
        $waktu = time(); //
        $timeinsert = date("d-m-Y H:i:s");
        $bulan = date('n');
        $bln = date('M');
        $tahun = date('Y');
        $hari = DB::table('visitor')->groupby('date')->select('date', \DB::raw('count(ip) as total'), \DB::raw('count(ip) as hits'))->orderby('date', 'desc')->limit(30)->get();
        $jumlah = [];
        $kategori = [];

        foreach($hari as $hari){
            $kategori[] = date('d-M-Y', strtotime($hari->date));
            $jumlah[] = (int)$hari->hits;
        }
        //dd(json_encode($jumlah));
        
        $dbpengunjung = DB::table('visitor')->select(DB::raw('count(ip) as hits'))->first();
        
        $totalpengunjung = isset($dbpengunjung->hits)?($dbpengunjung->hits):0; // hitung total pengunjung
        
        // $bataswaktu = time() - 300;
        // $pengunjungonline  = DB::table('visitor') -> where('online', '=', $bataswaktu)->count(); hitung pengunjung online
        
        $topik = DB::table('viewtopik')->groupby('viewtopik.id_topik')->join('topik', 'topik.id_topik', '=', 'viewtopik.id_topik')->where(DB::raw('month(date)'), $bulan)->select('viewtopik.id_topik', \DB::raw('count(kali) as total'))->orderby('total', 'desc')->get();
        //dd($pemilik);
        $namatopik = [];
        $jumlahtopik = [];

        foreach($topik as $topik){
            $namatopik[] = DB::table('topik')->where('id_topik', '=', $topik->id_topik)->select('nama_topik as zzz')->get();
            $jumlahtopik[] = $topik->total;
        }
        //dd(json_encode($namatopik));
        $bacaan = DB::table('viewbacaan')->groupby('viewbacaan.id_bacaan')->join('bacaan', 'bacaan.id_bacaan', '=', 'viewbacaan.id_bacaan')->where(DB::raw('month(date)'), $bulan)->select('viewbacaan.id_bacaan', \DB::raw('sum(kali) as total'))->orderby('total', 'desc')->get();
        //dd($pemilik);
        $namabacaan = [];
        $jumlahbacaan = [];
        $judulbacaan = [];

        foreach($bacaan as $bacaan){
            $namabacaan[] = $bacaan->id_bacaan;
            $jumlahbacaan[] = $bacaan->total;
            $judulbacaan[] = DB::table('bacaan')->where('id_bacaan', '=', $bacaan->id_bacaan)->select('judul')->get();
        }

        $view = $this->HomeModel->mostView($bulan, $tahun);
        $judul = [];
        $file = [];
        $id = [];

        foreach($view as $view){
            $judul[] = DB::table('bacaan')->where('id_bacaan', '=', $view->id_bacaan)->select('judul')->get();
            $id[] = $view->id_bacaan;
            $file[] = DB::table('bacaan')->where('id_bacaan', '=', $view->id_bacaan)->select('file as yyy')->get();
        }
        $data1 = [
            'totalpengunjung'=>$totalpengunjung,
            'kategori' =>  $kategori,
            'jumlah' =>  $jumlah,
            'namatopik' => $namatopik,
            'jumlahtopik' => $jumlahtopik,
            'namabacaan' => $namabacaan,
            'jumlahbacaan' => $jumlahbacaan,
            'bulan' => $bln,
            'tahun' => $tahun,
            'judul' => $judul,
            'judulbacaan' => $judulbacaan,
            'id_bacaan' => $id,
            'file' => $file
            //'pengunjungonline'=>$pengunjungonline
        ];
       
        return view('admin.v_homeadm', $data, $data1);
    }

    
    public function mahasiswa()
    {
        if (session()->has('username')) {
        } else {
            return redirect()->route('login')->with('pesan', 'Anda harus login terlebih dahulu!');
        }
        $data = [
            'mahasiswa'=> $this->MahasiswaAdminModel->allData(),
        ];
        return view('admin.v_mahasiswaadm', $data);
    }

    public function dosen()
    {
        if (session()->has('username')) {
        } else {
            return redirect()->route('login')->with('pesan', 'Anda harus login terlebih dahulu!');
        }
        $data = [
            'dosen'=> $this->DosenAdminModel->allData(),
        ];
        return view('admin.v_dosenadm', $data);
    }
    public function tambahmahasiswa()
    {
        if (session()->has('username')) {
        } else {
            return redirect()->route('login')->with('pesan', 'Anda harus login terlebih dahulu!');
        }
        return view('admin.v_tambahmahasiswaadm');
    }
    public function insertmhs()
    {
        Request()->validate([
            'nama' => 'required',
            'angkatan' => 'required|min:4|max:4',
            'username' => 'required|min:6|max:13|unique:mahasiswa,username_mhs',
            'password' => 'required|min:8'
        ],[
            'username.unique' => 'Username ini sudah ada !!!',
            'username.required' => 'Username wajib diisi !!!',
            'username.min' => 'Masukkan NIM yang benar sebagai Username !!!',
            'username.max' => 'Masukkan NIM yang benar sebagai Username !!!',
            'angkatan.required' => 'Angkatan wajib diisi !!!',
            'nama.required' => 'Nama wajib diisi !!!',
            'password.required' => 'Password wajib diisi !!!',
            'password.min' => 'Password minimal 8 karakter !!!'
        ]);

        $data = [
            'nama_mhs' => Request()->nama,
            'angkatan_mhs' => Request()->angkatan,
            'username_mhs' => Request()->username,
            'password_mhs' => md5(Request()->password)
        ];

        $this->MahasiswaAdminModel->addData($data);
        return redirect()->route('mahasiswa')->with('pesan', 'Data Berhasil Di Tambahkan !!!');
    }
    public function editmhs($id_mhs)
    {
        if (session()->has('username')) {
        } else {
            return redirect()->route('login')->with('pesan', 'Anda harus login terlebih dahulu!');
        }
        if(!$this->MahasiswaAdminModel->detailData($id_mhs))
        {
            abort(404);
        };
        $data = [
            'mahasiswa'=> $this->MahasiswaAdminModel->detailData($id_mhs),
        ];
        return view('admin.v_editmahasiswaadm', $data);
    }

    public function updatemhs($id_mhs)
    {
        Request()->validate([
            'nama' => 'required',
            'angkatan' => 'required|min:4|max:4',
            'username' => 'required|min:6|max:13'
        ],[
            'username.unique' => 'Username ini sudah ada !!!',
            'username.required' => 'Username wajib diisi !!!',
            'username.min' => 'Masukkan NIM yang benar sebagai Username !!!',
            'username.max' => 'Masukkan NIM yang benar sebagai Username !!!',
            'angkatan.required' => 'Angkatan wajib diisi !!!',
            'nama.required' => 'Nama wajib diisi !!!'
        ]);
        if(Request()->password <> ""){
            Request()->validate([
                'password' => 'min:8'
            ],
            [
                'password.min' => 'Password minimal 8 karakter !!!'
            ]);
            $data = [
                'nama_mhs' => Request()->nama,
                'angkatan_mhs' => Request()->angkatan,
                'username_mhs' => Request()->username,
                'password_mhs' => md5(Request()->password)
                ];
        }
        else{
            $data = [
                'nama_mhs' => Request()->nama,
                'angkatan_mhs' => Request()->angkatan,
                'username_mhs' => Request()->username
                ];
        }
        
        $this->MahasiswaAdminModel->updateData($id_mhs, $data);
        return redirect()->route('mahasiswa')->with('pesan', 'Data Berhasil Di Update !!!');
    }

    public function deletemhs($id_mhs)
    {
        $this->MahasiswaAdminModel->deleteData($id_mhs);
        return redirect()->route('mahasiswa')->with('pesan', 'Data Berhasil Di Hapus !!!');
    }

    public function tambahdosen()
    {
        if (session()->has('username')) {
        } else {
            return redirect()->route('login')->with('pesan', 'Anda harus login terlebih dahulu!');
        }
        return view('admin.v_tambahdosenadm');
    }
    public function insertdsn()
    {
        Request()->validate([
            'nama' => 'required',
            'username' => 'required|unique:dosen,username_dosen',
            'password' => 'required|min:8'
        ],[
            'username.unique' => 'Username ini sudah ada !!!',
            'username.required' => 'Username wajib diisi !!!',
            'nama.required' => 'Nama wajib diisi !!!',
            'password.required' => 'Password wajib diisi !!!',
            'password.min' => 'Password minimal 8 karakter !!!'
        ]);

        $data = [
            'nama_dosen' => Request()->nama,
            'link_dosen' => Request()->link,
            'username_dosen' => Request()->username,
            'password_dosen' => md5(Request()->password)
            ];
        
        $this->DosenAdminModel->addData($data);
        return redirect()->route('dosen')->with('pesan', 'Data Berhasil Di Tambahkan !!!');
    }
    public function editdsn($id_dosen)
    {
        if (session()->has('username')) {
        } else {
            return redirect()->route('login')->with('pesan', 'Anda harus login terlebih dahulu!');
        }
        if(!$this->DosenAdminModel->detailData($id_dosen))
        {
            abort(404);
        };
        $data = [
            'dosen'=> $this->DosenAdminModel->detailData($id_dosen),
        ];
        return view('admin.v_editdosenadm', $data);
    }

    public function updatedsn($id_dosen)
    {
        Request()->validate([
            'nama' => 'required',
            'username' => 'required'
        ],[
            'username.unique' => 'Username ini sudah ada !!!',
            'username.required' => 'Username wajib diisi !!!',
            'nama.required' => 'Nama wajib diisi !!!'
        ]);

        if(Request()->password <> ""){
            Request()->validate([
                'password' => 'min:8'
            ],
            [
                'password.min' => 'Password minimal 8 karakter !!!'
            ]);
            $data = [
                'nama_dosen' => Request()->nama,
                'link_dosen' => Request()->link,
                'username_dosen' => Request()->username,
                'password_dosen' => md5(Request()->password)
            ];
        }
        else{
            $data = [
                'nama_dosen' => Request()->nama,
                'link_dosen' => Request()->link,
                'username_dosen' => Request()->username
            ];
        }
        
        $this->DosenAdminModel->updateData($id_dosen, $data);
        return redirect()->route('dosen')->with('pesan', 'Data Berhasil Di Update !!!');
    }
    public function deletedsn($id_dosen)
    {
        $this->DosenAdminModel->deleteData($id_dosen);
        return redirect()->route('dosen')->with('pesan', 'Data Berhasil Di Hapus !!!');
    }
    public function printstatistik()
    {
        $bulan = Request()->bulan;
        $tahun = Request()->tahun;
        $bln;
        if($bulan == 1){
            $bln = "Januari";
        }
        else if($bulan == 2){
            $bln = "Februari";
        }
        else if($bulan == 3){
            $bln = "Maret";
        }
        else if($bulan == 4){
            $bln = "April";
        }
        else if($bulan == 5){
            $bln = "Mei";
        }
        else if($bulan == 6){
            $bln = "Juni";
        }
        else if($bulan == 7){
            $bln = "Juli";
        }
        else if($bulan == 8){
            $bln = "Agustus";
        }
        else if($bulan == 9){
            $bln = "September";
        }
        else if($bulan == 10){
            $bln = "Oktober";
        }
        else if($bulan == 11){
            $bln = "November";
        }
        else if($bulan == 12){
            $bln = "Desember";
        }
        $data = [
            'view' => $this->HomeModel->printstatistik($bulan, $tahun),
            'tahun' => $tahun,
            'bln' => $bln
        ];
        
        return view('admin.v_printstatistik', $data);
    }
    public function printtopik()
    {
        $bulan = Request()->bulan;
        $tahun = Request()->tahun;
        $views = $this->HomeModel->printtopik($bulan, $tahun);
        $topik = [];
        $jumlah = [];
        $bln;
        if($bulan == 1){
            $bln = "Januari";
        }
        else if($bulan == 2){
            $bln = "Februari";
        }
        else if($bulan == 3){
            $bln = "Maret";
        }
        else if($bulan == 4){
            $bln = "April";
        }
        else if($bulan == 5){
            $bln = "Mei";
        }
        else if($bulan == 6){
            $bln = "Juni";
        }
        else if($bulan == 7){
            $bln = "Juli";
        }
        else if($bulan == 8){
            $bln = "Agustus";
        }
        else if($bulan == 9){
            $bln = "September";
        }
        else if($bulan == 10){
            $bln = "Oktober";
        }
        else if($bulan == 11){
            $bln = "November";
        }
        else if($bulan == 12){
            $bln = "Desember";
        }

        foreach($views as $view){
            $topik[] = DB::table('topik')->where('id_topik', '=', $view->id_topik)->select('nama_topik as zzz')->get();
            $jumlah[] = $view->jumlah;
        }

        $data = [
            'view' => $jumlah,
            'topik' => $topik,
            'tahun' => $tahun,
            'bln' => $bln
        ];
        return view('admin.v_printtopik', $data);
    }
    public function printbacaan()
    {
        $bulan = Request()->bulan;
        $tahun = Request()->tahun;
        
        $view = $this->HomeModel->printbacaan($bulan, $tahun);
        $judul = [];
        $jumlah = [];
        if($bulan == 1){
            $bln = "Januari";
        }
        else if($bulan == 2){
            $bln = "Februari";
        }
        else if($bulan == 3){
            $bln = "Maret";
        }
        else if($bulan == 4){
            $bln = "April";
        }
        else if($bulan == 5){
            $bln = "Mei";
        }
        else if($bulan == 6){
            $bln = "Juni";
        }
        else if($bulan == 7){
            $bln = "Juli";
        }
        else if($bulan == 8){
            $bln = "Agustus";
        }
        else if($bulan == 9){
            $bln = "September";
        }
        else if($bulan == 10){
            $bln = "Oktober";
        }
        else if($bulan == 11){
            $bln = "November";
        }
        else if($bulan == 12){
            $bln = "Desember";
        }

        foreach($view as $view){
            $judul[] = DB::table('bacaan')->where('id_bacaan', '=', $view->id_bacaan)->select('judul')->get();
            $jumlah[] = $view->jumlah;
        }
        //dd($month);
        //dd($judul);
        $data = [
            'view' => $jumlah,
            'bacaan' => $judul,
            'tahun' => $tahun,
            'bln' => $bln
        ];
        return view('admin.v_printbacaan', $data);
    }
}
