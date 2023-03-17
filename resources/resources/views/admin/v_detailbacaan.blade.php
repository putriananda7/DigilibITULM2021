@extends('layout.v_templateadm')
@section('title', 'Manajemen Bacaan')
@section('submenu', 'Detail Bacaan')
@section('content')
    <section class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <center><h3 style="font-weight: 700; font-style: normal;">{{ $bacaan -> judul}}</h3></center>
                        </div>
                        <!-- /.card-header -->
                        <div class="card-body">
                                    @if($bacaan-> abstrak <> "")
                                    <p style="font-weight: 700; font-size:18px; text-align: center; font-style: normal;"><strong>Abstrak</strong></p>
                                    <p style="font-weight: 350; font-size:17px; text-align: justify; font-style: normal;">{{ $bacaan -> abstrak }}</p>
                                    @elseif(!$bacaan-> abstrak <> "")
                                    @endif
                                </tr>
                            <table>
                                <tr>
                                    <td style="font-weight: 700; font-size:18px; text-align: top; font-style: normal; width: 150px"><strong>Penulis</strong></td>
                                    <td style=" width: 30px"> : </td>
                                    <td style="font-weight: 350; font-size:17px; text-align: top; font-style: normal;">{{ $bacaan -> penulis }}</td>
                                </tr>
                                <tr>
                                    <td style="font-weight: 700; font-size:18px; text-align: top; font-style: normal;"><strong>Tahun</strong></td>
                                    <td>:</td>
                                    <td style="font-weight: 350; font-size:17px; text-align: top; font-style: normal;">{{ $bacaan -> tahun }}</td>
                                </tr>
                                <tr>
                                    <td style="font-weight: 700; font-size:18px; text-align: top; font-style: normal;"><strong>Penerbit</strong></td>
                                    <td>:</td>
                                    @if(!$bacaan-> penerbit <> "")
                                    <td style="font-weight: 350; font-size:17px; text-align: top; font-style: normal;">-</td>
                                    @elseif($bacaan-> penerbit <> "")
                                    <td style="font-weight: 350; font-size:17px; text-align: top; font-style: normal;">{{ $bacaan -> penerbit }}</td>
                                    @endif
                                </tr>
                                <tr>
                                    <td style="font-weight: 700; font-size:18px; text-align: top; font-style: normal;"><strong>Judul</strong></td>
                                    <td>:</td>
                                    <td style="font-weight: 350; font-size:17px; text-align: top; font-style: normal;">{{ $bacaan -> judul }}</td>
                                </tr>
                                <tr>
                                    <td style="font-weight: 700; font-size:17px; text-align: top; font-style: normal;"><strong>File Dokumen</strong></td>
                                    <td>:</td>
                                    <td style="font-weight: 350; font-size:17px; text-align: top; font-style: normal;"><a href="/tampilpdf/{{ $bacaan-> file }}"  target="_blank">[File]</a></td>
                                </tr>
                                
                                <tr>
                                    <td style="font-weight: 700; font-size:17px; text-align: top; font-style: normal;"><strong>Topik</strong></td>
                                    <td>:</td>
                                    <td style="font-weight: 350; font-size:17px; text-align: top; font-style: normal;">{{ $bacaan -> nama_topik }}</td>
                                </tr>
                                <tr>
                                    <td style="font-weight: 700; font-size:17px; text-align: top; font-style: normal;"><strong>Upload by</strong></td>
                                    <td>:</td>
                                    @if($bacaan-> upload_by <> "")
                                    <td style="font-weight: 350; font-size:17px; text-align: top; font-style: normal;">{{ $bacaan -> nama_dosen }}</td>
                                    @elseif(!$bacaan-> upload_by <> "")
                                    <td style="font-weight: 350; font-size:17px; text-align: top; font-style: normal;">Admin</td>
                                    @endif
                                </tr>
                                <tr>
                                    <td style="font-weight: 700; font-size:17px; text-align: top; font-style: normal;"><strong>Sampul</strong></td>
                                    <td>:</td>
                                    @if(!$bacaan-> sampul <> "")
                                    <td><img src="{{ url('sampul/default.png') }}" width="90px"></td>
                                    @elseif($bacaan-> sampul <> "")
                                    <td><img src="{{ url('sampul/' . $bacaan-> sampul) }}" width="90px"></td>
                                    @endif
                                </tr>
                            </table>
                            <br>
                        </div>
                    </div>
                </div>
            </div>
            <a href="/admin/lihatdaftar/{{ $bacaan -> id_kategori }}" class="btn btn-app">
                <i class="fas fa-arrow-circle-left"></i> Kembali
            </a>
        </div>
</section>
@endsection