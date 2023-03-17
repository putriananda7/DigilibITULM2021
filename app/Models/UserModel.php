<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class UserModel extends Model
{
    public function allData()
    {
        return DB::table('admin')->get();
    }
    public function allData1()
    {
        return DB::table('mahasiswa')->get();
    }
    public function allData2()
    {
        return DB::table('dosen')->get();
    }
    public function updateSandi($data)
    {
        DB::table('admin')
            ->where('id_admin', 1)
            ->update($data);
    }
}
