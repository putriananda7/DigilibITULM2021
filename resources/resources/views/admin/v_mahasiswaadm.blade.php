@extends('layout.v_templateadm')
@section('title', 'Beranda Admin')
@section('submenu', 'Mahasiswa')
@section('content')
    <!-- Main content -->
@if (session('pesan'))
                <div class="alert alert-success alert-dismissible">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                    <h5><i class="icon fas fa-check"></i> Success!</h5>
                    {{ session('pesan') }}
                </div>
@endif
                <section class="content">
                    <form action="/admin/mahasiswa/search" method="get">
                        <div class="row">
                            <div class="col-md-10 offset-md-1">
                                <div class="form-group">
                                    <div class="input-group input-group-lg">
                                        <input type="search" name="cari" class="form-control form-control-lg" placeholder="Search">
                                        <div class="input-group-append">
                                            <button type="submit" class="btn btn-lg btn-default">
                                                <i class="fa fa-search"></i>
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form><hr>
                    <center><a href="/admin/tambahmahasiswa" class="btn btn-primary">Tambah Data Mahasiswa</a></center>
                    <br>
                    <div class="card">
                        <div class="card-body p-0">
                            <div class="table-responsive">
                                <table class="table table-bordered table-hover">
                                <thead>
                                    <tr style="text-align: center">
                                        <th>No</th>
                                        <th>Nama</th>
                                        <th>Angkatan</th>
                                        <th>Username</th>
                                        <th>Aksi</th>                    
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php $no=1; ?>
                                    @foreach ($mahasiswa as $index =>$data)
                                    <tr>
                                        <td scope="row">{{ $index + $mahasiswa->firstItem() }}</td>
                                        <td>{{ $data-> nama_mhs }}</td>
                                        <td>{{ $data-> angkatan_mhs }}</td>
                                        <td>{{ $data-> username_mhs }}</td>
                                        <td>
                                            <a href="/admin/editmhs/{{ $data-> id_mhs }}" class="btn btn-sm btn-warning">Edit</a>
                                            <button type="button" class="btn btn-sm btn-danger" data-toggle="modal" data-target="#delete{{ $data-> id_mhs }}">
                                                Delete
                                            </button>
                                        </td>
                                    </tr>
                                    @endforeach
                                </tbody>
                            </table>
                            </div>
                        </div>
                    </div>
                    {{ $mahasiswa->links('pagination::bootstrap-4') }}
                    @foreach ($mahasiswa as $data)
                    <div class="modal fade" id="delete{{ $data-> id_mhs }}">
                        <div class="modal-dialog modal-sm">
                            <div class="modal-content bg-danger">
                                <div class="modal-header">
                                    <h4 class="modal-title">Hapus Data</h4>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <p>Apakah Anda yakin ingin menghapus data "{{ $data-> nama_mhs }}"?</p>
                                </div>
                                <div class="modal-footer justify-content-between">
                                    <button type="button" class="btn btn-outline-light" data-dismiss="modal">Close</button>
                                    <a href="/admin/deletemhs/{{ $data-> id_mhs }}" type="button" class="btn btn-outline-light">Delete</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    @endforeach
                </section>
@endsection