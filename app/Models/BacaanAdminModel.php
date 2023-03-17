<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class BacaanAdminModel extends Model
{
    public function addData($data)
    {
        DB::table('bacaan')->insert($data);
    }
    public function allData()
    {
        return DB::table('bacaan')->orderby('judul', 'asc')->paginate(15);
    }
    public function detailData($id_bacaan)
    {
        return DB::table('bacaan')
            ->leftjoin('kategori', 'kategori.id_kategori', '=', 'bacaan.kategori_id')
            ->leftjoin('topik', 'topik.id_topik', '=', 'bacaan.topik_id')
            ->leftjoin('dosen', 'dosen.id_dosen', '=', 'bacaan.upload_by')
            ->where('id_bacaan', $id_bacaan)->first();
    }
    public function editData($id_bacaan, $data)
    {
        DB::table('bacaan')
            ->where('id_bacaan', $id_bacaan)
            ->update($data);
    }
    public function deleteData($id_bacaan)
    {
        DB::table('bacaan')
            ->where('id_bacaan', $id_bacaan)
            ->delete();
    }
    public function detailBacaan($id_kategori, $id_topik)
    {
        return DB::table('bacaan')
            ->leftjoin('kategori', 'kategori.id_kategori', '=', 'bacaan.kategori_id')
            ->leftjoin('topik', 'topik.id_topik', '=', 'bacaan.topik_id')
            ->where('topik_id', '=', $id_topik)
            ->where('kategori_id', '=', $id_kategori)->get();
    }
    public function detailKategori($id_kategori)
    {
        return DB::table('bacaan')
            ->leftjoin('kategori', 'kategori.id_kategori', '=', 'bacaan.kategori_id')
            ->leftjoin('topik', 'topik.id_topik', '=', 'bacaan.topik_id')
            ->where('kategori_id', $id_kategori)->first();
    }
    public function detailTopik($id)
    {
        return DB::table('topik')
            ->where('id_topik', $id)->first();
    }
}