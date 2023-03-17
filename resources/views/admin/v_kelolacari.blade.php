@extends('layout.v_templateadm')
@section('title', 'Manajemen Bacaan')
@section('submenu', 'Kelola Bacaan')
@section('content')
    <!-- Main content -->
    <section class="content">
            @if (session('pesan'))
                <div class="alert alert-success alert-dismissible">
                  <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                  <h5><i class="icon fas fa-check"></i> Success!</h5>
                  {{ session('pesan') }}
                </div>
            @endif
            <form action="/admin/kelolabacaan/search" method="get">
                <div class="row">
                    <div class="col-md-10 offset-md-1">
                        <div class="form-group">
                            <div class="input-group input-group-lg">
                                <input type="search" name="cari" class="form-control form-control-lg" placeholder="Type your keywords here">
                                <div class="input-group-append">
                                    <button type="submit" class="btn btn-lg btn-default">
                                        <i class="fa fa-search"></i>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
            <div class="card card-primary">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Judul</th>
                            <th>Tahun</th>
                            <th>Penerbit</th>
                            <th>Penulis</th>
                            <th>Sampul</th>
                            <th>File</th>
                            <th>Aksi</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php $no=1; ?>
                        @foreach ($bacaan as $index =>$data)
                        @if($data-> judul <> "")
                            <tr>
                                <td scope="row">{{ $index + $bacaan->firstItem() }}</td>
                                <td>{{ $data-> judul }}</td>
                                <td>{{ $data-> tahun }}</td>
                                <td>{{ $data-> penerbit }}</td>
                                <td>{{ $data-> penulis }}</td>
                                @if(!$data-> sampul <> "")
                                    <td><img src="{{ url('sampul/default.png') }}" width="90px"></td>
                                @elseif($data-> sampul <> "")
                                    <td><img src="{{ url('sampul/' . $data-> sampul) }}" width="90px"></td>
                                @endif
                                <td><a href="/tampilpdf/{{ $data-> file }}"  target="_blank">{{ $data-> file }}</a></td>
                                <td>
                                    <a href="/admin/editbacaan/{{ $data-> id_bacaan }}" class="btn btn-sm btn-warning">Edit</a>
                                    <button type="button" class="btn btn-sm btn-danger" data-toggle="modal" data-target="#delete{{ $data-> id_bacaan }}">
                                        Delete
                                    </button>
                                </td>
                            </tr>
                        @elseif($data-> judul <> "null")

                        @endif
                        @endforeach
                    </tbody>
                </table>
            </div>
            {{ $bacaan->links('pagination::bootstrap-4') }}
        @foreach ($bacaan as $data)
        <div class="modal fade" id="delete{{ $data-> id_bacaan }}">
            <div class="modal-dialog modal-sm">
                <div class="modal-content bg-danger">
                    <div class="modal-header">
                        <h4 class="modal-title">Hapus Data</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <p>Apakah Anda yakin ingin menghapus data "{{ $data-> judul }}"?</p>
                    </div>
                    <div class="modal-footer justify-content-between">
                        <button type="button" class="btn btn-outline-light" data-dismiss="modal">Close</button>
                        <a href="/admin/delete/{{ $data-> id_bacaan }}" type="button" class="btn btn-outline-light">Delete</a>
                    </div>
                </div>
            </div>
        </div>
        @endforeach
    </section>
    
@endsection