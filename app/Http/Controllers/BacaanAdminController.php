<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\KategoriModel;
use App\Models\BacaanAdminModel;
use Illuminate\Support\Facades\DB;

class BacaanAdminController extends Controller
{
    public function daftar()
    {
        if (session()->has('username')) {
        } else {
            return redirect()->route('login')->with('pesan', 'Anda harus login terlebih dahulu!');
        }
        $kategori = $this->KategoriModel->allData();
        
        $hari = DB::table('bacaan')->groupby('kategori_id')->select('kategori_id', \DB::raw('count(judul) as total'))->orderby('kategori_id', 'asc')->get();
        $jumlah =[];
        
        foreach($hari as $hari){
            $jumlah[] = (int)$hari->total;
        }
        $data = [
            'kategori'=> $kategori,
            'topik'=> $this->KategoriModel->allData1(),
            'jumlah' => $jumlah,
        ];
        return view('admin.v_daftaradm', $data);
    }

    public function __construct()
    {
        $this->KategoriModel = new KategoriModel();
        $this->BacaanAdminModel = new BacaanAdminModel();
    }
    public function tambah()
    {
        if (session()->has('username')) {
        } else {
            return redirect()->route('login')->with('pesan', 'Anda harus login terlebih dahulu!');
        }
        $data = [
            'kategori'=> $this->KategoriModel->allData(),
        ];
        $data1 = [
            'topik'=> $this->KategoriModel->allData1(),
        ];
        return view('admin.v_tambahadm', $data, $data1);
    }

    public function kelola()
    {
        if (session()->has('username')) {
        } else {
            return redirect()->route('login')->with('pesan', 'Anda harus login terlebih dahulu!');
        }
        $data = [
            'bacaan'=> $this->BacaanAdminModel->allData(),
        ];
        $data1 = [
            'kategori'=> $this->KategoriModel->allData(),
            'topik'=> $this->KategoriModel->allData1(),
        ];
        return view('admin.v_kelolaadm', $data, $data1);
    }
    public function insert()
    {
            if(Request()->kategori == 1){
                Request()->validate([
                    'penerbit' => 'required',
                    'sampul' => 'required|mimes:png,jpg',
                    'judul' => 'required|unique:bacaan,judul',
                    'tahun' => 'required|min:4|max:4',
                    'kategori' => 'required',
                    'penulis' => 'required',
                    'topik' => 'required',
                    'file' => 'required|mimes:pdf'
                ],[
                    'penerbit.required' => 'Penerbit wajib diisi !!!',
                    'sampul.required' => 'Sampul wajib ditambahkan !!!',
                    'judul.unique' => 'Judul ini sudah ada !!!',
                    'judul.required' => 'Judul wajib diisi !!!',
                    'tahun.required' => 'Tahun wajib diisi !!!',
                    'penulis.required' => 'Penulis wajib diisi !!!',
                    'kategori.required' => 'Kategori wajib diisi !!!',
                    'topik.required' => 'Topik wajib diisi !!!',
                    'file.required' => 'File wajib ditambahkan !!!',
                    'sampul.mimes' => 'File harus berbentuk jpg/png !!!',
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
                    'sampul' => $sampulName,
                    'file' => $fileName
                ];

                $this->BacaanAdminModel->addData($data);
            }
            else if(Request()->kategori == 2){
                Request()->validate([
                    'penerbit' => 'required',
                    'abstrak' => 'required',
                    'judul' => 'required|unique:bacaan,judul',
                    'tahun' => 'required|min:4|max:4',
                    'kategori' => 'required',
                    'penulis' => 'required',
                    'topik' => 'required',
                    'file' => 'required|mimes:pdf'
                ],[
                    'penerbit.required' => 'Penerbit wajib diisi !!!',
                    'abstrak.required' => 'Abstrak wajib ditambahkan !!!',
                    'judul.unique' => 'Judul ini sudah ada !!!',
                    'judul.required' => 'Judul wajib diisi !!!',
                    'tahun.required' => 'Tahun wajib diisi !!!',
                    'penulis.required' => 'Penulis wajib diisi !!!',
                    'kategori.required' => 'Kategori wajib diisi !!!',
                    'topik.required' => 'Topik wajib diisi !!!',
                    'file.required' => 'File wajib ditambahkan !!!',
                    'file.mimes' => 'File harus berbentuk pdf !!!'
                ]);
                $file = Request()->file;
                $fileName = Request()->judul . '.' . $file->extension();
                $file->move(public_path('file'), $fileName);

                $data = [
                    'judul' => Request()->judul,
                    'tahun' => Request()->tahun,
                    'penerbit' => Request()->penerbit,
                    'penulis' => Request()->penulis,
                    'abstrak' => Request()->abstrak,
                    'kategori_id' => Request()->kategori,
                    'topik_id' => Request()->topik,
                    'file' => $fileName
                ];

                $this->BacaanAdminModel->addData($data);
            }
            else if(Request()->kategori == 3){
                Request()->validate([
                    'abstrak' => 'required',
                    'sampul' => 'required|mimes:png,jpg',
                    'judul' => 'required|unique:bacaan,judul',
                    'tahun' => 'required|min:4|max:4',
                    'kategori' => 'required',
                    'penulis' => 'required',
                    'topik' => 'required',
                    'file' => 'required|mimes:pdf'
                ],[
                    'abstrak.required' => 'Abstrak wajib diisi !!!',
                    'sampul.required' => 'Sampul wajib ditambahkan !!!',
                    'judul.unique' => 'Judul ini sudah ada !!!',
                    'judul.required' => 'Judul wajib diisi !!!',
                    'tahun.required' => 'Tahun wajib diisi !!!',
                    'penulis.required' => 'Penulis wajib diisi !!!',
                    'kategori.required' => 'Kategori wajib diisi !!!',
                    'topik.required' => 'Topik wajib diisi !!!',
                    'file.required' => 'File wajib ditambahkan !!!',
                    'sampul.mimes' => 'File harus berbentuk jpg/png !!!',
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
                    'sampul' => $sampulName,
                    'file' => $fileName
                ];

                $this->BacaanAdminModel->addData($data);
            }
            else{
                Request()->validate([
                    'sampul' => 'required|mimes:png,jpg',
                    'judul' => 'required|unique:bacaan,judul',
                    'tahun' => 'required|min:4|max:4',
                    'kategori' => 'required',
                    'penulis' => 'required',
                    'topik' => 'required',
                    'file' => 'required|mimes:pdf'
                ],[
                    'sampul.required' => 'Sampul wajib diisi !!!',
                    'judul.unique' => 'Judul ini sudah ada !!!',
                    'judul.required' => 'Judul wajib diisi !!!',
                    'tahun.required' => 'Tahun wajib diisi !!!',
                    'penulis.required' => 'Penulis wajib diisi !!!',
                    'kategori.required' => 'Kategori wajib diisi !!!',
                    'topik.required' => 'Topik wajib diisi !!!',
                    'file.required' => 'File wajib ditambahkan !!!',
                    'sampul.mimes' => 'File harus berbentuk jpg/png !!!',
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
                    'sampul' => $sampulName,
                    'file' => $fileName
                ];

                $this->BacaanAdminModel->addData($data);
            }
    
        return redirect()->route('tambah')->with('pesan', 'Data Berhasil Di Tambahkan !!!');
    }

    public function edit($id_bacaan)
    {
        if (session()->has('username')) {
        } else {
            return redirect()->route('login')->with('pesan', 'Anda harus login terlebih dahulu!');
        }
        if(!$this->BacaanAdminModel->detailData($id_bacaan))
        {
            abort(404);
        };
        $data = [
            'bacaan'=> $this->BacaanAdminModel->detailData($id_bacaan),
        ];
        $data1 = [
            'kategori'=> $this->KategoriModel->allData(),
            'topik'=> $this->KategoriModel->allData1(),
        ];
        return view('admin.v_editadm', $data, $data1);
    }

    public function update($id_bacaan)
    {
        Request()->validate([
            'judul' => 'required',
            'tahun' => 'required|min:4|max:4',
            'kategori' => 'required',
            'penulis' => 'required',
            'topik' => 'required',
            'sampul' => 'mimes:jpg,png',
            'file' => 'mimes:pdf'
        ],[
            'judul.required' => 'Judul wajib diisi !!!',
            'tahun.required' => 'Tahun wajib diisi !!!',
            'penulis.required' => 'Penulis wajib diisi !!!',
            'kategori.required' => 'Kategori wajib diisi !!!',
            'topik.required' => 'Topik wajib diisi !!!',
            'sampul.mimes' => 'File harus berbentuk jpg/png !!!',
            'file.mimes' => 'File harus berbentuk pdf !!!'
        ]);

        if(Request()->file <> "") {
            if(Request()->sampul <> ""){
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
                    'sampul' => $sampulName,
                    'file' => $fileName
                ];

                $this->BacaanAdminModel->editData($id_bacaan, $data);
            }
            else{
                $file = Request()->file;
                $fileName = Request()->judul . '.' . $file->extension();
                $file->move(public_path('file'), $fileName);

                $data = [
                    'judul' => Request()->judul,
                    'tahun' => Request()->tahun,
                    'penerbit' => Request()->penerbit,
                    'penulis' => Request()->penulis,
                    'abstrak' => Request()->abstrak,
                    'kategori_id' => Request()->kategori,
                    'topik_id' => Request()->topik,
                    'file' => $fileName
                ];

                $this->BacaanAdminModel->editData($id_bacaan, $data);
            }
        }
        else {
            if(Request()->sampul <> ""){
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
                    'sampul' => $sampulName
                ];

                $this->BacaanAdminModel->editData($id_bacaan, $data);
            }
            else{
                $data = [
                    'judul' => Request()->judul,
                    'tahun' => Request()->tahun,
                    'penerbit' => Request()->penerbit,
                    'penulis' => Request()->penulis,
                    'abstrak' => Request()->abstrak,
                    'kategori_id' => Request()->kategori,
                    'topik_id' => Request()->topik
                ];
    
                $this->BacaanAdminModel->editData($id_bacaan, $data);
            }
        }
        
        return redirect()->route('bacaan')->with('pesan', 'Data Berhasil Di Update !!!');
    }

    public function delete($id_bacaan)
    {
        $bacaan = $this->BacaanAdminModel->detailData($id_bacaan);
        if ($bacaan->file <> "") {
            unlink(public_path('file') . '/' . $bacaan->file);
        }
        if ($bacaan->sampul <> "") {
            unlink(public_path('sampul') . '/' . $bacaan->sampul);
        }
        $this->BacaanAdminModel->deleteData($id_bacaan);
        return redirect()->route('bacaan')->with('pesan', 'Data Berhasil Di Hapus !!!');
    }

    public function lihatdaftar($id_kategori)
    {
        if (session()->has('username')) {
        } else {
            return redirect()->route('login')->with('pesan', 'Anda harus login terlebih dahulu!');
        }
        $data = [
            'bacaan'=> $this->BacaanAdminModel->detailKategori($id_kategori),
            'bacaan1'=> $this->BacaanAdminModel->detailBacaan($id_kategori, "1"),
            'bacaan2'=> $this->BacaanAdminModel->detailBacaan($id_kategori, "2"),
            'bacaan3'=> $this->BacaanAdminModel->detailBacaan($id_kategori, "3"),
            'bacaan4'=> $this->BacaanAdminModel->detailBacaan($id_kategori, "4"),
            'bacaan5'=> $this->BacaanAdminModel->detailBacaan($id_kategori, "5"),
            'bacaan12'=> $this->BacaanAdminModel->detailBacaan($id_kategori, "12"),
        ];
        $data1 = [
            'topik'=> $this->KategoriModel->allData1(),
            'bacaan6'=> $this->BacaanAdminModel->detailBacaan($id_kategori, "6"),
            'bacaan7'=> $this->BacaanAdminModel->detailBacaan($id_kategori, "7"),
            'bacaan8'=> $this->BacaanAdminModel->detailBacaan($id_kategori, "8"),
            'bacaan9'=> $this->BacaanAdminModel->detailBacaan($id_kategori, "9"),
            'bacaan10'=> $this->BacaanAdminModel->detailBacaan($id_kategori, "10"),
            'bacaan11'=> $this->BacaanAdminModel->detailBacaan($id_kategori, "11"),
        ];
        return view('admin.v_lihatdaftar', $data, $data1);
    }

    public function select()
    {
        if (session()->has('username')) {
        } else {
            return redirect()->route('login')->with('pesan', 'Anda harus login terlebih dahulu!');
        }
        $data = [
            'topik'=> $this->KategoriModel->allData1(),
            'kategori'=> $this->KategoriModel->allData()
        ];

        if(Request()->kategori == 1)
        {
            return view('admin.v_tambah1', $data);
        }
        else if(Request()->kategori == 2)
        {
            return view('admin.v_tambah2', $data);
        }
        else if(Request()->kategori == 3)
        {
            return view('admin.v_tambah5', $data);
        }
        else if(Request()->kategori == 4)
        {
            return view('admin.v_tambah4', $data);
        }
        else
        {
            return view('admin.v_tambah3', $data);
        }
    }

    public function detail($id_bacaan)
    {
        if (session()->has('username')) {
        } else {
            return redirect()->route('login')->with('pesan', 'Anda harus login terlebih dahulu!');
        }
        $data = [
            'bacaan'=> $this->BacaanAdminModel->detailData($id_bacaan)
        ];
        return view('admin.v_detailbacaan', $data);
    }

    public function search(Request $request)
    {
        if (session()->has('username')) {
        } else {
            return redirect()->route('login')->with('pesan', 'Anda harus login terlebih dahulu!');
        }
        $keyword = $request->cari;
        $bacaan = DB::table('bacaan') -> where('judul', 'like', "%".$keyword."%")
        ->orwhere('penulis', 'like', "%".$keyword."%")
        ->orwhere('penerbit', 'like', "%".$keyword."%")
        ->orwhere('tahun', 'like', "%".$keyword."%")->paginate();
        return view('admin.v_kelolacari', ['bacaan' => $bacaan]);
    }

    public function searchmhs(Request $request)
    {
        if (session()->has('username')) {
        } else {
            return redirect()->route('login')->with('pesan', 'Anda harus login terlebih dahulu!');
        }
        $keyword = $request->cari;
        $mahasiswa = DB::table('mahasiswa') -> where('nama_mhs', 'like', "%".$keyword."%")
        ->orwhere('username_mhs', 'like', "%".$keyword."%")
        ->orwhere('angkatan_mhs', 'like', "%".$keyword."%")->paginate();
        return view('admin.v_mahasiswacari', ['mahasiswa' => $mahasiswa]);
    }

    public function searchdosen(Request $request)
    {
        if (session()->has('username')) {
        } else {
            return redirect()->route('login')->with('pesan', 'Anda harus login terlebih dahulu!');
        }
        $keyword = $request->cari;
        $dosen = DB::table('dosen') -> where('nama_dosen', 'like', "%".$keyword."%")
        ->orwhere('username_dosen', 'like', "%".$keyword."%")->paginate();
        return view('admin.v_dosencari', ['dosen' => $dosen]);
    }
}
