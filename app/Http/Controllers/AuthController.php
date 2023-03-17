<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\UserModel;

class AuthController extends Controller
{
    public function __construct()
    {
        $this->UserModel = new UserModel();
    }
    public function logout()
    {
        session()->flush();
        session()->forget('id_admin');
        session()->forget('username_admin');
        session()->forget('id_mhs');
        session()->forget('username_mhs');
        session()->forget('nama_mhs');
        session()->forget('angkatan_mhs');
        session()->forget('id_dosen');
        session()->forget('nama_dosen');
        session()->forget('username_dosen');
        session()->forget('link_dosen');
        session()->save();
        return redirect()->route('login');
    }

    public function loginadmin()
    {
        return view('v_login');
    }
    public function loginpost(Request $request)
    {
        Request()->validate([
            'username' => 'required',
            'password' => 'required'
        ],[
            'username.required' => 'Username wajib diisi !!!',
            'password.required' => 'Password wajib diisi !!!'
        ]);

        $stmt = $this->UserModel->allData()->Where('username_admin', $request->username)->first();
        $stmt2 = $this->UserModel->allData()->Where('password_admin', md5($request->password))->first();
        
        if ($stmt)
        {
            if ($stmt2)
            {
                session(['id' => $stmt->id_admin]);
                session(['username' => $stmt->username_admin]);
                return redirect()->route('indexadmin');
            }
            else
            {
                return redirect()->route('login')->with('pesan', 'Password Salah');
            }
        }
        else{
            $stmt = $this->UserModel->allData1()->Where('username_mhs', $request->username)->first();
            $stmt2 = $this->UserModel->allData1()->Where('password_mhs', md5($request->password))->first();
            
            if ($stmt)
            {
                if ($stmt2)
                {
                    session(['id_mhs' => $stmt->id_mhs]);
                    session(['nama_mhs' => $stmt->nama_mhs]);
                    session(['username_mhs' => $stmt->username_mhs]);
                    session(['angkatan' => $stmt->angkatan_mhs]);
                    return redirect()->route('indexmahasiswa');
                }
                else
                {
                    return redirect()->route('login')->with('pesan', 'Password Salah');
                }
            }
            else{
                $stmt = $this->UserModel->allData2()->Where('username_dosen', $request->username)->first();
                $stmt2 = $this->UserModel->allData2()->Where('password_dosen', md5($request->password))->first();
                
                if ($stmt)
                {
                    if ($stmt2)
                    {
                        session(['id_dosen' => $stmt->id_dosen]);
                        session(['nama_dosen' => $stmt->nama_dosen]);
                        session(['username_dosen' => $stmt->username_dosen]);
                        session(['link' => $stmt->link_dosen]);
                        return redirect()->route('indexdosen');
                    }
                    else
                    {
                        return redirect()->route('login')->with('pesan', 'Password Salah');
                    }
                }
                else
                {
                    return redirect()->route('login')->with('pesan', 'Username Tidak Ditemukan');
                }
            }
        }
    }
}
