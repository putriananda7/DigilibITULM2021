@extends('layout.v_templateadm')
@section('title', 'Beranda Admin')
@section('submenu', 'Tambah Dosen')
@section('content')
    <!-- Main content -->
    <section class="content">
        <div class="card card-primary">
            <div class="card-header">
                <h3 class="card-title">Tambah Dosen</h3>
            </div>
              <!-- /.card-header -->
              <!-- form start -->
            <form action="/admin/insertdsn" method="post">
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
                    <label for="username">Username</label>
                    <input type="number" class="form-control" name="username" id="username" placeholder="Username" value="{{ old('username') }}">
                      @error('username')
                          {{ $message }}
                      @enderror
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
                  <div class="form-group">
                    <label for="angkatan">Link Google Schoolar</label>
                    <input type="text" class="form-control" name="link" id="link" placeholder="Link" value="{{ old('link') }}">
                    <div class="text-danger">
                      @error('link')
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