@extends('layout.v_templateadm')
@section('title', 'Manajemen Bacaan')
@section('submenu', 'Tambah Bacaan')
@section('content')
    <!-- Main content -->
    <section class="content">
        <div class="card card-primary">
            <div class="card-header">
                <h3 class="card-title">Tambah Bacaan</h3>
            </div>
              <!-- /.card-header -->
              <!-- form start -->
              @if (session('pesan'))
                <div class="alert alert-success alert-dismissible">
                  <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                  <h5><i class="icon fas fa-check"></i> Success!</h5>
                  {{ session('pesan') }}
                </div>
              @endif
            <form action="/admin/select" method="get" enctype="multipart/form-data">
                @csrf
                <div class="card-body">
                  <div class="form-group">
                        <label>Kategori</label>
                        <select class="form-control" name="kategori" id="kategori" value="{{ old('kategori') }}">
                        @foreach ($kategori as $data)
                          <option value="{{ $data-> id_kategori }}">{{ $data-> nama_kategori }}</option>
                        @endforeach
                        </select>
                        <div class="text-danger">
                          @error('kategori')
                              {{ $message }}
                          @enderror
                        </div>
                  </div>
                </div>
                <!-- /.card-body -->

                <div class="card-footer">
                  <button type="submit" name="submit" class="btn btn-primary">OK</button>
                </div>
            </form>
        </div>
    </section>
@endsection