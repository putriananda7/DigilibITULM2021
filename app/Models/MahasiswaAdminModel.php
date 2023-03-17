<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class MahasiswaAdminModel extends Model
{
    public function allData()
    {
        return DB::table('mahasiswa')->orderby('nama_mhs', 'asc')->paginate(15);
    }
    public function addData($data)
    {
        DB::table('mahasiswa')->insert($data);
    }
    public function detailData($id_mhs)
    {
        return DB::table('mahasiswa')
            ->where('id_mhs', $id_mhs)->first();
    }
    public function updateData($id_mhs, $data)
    {
        DB::table('mahasiswa')
            ->where('id_mhs', $id_mhs)
            ->update($data);
    }
    public function deleteData($id_mhs)
    {
        DB::table('mahasiswa')
            ->where('id_mhs', $id_mhs)
            ->delete();
    }
    public function addComent($data)
    {
        DB::table('masukan')->insert($data);
    }
    public function updateSandi($data, $id_mhs)
    {
        DB::table('mahasiswa')
            ->where('id_mhs', $id_mhs)
            ->update($data);
    }
    public function alData($id_mhs, $pass)
    {
        return DB::table('mahasiswa')
            ->where('id_mhs', '=', $id_mhs)
            ->where('password_mhs', '=', $pass)->first();
    }

    public function jenisbacaan($id)
    {
        return DB::table('bacaan')
            ->leftjoin('kategori', 'kategori.id_kategori', '=', 'bacaan.kategori_id')
            ->leftjoin('topik', 'topik.id_topik', '=', 'bacaan.topik_id')
            ->leftjoin('dosen', 'dosen.id_dosen', '=', 'bacaan.upload_by')
            ->where('kategori_id', '=', $id)->orderby('judul', 'asc')->paginate(10);
    }

    public function topikbacaan($id)
    {
        return DB::table('bacaan')
            ->leftjoin('kategori', 'kategori.id_kategori', '=', 'bacaan.kategori_id')
            ->leftjoin('topik', 'topik.id_topik', '=', 'bacaan.topik_id')
            ->leftjoin('dosen', 'dosen.id_dosen', '=', 'bacaan.upload_by')
            ->where('topik_id', '=', $id)->orderby('judul', 'asc')->paginate(10);
    }

    public function cariBacaan($keyword)
    {
        return DB::table('bacaan')
            ->leftjoin('kategori', 'kategori.id_kategori', '=', 'bacaan.kategori_id')
            ->leftjoin('topik', 'topik.id_topik', '=', 'bacaan.topik_id')
            ->rightjoin('dosen', 'dosen.id_dosen', '=', 'bacaan.upload_by')
            ->where('judul', 'like', "%".$keyword."%")
            ->orwhere('penulis', 'like', "%".$keyword."%")
            ->orwhere('nama_dosen', 'like', "%".$keyword."%")->orderby('judul', 'asc')->paginate(10);
    }
    public function listBacaan($id)
    {
        return DB::table('bacaan')
            ->where('upload_by', '=', $id)->orderby('judul', 'asc')->paginate(10);
    }
}
