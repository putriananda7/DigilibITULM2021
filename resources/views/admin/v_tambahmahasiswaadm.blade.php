@extends('layout.v_templateadm')
@section('title', 'Beranda Admin')
@section('submenu', 'Tambah Mahasiswa')
@section('content')
    <!-- Main content -->
    <section class="content">
        <div class="card card-primary">
            <div class="card-header">
                <h3 class="card-title">Tambah Mahasiswa</h3>
            </div>
              <!-- /.card-header -->
              <!-- form start -->
            <form action="/admin/insertmhs" method="post">
                @csrf
                <div class="card-body">
                  <div class="form-group">
                    <label for="nama">Nama</label>
                    <input type="text" class="form-control" name="nama" id="nama" placeholder="Nama" value="{{ old('nama') }}">
                    <div class="text-danger">
                      @error('nama')
                          {{ $message }}
                      @enderror
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="angkatan">Angkatan</label>
                    <input type="number" class="form-control" name="angkatan" id="angkatan" placeholder="Angkatan" value="{{ old('angkatan') }}">
                    <div class="text-danger">
                      @error('angkatan')
                          {{ $message }}
                      @enderror
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="username">Username</label>
                    <input type="text" class="form-control" name="username" id="username" placeholder="Username" value="{{ old('username') }}">
                    <div class="text-danger">
                      @error('username')
                          {{ $message }}
                      @enderror
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="password">Password</label>
                    <input type="text" class="form-control" name="password" id="password" placeholder="Password" value="{{ old('password') }}">
                    <div class="text-danger">
                      @error('password')
                          {{ $message }}
                      @enderror
                    </div>
                  </div>
                </div>
                <!-- /.card-body -->

                <div class="card-footer">
                  <button type="submit" name="submit" class="btn btn-primary">Tambah</button>
                </div>
            </form>
        </div>
    </section>
@endsection