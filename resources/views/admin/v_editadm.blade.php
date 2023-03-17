@extends('layout.v_templateadm')
@section('title', 'Manajemen Bacaan')
@section('submenu', 'Edit Bacaan')
@section('content')
    <!-- Main content -->
    <section class="content">
        <div class="card card-primary">
            <div class="card-header">
                <h3 class="card-title">Edit Bacaan</h3>
            </div>
            <form action="/admin/update/{{ $bacaan->id_bacaan }}" method="post" enctype="multipart/form-data">
                @csrf
                <div class="card-body">
                  <div class="form-group">
                    <label for="judul">Judul</label>
                    <input type="text" class="form-control" name="judul" id="judul" placeholder="Judul" value="{{ $bacaan->judul }}">
                    <div class="text-danger">
                      @error('judul')
                          {{ $message }}
                      @enderror
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="tahun">Tahun</label>
                    <input type="text" class="form-control" name="tahun" id="tahun" placeholder="Tahun" value="{{ $bacaan->tahun }}">
                    <div class="text-danger">
                      @error('tahun')
                          {{ $message }}
                      @enderror
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="penerbit">Penerbit</label>
                    <input type="text" class="form-control" name="penerbit" id="penerbit" placeholder="Penerbit" value="{{ $bacaan->penerbit }}">
                  </div>
                  <div class="form-group">
                    <label for="penulis">Penulis</label>
                    <input type="text" class="form-control" name="penulis" id="penulis" placeholder="Penulis" value="{{ $bacaan->penulis }}">
                    <div class="text-danger">
                      @error('penulis')
                          {{ $message }}
                      @enderror
                    </div>
                  </div>
                  <div class="form-group">
                        <label>Kategori</label>
                        <select class="form-control" name="kategori" id="kategori" value="{{ $bacaan->kategori_id }}">
                          <option value="{{ $bacaan->kategori_id}}">{{ $bacaan->nama_kategori}}</option>
                        @foreach($kategori as $data)
                          <option value="{{ $data->id_kategori}}">{{ $data->nama_kategori}}</option>
                        @endforeach
                        </select>
                        <div class="text-danger">
                          @error('kategori')
                              {{ $message }}
                          @enderror
                        </div>
                  </div>
                  <div class="form-group">
                        <label>Topik</label>
                        <select class="form-control" name="topik" id="topik" value="{{ $bacaan->topik_id }}">
                        <option value="{{ $bacaan->topik_id}}">{{ $bacaan->nama_topik}}</option>
                        @foreach($topik as $data)
                          <option value="{{ $data->id_topik}}">{{ $data->nama_topik}}</option>
                        @endforeach
                        </select>
                        <div class="text-danger">
                          @error('topik')
                              {{ $message }}
                          @enderror
                        </div>
                  </div>
                  <div class="form-group">
                    <label>Abstrak</label>
                    <textarea class="form-control" name="abstrak" id="abstrak" rows="3"  value="{{ $bacaan->abstrak }}">{{ $bacaan->abstrak }}</textarea>
                  </div>
                  <div class="row">
                    <div class="col-2">
                      @if(!$bacaan-> sampul <> "")
                        <img src="{{ url('sampul/default.png') }}" width="100px">
                      @elseif($bacaan-> sampul <> "")
                        <img src="{{ url('sampul/' . $bacaan-> sampul) }}" width="100px">
                      @endif
                    </div>
                    <div class="col-10">
                      <div class="form-group">
                          <label for="sampul">Ganti Sampul <small>    *jpg, png</small></label>
                          <input class="form-control" type="file" id="sampul" name="sampul"  value="{{ $bacaan->sampul }}">
                          <div class="text-danger">
                              @error('sampul')
                                  {{ $message }}
                              @enderror
                          </div>
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-2">
                      <a href="/tampilpdf/{{ $bacaan-> file }}">[ File ]</a>
                    </div>
                    <div class="col-10">
                      <div class="form-group">
                        <label for="file">Ganti File <small>    *pdf</small></label>
                        <input class="form-control" type="file" id="file" name="file"  value="{{ $bacaan->file }}">
                        <div class="text-danger">
                            @error('file')
                                {{ $message }}
                            @enderror
                        </div>
                      </div>
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