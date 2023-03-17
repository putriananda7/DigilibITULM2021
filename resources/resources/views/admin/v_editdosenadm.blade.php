@extends('layout.v_templateadm')
@section('title', 'Beranda Admin')
@section('submenu', 'Edit Dosen')
@section('content')
    <!-- Main content -->
    <section class="content">
        <div class="card card-primary">
            <div class="card-header">
                <h3 class="card-title">Edit Dosen</h3>
            </div>
            <form action="/admin/updatedsn/{{ $dosen-> id_dosen }}" method="post">
                @csrf
                <div class="card-body">
                  <div class="form-group">
                    <label for="nama">Nama</label>
                    <input type="text" class="form-control" name="nama" id="nama" placeholder="Nama" value="{{ $dosen-> nama_dosen }}">
                    <div class="text-danger">
                      @error('nama')
                          {{ $message }}
                      @enderror
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="username">Username</label>
                    <input type="text" class="form-control" name="username" id="username" placeholder="Username" value="{{ $dosen->username_dosen }}">
                    <div class="text-danger">
                      @error('username')
                          {{ $message }}
                      @enderror
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="angkatan">Google Schoolar</label>
                    <input type="text" class="form-control" name="link" id="link" placeholder="Link" value="{{ $dosen->link_dosen }}">
                    <div class="text-danger">
                      @error('link')
                          {{ $message }}
                      @enderror
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="password">Ubah Password</label>
                    <input type="text" class="form-control" name="password" id="password">
                    <div class="text-danger">
                      @error('password')
                          {{ $message }}
                      @enderror
                    </div>
                  </div>
                </div>
                <!-- /.card-body -->

                <div class="card-footer">
                  <button type="submit" name="submit" class="btn btn-primary">Edit</button>
                </div>
            </form>
        </div>
    </section>
@endsection