<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\KategoriModel;
use App\Models\MahasiswaAdminModel;
use App\Models\BacaanAdminModel;
use App\Models\HomeModel;
use Illuminate\Support\Facades\DB;

class MahasiswaController extends Controller
{
    public function __construct()
    {
        $this->KategoriModel = new KategoriModel();
        $this->MahasiswaAdminModel = new MahasiswaAdminModel();
        $this->BacaanAdminModel = new BacaanAdminModel();
        $this->HomeModel = new HomeModel();
    }

    public function index()
    {
        if (session()->has('username_mhs')) {
        } else {
            return redirect()->route('login')->with('pesan', 'Anda harus login terlebih dahulu!');
        }
        $ip    = $_SERVER['REMOTE_ADDR']; // Mendapatkan IP user
        $date  = date("Y-m-d"); // Mendapatkan tanggal sekarang
        $waktu = time(); //
        $timeinsert = date("Y-m-d H:i:s");
        $bulan = date('n');
        $tahun = date('Y');
        $hari = DB::table('visitor')->groupby('date')->select('date', \DB::raw('count(hits) as total'), \DB::raw('sum(hits) as hits'))->orderby('date', 'desc')->limit(30)->get();
        $jumlah = [];
        $kategori = [];
        $mhs = session('id_mhs');

        foreach($hari as $hari){
            $kategori[] = $hari->date;
            $jumlah[] = (int)$hari->hits;
        }
        //dd(json_encode($jumlah));
        // Cek berdasarkan IP, apakah user sudah pernah mengakses hari ini
        $s = DB::table('visitor') -> where('ip', '=', $ip) -> where('date', '=', $date)-> where('mhs', '=', $mhs)->count();
        $ss = isset($s)?($s):0;
        
        // Kalau belum ada, simpan data user tersebut ke database
        if($ss == 0){
            DB::table('visitor')->insert(['ip' => $ip, 'date'=>$date, 'hits'=>1, 'online'=>$waktu, 'time'=>$timeinsert, 'mhs'=>$mhs]);
        }
        
        // Jika sudah ada, update
        else{
            DB::table('visitor')-> where('ip', '=', $ip) -> where('date', '=', $date)->update(['hits'=> DB::raw('hits+1'), 'online'=>$waktu]);
        }
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
        return view('mahasiswa.v_homemhs', $data);
    }

    public function masukan()
    {
        if (session()->has('username_mhs')) {
        } else {
            return redirect()->route('login')->with('pesan', 'Anda harus login terlebih dahulu!');
        }
        Request()->validate([
            'masukan' => 'required'
        ],[
            'masukan.required' => 'Silahkan isi masukan terlebih dahulu !!!'
        ]);

        $data = [
            'nama' => Request()->nama,
            'komentar' => Request()->masukan,
            'jenis_masukan' => Request()->jenis,
            'id_mhs' => session('id_mhs')
        ];

        $this->MahasiswaAdminModel->addComent($data);

        return redirect()->route('indexmahasiswa')->with('pesan', 'Masukan telah dikirimkan !!!');
    }

    public function katasandi()
    {
        if (session()->has('username_mhs')) {
        } else {
            return redirect()->route('login')->with('pesan', 'Anda harus login terlebih dahulu!');
        }
        if (session()->has('username_mhs')) {
            session()->has('nama_mhs');
            session('id_mhs');
            session()->has('angkatan');
        } else {
            return redirect()->route('login')->with('pesan', 'Anda harus login terlebih dahulu!');
        }
        return view('mahasiswa.v_katasandi');
    }

    public function ubahkatasandi($id_mhs)
    {
        Request()->validate([
            'katasandibaru' => 'required|min:8',
            'katasandilama' => 'required'
        ],[
            'katasandibaru.required' => 'Kata Sandi Baru wajib diisi !!!',
            'katasandibaru.min' => 'Kata Sandi Baru minimal 8 karakter !!!',
            'katasandilama.required' => 'Kata Sandi Lama wajib diisi !!!'
        ]);
        if($this->MahasiswaAdminModel->alData($id_mhs, md5(Request()->katasandilama)))
        {
            $data = [
                'password_mhs' => md5(Request()->katasandibaru)
            ];
            
            $this->MahasiswaAdminModel->updateSandi($data, $id_mhs);
            return redirect()->route('katasandi')->with('pesan', 'Kata Sandi Berhasil Di Ubah !!!');
        }
        else
        {
            return redirect()->route('katasandi')->with('gagal', 'Kata Sandi Lama Salah !!!');
        }
    }

    public function daftarbacaan()
    {
        if (session()->has('username_mhs')) {
        } else {
            return redirect()->route('login')->with('pesan', 'Anda harus login terlebih dahulu!');
        }
        $data = [
            'topik'=> $this->KategoriModel->allData1(),
            'kategori'=> $this->KategoriModel->allData(),
        ];
        return view('mahasiswa.v_daftar', $data);
    }

    public function daftarjenis($id)
    {
        if (session()->has('username_mhs')) {
        } else {
            return redirect()->route('login')->with('pesan', 'Anda harus login terlebih dahulu!');
        }
        $data = [
            'topik'=> $this->KategoriModel->allData1(),
            'kategori'=> $this->KategoriModel->allData(),
            'detail'=> $this->BacaanAdminModel->detailKategori($id),
            'bacaan' => $this->MahasiswaAdminModel->jenisbacaan($id)
        ];
        return view('mahasiswa.v_daftarjenis', $data);
    }

    public function daftartopik($id)
    {
        if (session()->has('username_mhs')) {
        } else {
            return redirect()->route('login')->with('pesan', 'Anda harus login terlebih dahulu!');
        }

        $date  = date("Y-m-d");
        $s = DB::table('viewtopik')->where('id_topik', '=', $id) -> where('date', '=', $date)->count();
        $ss = isset($s)?($s):0;
        $mhs = session('id_mhs');
        
        if($ss == 0){
            $this->HomeModel->viewTopikmhs($id, $date, $mhs);
        }
        else{
            $this->HomeModel->updateTopik($id, $date);
        }
        $data = [
            'topik'=> $this->KategoriModel->allData1(),
            'kategori'=> $this->KategoriModel->allData(),
            'detail'=> $this->BacaanAdminModel->detailTopik($id),
            'bacaan' => $this->MahasiswaAdminModel->topikbacaan($id)
        ];
        return view('mahasiswa.v_daftartopik', $data);
    }

    public function detail($id)
    { 
        if (session()->has('username_mhs')) {
        } else {
            return redirect()->route('login')->with('pesan', 'Anda harus login terlebih dahulu!');
        }
        $date  = date("Y-m-d");
        $s = DB::table('viewbacaan') -> where('id_bacaan', '=', $id) -> where('date', '=', $date)->count();
        $ss = isset($s)?($s):0;
        $mhs = session('id_mhs');
        
        if($ss == 0){
            $this->HomeModel->viewBacaanmhs($id, $date, $mhs);
        }
        else{
            $this->HomeModel->updateBacaan($id, $date);
        }
        $data = [
            'topik'=> $this->KategoriModel->allData1(),
            'kategori'=> $this->KategoriModel->allData(),
            'bacaan'=> $this->BacaanAdminModel->detailData($id)
        ];
        return view('mahasiswa.v_detail', $data);
    }

    public function search(Request $request)
    {
        if (session()->has('username_mhs')) {
        } else {
            return redirect()->route('login')->with('pesan', 'Anda harus login terlebih dahulu!');
        }
        $keyword = $request->cari;
        $bacaan = DB::table('bacaan')
            ->where('judul', 'like', "%".$keyword."%")
            ->orwhere('penulis', 'like', "%".$keyword."%")->paginate(10);
        $dosen = DB::table('dosen')
            ->where('nama_dosen', 'like', "%".$keyword."%")->paginate();
        $data = [
            'topik'=> $this->KategoriModel->allData1(),
            'kategori'=> $this->KategoriModel->allData(),
            'bacaan' => $bacaan,
            'dosen' => $dosen
        ];
        return view('mahasiswa.v_daftar', $data);
    }
    public function link($id)
    {
        if (session()->has('username_mhs')) {
        } else {
            return redirect()->route('login')->with('pesan', 'Anda harus login terlebih dahulu!');
        }
        $data = [
            'topik'=> $this->KategoriModel->allData1(),
            'kategori'=> $this->KategoriModel->allData(),
            'bacaan' => $this->MahasiswaAdminModel->listBacaan($id)
        ];
        return view('mahasiswa.v_daftardosen', $data);
    }
}
