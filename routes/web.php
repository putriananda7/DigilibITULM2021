<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\BacaanAdminController;
use App\Http\Controllers\PanduanAdminController;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\MahasiswaController;
use App\Http\Controllers\DosenController;
use App\Http\Controllers\HomeController;

Route::get('/admin', [AdminController::class, 'index'])->name('indexadmin');
Route::get('/admin/mahasiswa', [AdminController::class, 'mahasiswa'])->name('mahasiswa');
Route::get('/admin/dosen', [AdminController::class, 'dosen'])->name('dosen');
Route::get('/admin/daftarbacaan', [BacaanAdminController::class, 'daftar']);
Route::get('/admin/lihatdaftar/{id_kategori}', [BacaanAdminController::class, 'lihatdaftar']);
Route::get('/admin/tambahbacaan', [BacaanAdminController::class, 'tambah'])->name('tambah');
Route::get('/admin/kelolabacaan', [BacaanAdminController::class, 'kelola'])->name('bacaan');
Route::get('/admin/manualpenggunaan', [PanduanAdminController::class, 'manual']);
Route::get('/admin/katasandi', [PanduanAdminController::class, 'sandi'])->name('sandi');
Route::post('/admin/updatesandi', [PanduanAdminController::class, 'update']);
Route::post('/admin/insert', [BacaanAdminController::class, 'insert']);
Route::get('/admin/select', [BacaanAdminController::class, 'select']);
Route::get('/admin/detailbacaan/{id_bacaan}', [BacaanAdminController::class, 'detail']);
Route::get('/admin/editbacaan/{id_bacaan}', [BacaanAdminController::class, 'edit']);
Route::post('/admin/update/{id_bacaan}', [BacaanAdminController::class, 'update']);
Route::get('/admin/delete/{id_bacaan}', [BacaanAdminController::class, 'delete']);
Route::get('/admin/tambahmahasiswa', [AdminController::class, 'tambahmahasiswa']);
Route::post('/admin/insertmhs', [AdminController::class, 'insertmhs']);
Route::get('/admin/editmhs/{id_mhs}', [AdminController::class, 'editmhs']);
Route::post('/admin/updatemhs/{id_mhs}', [AdminController::class, 'updatemhs']);
Route::get('/admin/deletemhs/{id_mhs}', [AdminController::class, 'deletemhs']);
Route::get('/admin/tambahdosen', [AdminController::class, 'tambahdosen']);
Route::post('/admin/insertdsn', [AdminController::class, 'insertdsn']);
Route::get('/admin/editdsn/{id_dosen}', [AdminController::class, 'editdsn']);
Route::post('/admin/updatedsn/{id_dosen}', [AdminController::class, 'updatedsn']);
Route::get('/admin/deletedsn/{id_dosen}', [AdminController::class, 'deletedsn']);
Route::get('/admin/kelolabacaan/search', [BacaanAdminController::class, 'search']);
Route::get('/admin/mahasiswa/search', [BacaanAdminController::class, 'searchmhs']);
Route::get('/admin/dosen/search', [BacaanAdminController::class, 'searchdosen']);
Route::get('/admin/printstatistik', [AdminController::class, 'printstatistik']);
Route::get('/admin/printtopik', [AdminController::class, 'printtopik']);
Route::get('/admin/printbacaan', [AdminController::class, 'printbacaan']);
Route::get('/admin/manualpenggunaan/download', [PanduanAdminController::class, 'manualdownload']);

Route::get('/login', [AuthController::class, 'loginadmin'])->name('login');
Route::post('/loginpost', [AuthController::class, 'loginpost']);
Route::get('/logout', [AuthController::class, 'logout']);

Route::get('/mahasiswa', [MahasiswaController::class, 'index'])->name('indexmahasiswa');
Route::post('/mahasiswa/masukan', [MahasiswaController::class, 'masukan']);
Route::get('/mahasiswa/katasandi', [MahasiswaController::class, 'katasandi'])->name('katasandi');
Route::post('/mahasiswa/ubahkatasandi/{id_mhs}', [MahasiswaController::class, 'ubahkatasandi']);
Route::get('/mahasiswa/daftarbacaan', [MahasiswaController::class, 'daftarbacaan']);
Route::get('/mahasiswa/daftarbacaan/jenis/{id_kategori}', [MahasiswaController::class, 'daftarjenis']);
Route::get('/mahasiswa/daftarbacaan/topik/{id_topik}', [MahasiswaController::class, 'daftartopik']);
Route::get('/mahasiswa/detail/{id_bacaan}', [MahasiswaController::class, 'detail']);
Route::get('/mahasiswa/search', [MahasiswaController::class, 'search']);
Route::get('/mahasiswa/link/{id_dosen}', [MahasiswaController::class, 'link']);

Route::get('/dosen', [DosenController::class, 'index'])->name('indexdosen');
Route::post('/dosen/masukan', [DosenController::class, 'masukan']);
Route::get('/dosen/katasandi', [DosenController::class, 'katasandi'])->name('ktsandi');
Route::post('/dosen/ubahkatasandi/{id_dosen}', [DosenController::class, 'ubahkatasandi']);
Route::get('/dosen/tambahbacaan', [DosenController::class, 'tambahbacaan'])->name('pesantambah');
Route::post('/dosen/insert', [DosenController::class, 'insert']);
Route::get('/dosen/daftarbacaan/jenis/{id_kategori}', [DosenController::class, 'daftarjenis']);
Route::get('/dosen/daftarbacaan/topik/{id_topik}', [DosenController::class, 'daftartopik']);
Route::get('/dosen/detail/{id_bacaan}', [DosenController::class, 'detail']);
Route::get('/dosen/search', [DosenController::class, 'cari']);

Route::get('/tampilpdf/{file}', [HomeController::class, 'file']);
Route::get('/index', [HomeController::class, 'index']);