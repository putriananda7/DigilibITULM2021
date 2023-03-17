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
            <form  method="post" action="/admin/insert" enctype="multipart/form-data">
                @csrf
                <div class="card-body">
                  <div class="form-group">
                        <label>Kategori</label>
                        <select class="form-control" name="kategori" id="kategori" value="{{ old('kategori') }}">
                          <option value="{{ $kategori[4]-> id_kategori }}">{{ $kategori[4]-> nama_kategori }}</option>
                        </select>
                        <div class="text-danger">
                          @error('kategori')
                              {{ $message }}
                          @enderror
                        </div>
                  </div>
                  <div class="form-group">
                        <label>Topik</label>
                        <select class="form-control" name="topik" id="topik" value="{{ old('topik') }}">
                        @foreach ($topik as $data)
                          <option value="{{ $data-> id_topik }}">{{ $data-> nama_topik }}</option>
                        @endforeach
                        </select>
                        <div class="text-danger">
                          @error('topik')
                              {{ $message }}
                          @enderror
                        </div>
                  </div>
                  <div class="form-group">
                      <label for="judul">Judul</label>
                      <input type="text" class="form-control" name="judul" id="judul" placeholder="Judul" value="{{ old('judul') }}">
                      <div class="text-danger">
                          @error('judul')
                              {{ $message }}
                          @enderror
                      </div>
                  </div>
                  <div class="form-group">
                      <label for="tahun">Tahun</label>
                      <input type="number" class="form-control" name="tahun" id="tahun" placeholder="Tahun" value="{{ old('tahun') }}">
                      <div class="text-danger">
                          @error('tahun')
                              {{ $message }}
                          @enderror
                      </div>
                  </div>
                  <div class="form-group">
                      <label for="penulis">Penulis</label>
                      <input type="text" class="form-control" name="penulis" id="penulis" placeholder="Penulis" value="{{ old('penulis') }}">
                      <div class="text-danger">
                          @error('penulis')
                              {{ $message }}
                          @enderror
                      </div>
                  </div>
                  <div class="form-group">
                      <label>Abstrak</label>
                      <textarea class="form-control" name="abstrak" id="abstrak" rows="3" placeholder="Enter ..." value="{{ old('abstrak') }}"></textarea>
                      <div class="text-danger">
                          @error('abstrak')
                              {{ $message }}
                          @enderror
                      </div>
                  </div>
                  <div class="form-group">
                      <label for="sampul">Sampul <small>    *jpg, png</small></label>
                      <input class="form-control" type="file" id="sampul" name="sampul">
                      <div class="text-danger">
                          @error('sampul')
                              {{ $message }}
                          @enderror
                      </div>
                  </div>
                  <div class="form-group">
                      <label for="file">File <small>    *pdf</small></label>
                      <input class="form-control" type="file" id="file" name="file">
                      <div class="text-danger">
                          @error('file')
                              {{ $message }}
                          @enderror
                      </div>
                  </div>
                  <div class="mb-3">
                </div>
                <!-- /.card-body -->

                <div class="card-footer">
                  <button type="submit" name="submit" class="btn btn-primary">Tambah</button>
                </div>
            </form>
        </div>
    </section>
@endsection