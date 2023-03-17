@extends('layout.v_templateadm')
@section('title', 'Panduan Admin')
@section('submenu', 'Kata Sandi')
@section('content')
        <!-- Main content -->
        @if (session('pesan'))
            <div class="alert alert-success alert-dismissible">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                <h5><i class="icon fas fa-check"></i> Success!</h5>
                {{ session('pesan') }}
            </div>
        @endif
        @if (session('gagal'))
            <div class="alert alert-danger alert-dismissible">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                <h5>Failed!</h5>
                {{ session('gagal') }}
            </div>
        @endif
        <section class="content">
            <div class="card card-info">
              <div class="card-header">
                <h3 class="card-title">Ubah Kata Sandi</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form class="form-horizontal" action="/admin/updatesandi" method="post">
                @csrf
                <div class="card-body">
                  <div class="form-group row">
                    <label for="inputEmail3" class="col-sm-2 col-form-label">Kata Sandi Lama</label>
                    <div class="col-sm-10">
                      <input type="password" class="form-control" name="passlama" id="passlama" placeholder="Password">
                    </div>
                  </div>
                  <div class="form-group row">
                    <label for="inputPassword3" class="col-sm-2 col-form-label">Kata Sandi Baru</label>
                    <div class="col-sm-10">
                      <input type="password" class="form-control" name="passbaru" id="passbaru" placeholder="Password">
                    </div>
                  </div>
                </div>
                <!-- /.card-body -->
                <div class="card-footer">
                  <button type="submit" class="btn btn-info">Ubah</button>
                </div>
                <!-- /.card-footer -->
              </form>
            </div>
        </section>
@endsection