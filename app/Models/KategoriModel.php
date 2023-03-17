<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class KategoriModel extends Model
{
    public function allData()
    {
        return DB::table('kategori')->orderby('nama_kategori', 'asc')->get();
    }
    public function allData1()
    {
        return DB::table('topik')->orderby('nama_topik', 'asc')->get();
    }
    public function detailData($id)
    {
        return DB::table('kategori')
            ->where('id_kategori', $id)->first();
    }
}
