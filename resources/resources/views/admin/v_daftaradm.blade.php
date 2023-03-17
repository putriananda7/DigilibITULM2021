@extends('layout.v_templateadm')
@section('title', 'Manajemen Bacaan')
@section('submenu', 'Daftar Bacaan')
@section('content')
  <!-- Main content -->
  <section class="content">
        <div class="row">
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-info">
              <div class="inner">
                <h3>{{ $jumlah[0]}}</h3>

                <p>{{ $kategori[0] -> nama_kategori}}</p>
              </div>
              <div class="icon">
                <i class="ion fas fa-book"></i>
              </div>
              <a href="/admin/lihatdaftar/{{ $kategori[0] -> id_kategori }}" class="small-box-footer">Lihat Daftar<i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-info">
              <div class="inner">
                <h3>{{ $jumlah[1]}}</h3>

                <p>{{ $kategori[1] -> nama_kategori}}</p>
              </div>
              <div class="icon">
                <i class="ion fas fa-book"></i>
              </div>
              <a href="/admin/lihatdaftar/{{ $kategori[1] -> id_kategori }}" class="small-box-footer">Lihat Daftar<i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-info">
              <div class="inner">
                <h3>{{ $jumlah[2]}}</h3>

                <p>{{ $kategori[2] -> nama_kategori}}</p>
              </div>
              <div class="icon">
                <i class="ion fas fa-book"></i>
              </div>
              <a href="/admin/lihatdaftar/{{ $kategori[2] -> id_kategori }}" class="small-box-footer">Lihat Daftar<i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-info">
              <div class="inner">
                <h3>{{ $jumlah[3]}}</h3>

                <p>{{ $kategori[3] -> nama_kategori}}</p>
              </div>
              <div class="icon">
                <i class="ion fas fa-book"></i>
              </div>
              <a href="/admin/lihatdaftar/{{ $kategori[3] -> id_kategori }}" class="small-box-footer">Lihat Daftar<i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-info">
              <div class="inner">
                <h3>{{ $jumlah[4]}}</h3>

                <p>{{ $kategori[4] -> nama_kategori}}</p>
              </div>
              <div class="icon">
                <i class="ion fas fa-book"></i>
              </div>
              <a href="/admin/lihatdaftar/{{ $kategori[4] -> id_kategori }}" class="small-box-footer">Lihat Daftar<i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
        </div>
  </section>
@endsection