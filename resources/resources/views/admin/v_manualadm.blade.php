@extends('layout.v_templateadm')
@section('title', 'Panduan Admin')
@section('submenu', 'Manual Penggunaan')
@section('content')
<section class="content">
    <div class="col-md-6">
        <div class="card">
        <center>
            <div class="card-header">
                <center><h3>Manual Penggunaan untuk Sistem Perpustakaan Digital Teknologi Informasi</h3><center>
            </div>
            <div class="card-body row">
                <div class="col-md-3"></div>
                <div class="col-md-6">
                    <a href="/admin/manualpenggunaan/download" type="button" class="btn btn-outline-info btn-block btn-flat"><i class="fa fa-book"></i>Download</a></center>
                </div>
                <div class="col-md-3"></div>
            </div>
        </div>
    </div>
</section>
@endsection