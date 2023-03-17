<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class DosenAdminModel extends Model
{
    public function allData()
    {
        return DB::table('dosen')->get();
    }
    public function addData($data)
    {
        DB::table('dosen')->insert($data);
    }
    public function detailData($id_dosen)
    {
        return DB::table('dosen')
            ->where('id_dosen', $id_dosen)->first();
    }
    public function updateData($id_dosen, $data)
    {
        DB::table('dosen')
            ->where('id_dosen', $id_dosen)
            ->update($data);
    }
    public function deleteData($id_dosen)
    {
        DB::table('dosen')
            ->where('id_dosen', $id_dosen)
            ->delete();
    }
    public function updateSandi($data, $id_dosen)
    {
        DB::table('dosen')
            ->where('id_dosen', $id_dosen)
            ->update($data);
    }
    public function alData($id_dosen, $pass)
    {
        return DB::table('dosen')
            ->where('id_dosen', '=', $id_dosen)
            ->where('password_dosen', '=', $pass)->first();
    }
    public function allBacaan($id_dosen)
    {
        return DB::table('bacaan')
            ->where('upload_by', '=', $id_dosen)->get();
    }
}