<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class HomeModel extends Model
{
    public function detailBacaan($file)
    {
        return DB::table('bacaan')
            ->where('file', $file)->first();
    }

    public function masukan($jenis)
    {
        return DB::table('masukan')
                ->where('jenis_masukan', '=', $jenis)->get();
    }

    public function mostRecent()
    {
        return DB::table('bacaan')
            ->orderBy('id_bacaan', 'desc')->limit(3)->get();
    }
    public function viewTopikmhs($id, $date, $mhs)
    {
        DB::table('viewtopik')->insert(['id_topik' => $id, 'date' => $date,'id' => $id, 'mhs' => $mhs]);
    }
    public function viewTopikdsn($id, $date, $dsn)
    {
        DB::table('viewtopik')->insert(['id_topik' => $id, 'date' => $date,'id' => $id, 'dsn' => $dsn]);
    }
    public function updateTopik($id, $date)
    {
        DB::table('viewtopik')-> where('id_topik', '=', $id) -> where('date', '=', $date)->update(['kali'=> DB::raw('kali+1')]);
    }
    public function viewBacaanmhs($id, $date, $mhs)
    {
        DB::table('viewbacaan')->insert(['id_bacaan' => $id, 'kali' => 1, 'date' => $date,'id' => $id, 'mhs' => $mhs]);
    }
    public function viewBacaandsn($id, $date, $dsn)
    {
        DB::table('viewbacaan')->insert(['id_bacaan' => $id, 'kali' => 1, 'date' => $date,'id' => $id, 'dsn' => $dsn]);
    }
    public function updateBacaan($id, $date)
    {
        DB::table('viewbacaan')-> where('id_bacaan', '=', $id) -> where('date', '=', $date)->update(['kali'=> DB::raw('kali+1')]);
    }
    public function printstatistik($bulan, $tahun)
    {
        return DB::table('visitor')
            ->groupby('date')
            ->where(DB::raw('month(date)'), $bulan)
            ->where(DB::raw('year(date)'), $tahun)
            ->select('date', \DB::raw('count(ip) as jumlah'))
            ->orderby('date', 'asc')
            ->get();
    }
    public function printtopik($bulan, $tahun)
    {
        return DB::table('viewtopik')
            ->groupby('id_topik')
            ->where(DB::raw('month(date)'), $bulan)
            ->where(DB::raw('year(date)'), $tahun)
            ->select('id_topik', \DB::raw('sum(kali) as jumlah'))
            ->orderby('jumlah', 'desc')
            ->get();
    }
    public function printbacaan($bulan, $tahun)
    {
        return DB::table('viewbacaan')
            ->groupby('id_bacaan')
            ->where(DB::raw('month(date)'), $bulan)
            ->where(DB::raw('year(date)'), $tahun)
            ->select('id_bacaan', \DB::raw('sum(kali) as jumlah'))
            ->orderby('jumlah', 'desc')
            ->get();
    }
    public function mostView($bulan, $tahun)
    {
        return DB::table('viewbacaan')
            ->groupby('id_bacaan')
            ->where(DB::raw('month(date)'), $bulan)
            ->where(DB::raw('year(date)'), $tahun)
            ->select('id_bacaan', \DB::raw('sum(kali) as jumlah'))
            ->orderby('jumlah', 'desc')->limit(3)
            ->get();
    }
}
