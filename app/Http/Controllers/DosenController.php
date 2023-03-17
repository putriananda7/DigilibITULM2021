<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\KategoriModel;
use App\Models\MahasiswaAdminModel;
use App\Models\DosenAdminModel;
use App\Models\BacaanAdminModel;
use App\Models\HomeModel;
use Illuminate\Support\Facades\DB;

class DosenController extends Controller
{
    public function __construct()
    {
        $this->KategoriModel = new KategoriModel();
        $this->MahasiswaAdminModel = new MahasiswaAdminModel();
        $this->DosenAdminModel = new DosenAdminModel();
        $this->BacaanAdminModel = new BacaanAdminModel();
        $this->HomeModel = new HomeModel();
    }

    public function index()
    {
        if (session()->has('username_dosen')) {
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
        $dsn = session('id_dosen');

        foreach($hari as $hari){
            $kategori[] = $hari->date;
            $jumlah[] = (int)$hari->hits;
        }
        //dd($dsn);
        // Cek berdasarkan IP, apakah user sudah pernah mengakses hari ini
        $s = DB::table('visitor') -> where('ip', '=', $ip)->where('date', '=', $date)->where('dsn', '=', $dsn)->count();
        $ss = isset($s)?($s):0;
        
        // Kalau belum ada, simpan data user tersebut ke database
        if($ss == 0){
            DB::table('visitor')->insert(['ip' => $ip, 'date'=>$date, 'hits'=>1, 'online'=>$waktu, 'time'=>$timeinsert, 'dsn'=>$dsn]);
        }
        
        // Jika sudah ada, update
        else{
            DB::table('visitor')-> where('ip', '=', $ip) -> where('date', '=', $date)->update(['hits'=> DB::raw('hits+1'), 'online'=>$waktu]);
        }
        $view = $this->HomeModel->mostView($bulan, $tahun);
        $judul = [];
        $file = [];

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
        return view('dosen.v_homedsn', $data);
    }

    public function masukan()
    {
        Request()->validate([
            'masukan' => 'required'
        ],[
            'masukan.required' => 'Silahkan isi masukan terlebih dahulu !!!'
        ]);

        $data = [
            'nama' => Request()->nama,
            'komentar' => Request()->masukan,
            'jenis_masukan' => Request()->jenis,
            'id_dosen' => session('id_dosen')
        ];
        
        $this->MahasiswaAdminModel->addComent($data);

        return redirect()->route('indexdosen')->with('pesan', 'Masukan telah dikirimkan !!!');
    }

    public function katasandi()
    {
        if (session()->has('username_dosen')) {
        } else {
            return redirect()->route('login')->with('pesan', 'Anda harus login terlebih dahulu!');
        }
        if (session()->has('username_dosen')) {
            session()->has('nama_dosen');
            session('id_dosen');
            session()->has('link');
        } else {
            return redirect()->route('login')->with('pesan', 'Anda harus login terlebih dahulu!');
        }
        return view('dosen.v_katasandi');
    }

    public function ubahkatasandi($id_dosen)
    {
        Request()->validate([
            'katasandibaru' => 'required|min:8',
            'katasandilama' => 'required'
        ],[
            'katasandibaru.required' => 'Kata Sandi Baru wajib diisi !!!',
            'katasandibaru.min' => 'Kata Sandi Baru minimal 8 karakter !!!',
            'katasandilama.required' => 'Kata Sandi Lama wajib diisi !!!'
        ]);
        if($this->DosenAdminModel->alData($id_dosen, md5(Request()->katasandilama)))
        {
            $data = [
                'password_dosen' => md5(Request()->katasandibaru)
            ];
            
            $this->DosenAdminModel->updateSandi($data, $id_dosen);
            return redirect()->route('ktsandi')->with('pesan', 'Kata Sandi Berhasil Di Ubah !!!');
        }
        else
        {
            return redirect()->route('ktsandi')->with('gagal', 'Kata Sandi Lama Salah !!!');
        }
    }

    public function tambahbacaan()
    {
        if (session()->has('username_dosen')) {
        } else {
            return redirect()->route('login')->with('pesan', 'Anda harus login terlebih dahulu!');
        }
        $data = [
            'topik'=> $this->KategoriModel->allData1(),
            'kategori'=> $this->KategoriModel->allData(),
            'bacaan' => $this->DosenAdminModel->allBacaan(session()->get('id_dosen'))
        ];
        return view('dosen.v_tambahbacaan', $data);
    }

    public function insert()
    {
        Request()->validate([
            'judul' => 'required|unique:bacaan,judul',
            'tahun' => 'required|min:4|max:4',
            'kategori' => 'required',
            'penulis' => 'required',
            'topik' => 'required',
            'sampul' => 'mimes:jpg,png',
            'file' => 'required|mimes:pdf'
        ],[
            'judul.unique' => 'Judul ini sudah ada !!!',
            'judul.required' => 'Judul wajib diisi !!!',
            'tahun.min' => 'Masukkan tahun yang benar !!!',
            'tahun.max' => 'Masukkan tahun yang benar !!!',
            'tahun.required' => 'Tahun wajib diisi !!!',
            'penulis.required' => 'Penulis wajib diisi !!!',
            'kategori.required' => 'Kategori wajib diisi !!!',
            'topik.required' => 'Topik wajib diisi !!!',
            'sampul.mimes' => 'File harus berbentuk jpg/png !!!',
            'file.required' => 'File wajib ditambahkan !!!',
            'file.mimes' => 'File harus berbentuk pdf !!!'
        ]);

            $file = Request()->file;
            $fileName = Request()->judul . '.' . $file->extension();
            $file->move(public_path('file'), $fileName);

            $sampul = Request()->sampul;
            $sampulName = Request()->judul . '.' . $sampul->extension();
            $sampul->move(public_path('sampul'), $sampulName);

            $data = [
                'judul' => Request()->judul,
                'tahun' => Request()->tahun,
                'penerbit' => Request()->penerbit,
                'penulis' => Request()->penulis,
                'abstrak' => Request()->abstrak,
                'kategori_id' => Request()->kategori,
                'topik_id' => Request()->topik,
                'upload_by' => Request()->nama,
                'sampul' => $sampulName,
                'file' => $fileName
            ];
            $this->BacaanAdminModel->addData($data);

        return redirect()->route('pesantambah')->with('pesan', 'Data Berhasil Di Tambahkan !!!');
    }

    public function daftarbacaan()
    {
        if (session()->has('username_dosen')) {
        } else {
            return redirect()->route('login')->with('pesan', 'Anda harus login terlebih dahulu!');
        }
        $data = [
            'topik'=> $this->KategoriModel->allData1(),
            'kategori'=> $this->KategoriModel->allData(),
        ];
        return view('dosen.v_daftar', $data);
    }

    public function daftarjenis($id)
    {
        if (session()->has('username_dosen')) {
        } else {
            return redirect()->route('login')->with('pesan', 'Anda harus login terlebih dahulu!');
        }
        $data = [
            'topik'=> $this->KategoriModel->allData1(),
            'kategori'=> $this->KategoriModel->allData(),
            'detail'=> $this->BacaanAdminModel->detailKategori($id),
            'bacaan' => $this->MahasiswaAdminModel->jenisbacaan($id)
        ];
        return view('dosen.v_daftarjenis', $data);
    }

    public function daftartopik($id)
    {
        if (session()->has('username_dosen')) {
        } else {
            return redirect()->route('login')->with('pesan', 'Anda harus login terlebih dahulu!');
        }
        $date  = date("Y-m-d");
        $s = DB::table('viewtopik') -> where('id_topik', '=', $id) -> where('date', '=', $date)->count();
        $ss = isset($s)?($s):0;
        $dsn = session('id_dosen');
        
        if($ss == 0){
            $this->HomeModel->viewTopikdsn($id, $date, $dsn);
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
        
        return view('dosen.v_daftartopik', $data);
    }

    public function detail($id)
    { 
        if (session()->has('username_dosen')) {
        } else {
            return redirect()->route('login')->with('pesan', 'Anda harus login terlebih dahulu!');
        }
        $date  = date("Y-m-d");
        $s = DB::table('viewbacaan') -> where('id_bacaan', '=', $id) -> where('date', '=', $date)->count();
        $ss = isset($s)?($s):0;
        $dsn = session('id_dosen');

        if($ss == 0){
            $this->HomeModel->viewBacaandsn($id, $date, $dsn);
        }
        else{
            $this->HomeModel->updateBacaan($id, $date);
        }
        
        $data = [
            'topik'=> $this->KategoriModel->allData1(),
            'kategori'=> $this->KategoriModel->allData(),
            'bacaan'=> $this->BacaanAdminModel->detailData($id)
        ];
        return view('dosen.v_detail', $data);
    }

    public function cari(Request $request)
    {
        if (session()->has('username_dosen')) {
        } else {
            return redirect()->route('login')->with('pesan', 'Anda harus login terlebih dahulu!');
        }
        $keyword = $request->cari;
        $data = [
            'topik'=> $this->KategoriModel->allData1(),
            'kategori'=> $this->KategoriModel->allData()
        ];
        $bacaan = DB::table('bacaan') -> where('judul', 'like', "%".$keyword."%")
        ->orwhere('penulis', 'like', "%".$keyword."%")->paginate();
        return view('dosen.v_daftar', $data, ['bacaan' => $bacaan]);
    }
}
