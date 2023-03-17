<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\UserModel;
use File;
use Response;
use Illuminate\Support\Facades\Storage;

class PanduanAdminController extends Controller
{
    public function manual()
    {
        if (session()->has('username')) {
        } else {
            return redirect()->route('login')->with('pesan', 'Anda harus login terlebih dahulu!');
        }
        return view('admin.v_manualadm');
    }

    public function sandi()
    {
        if (session()->has('username')) {
        } else {
            return redirect()->route('login')->with('pesan', 'Anda harus login terlebih dahulu!');
        }
        return view('admin.v_sandiadm');
    }

    public function __construct()
    {
        $this->UserModel = new UserModel();
        
    }
    public function update()
    {
        if($this->UserModel->allData()->Where('password_admin', md5(Request()->passlama))->first())
        {
            $data = [
                'password_admin' => md5(Request()->passbaru)
            ];
            
            $this->UserModel->updateSandi($data);
            return redirect()->route('sandi')->with('pesan', 'Kata Sandi Berhasil Di Ubah !!!');
        }
        else
        {
            return redirect()->route('sandi')->with('gagal', 'Kata Sandi Lama Salah !!!');
        }
    }
    public function download()
    {
        if (session()->has('username')) {
        } else {
            return redirect()->route('login')->with('pesan', 'Anda harus login terlebih dahulu!');
        }
        $file = public_path(). "/manual/manual.pdf";
        return \Response::download($file);
    }
    public function manualdownload()
    {
        if (session()->has('username')) {
        } else {
            return redirect()->route('login')->with('pesan', 'Anda harus login terlebih dahulu!');
        }
        $file = public_path(). "/manual/manual.pdf";
        return \Response::download($file);
    }
}
