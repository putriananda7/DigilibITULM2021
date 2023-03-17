<!DOCTYPE html>
<html lang="en">
    <head>
        <link rel="shortcut icon" href="{{ url('img/Logo.png') }}">

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>DIGILIB IT</title>

        <!-- Google Font: Source Sans Pro -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&amp;display=fallback">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="{{asset('lte/plugins/fontawesome-free/css/all.min.css')}}">
        <!-- icheck bootstrap -->
        <link rel="stylesheet" href="{{asset('lte/plugins/icheck-bootstrap/icheck-bootstrap.min.css')}}">
        <!-- Theme style -->
        <link rel="stylesheet" href="{{asset('lte/dist/css/adminlte.min.css')}}">
        <link rel="stylesheet" href="{{asset('css/css2.css')}}">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark bg-secondary">
 
            <a class="navbar-brand" href="#"  style="font-weight: 700; font-size:30px;">DIGILIB IT</a>

            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a href="/mahasiswa" class="nav-link"  style="font-weight: 700; font-size:16px;">Beranda</a>
                    </li>
                    <li class="nav-item active">
                        <a href="/mahasiswa#daftar" class="nav-link" style="font-weight: 700; font-size:16px;">Daftar Bacaan</a>
                    </li>
                    <li class="nav-item">
                        <a href="#info" class="nav-link" style="font-weight: 700; font-size:16px;">Info</a>
                    </li>
                                      
                    <li class="nav-item dropdown">
                        <a class="nav-link" data-toggle="dropdown" href="#" style="font-weight: 700; font-size:16px;">
                            Profil
                        </a>
                        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
                        <p class="dropdown-item">
                            <!-- Message Start -->
                            <div class="container">
                                <div class="media">
                                    <div class="media-body">
                                        <h3 class="dropdown-item-title">
                                        {{ session('nama_mhs') }} <br>
                                        </h3>
                                        <p class="text-sm text-muted">Angkatan  {{ session('angkatan') }} </p><hr>
                                        <a href="/mahasiswa/katasandi" class="text-sm btn btn-sm btn-outline-secondary">Ubah Kata Sandi</a>
                                    </div>
                                </div>
                            </div>
                            <!-- Message End -->
                        </p>
                    </li>
                    <li class="nav-item">
                        <a href="/logout" class="nav-link" style="font-weight: 700; font-size:16px;">Logout</a>
                    </li>
                </ul>
            </div>
        </nav>
        <br>

        <div class="container">
            <br><br>
            <div class="row">
                <div class="col-md-8 offset-md-2">
                    <form action="/mahasiswa/search" method="get">
                        <div class="input-group">
                            <input type="search" name="cari" class="form-control form-control-lg" placeholder="Type your keywords here">
                            <div class="input-group-append">
                                <button type="submit" class="btn btn-lg btn-default">
                                    <i class="fa fa-search"></i>
                                </button>
                            </div>
                        </div>
                    </form><br>
                    <center><p class="text-muted">Advanced Search</p></center>
                </div>
            </div><hr>
            <br>
            <div class="container">
                <div class="row">
                    <div class="col-md-3" style="padding:0px;">
                        <p style="font-weight: 700; font-size:25px; color: #8cbee8">Jenis Bacaan</p><hr>
                        @foreach($kategori as $kategori)
                            <p><a class="text-muted" href="/mahasiswa/daftarbacaan/jenis/{{ $kategori -> id_kategori }}" style="text-decoration: none;">{{ $kategori -> nama_kategori }}</a></p>
                        @endforeach
                        <br><br>
                        <p style="font-weight: 700; font-size:25px; color: #8cbee8">Topik</p><hr>
                        @foreach($topik as $topik)
                            <p><a class="text-muted" href="/mahasiswa/daftarbacaan/topik/{{ $topik -> id_topik }}" style="text-decoration: none;">{{ $topik -> nama_topik }}</a></p>
                        @endforeach
                    </div>
                    <div class="col-md-9">
                        <center><h3 style="font-weight: 500;  color: #413A3A"">"{{ $bacaan -> judul}}"</h3></center><br><hr><br>
                        
                        @if($bacaan-> abstrak <> "")
                        <p style="font-weight: 300; font-size:18px; text-align: center;"><strong>Abstrak</strong></p>
                        <p style="font-weight: 200; font-size:17px; text-align: justify;">{{ $bacaan -> abstrak }}</p>
                        @elseif(!$bacaan-> abstrak <> "")
                        @endif
                            <table>
                                <tr height="50px">
                                    <td style="font-weight: 300; font-size:18px;width: 150px"><strong>Penulis</strong></td>
                                    <td style=" width: 30px"> : </td>
                                    <td style="font-weight: 200; font-size:17px;">{{ $bacaan -> penulis }}</td>
                                </tr>
                                <tr height="50px">
                                    <td style="font-weight: 300; font-size:18px;  "><strong>Tahun</strong></td>
                                    <td>:</td>
                                    <td style="font-weight: 200; font-size:17px;  ">{{ $bacaan -> tahun }}</td>
                                </tr>
                                <tr height="50px">
                                    <td style="font-weight: 300; font-size:18px;  "><strong>Penerbit</strong></td>
                                    <td>:</td>
                                    @if(!$bacaan-> penerbit <> "")
                                    <td style="font-weight: 200; font-size:17px;  ">-</td>
                                    @elseif($bacaan-> penerbit <> "")
                                    <td style="font-weight: 200; font-size:17px;  ">{{ $bacaan -> penerbit }}</td>
                                    @endif
                                </tr>
                                <tr  height="50px">
                                    <td style="font-weight: 300; font-size:17px;  "><strong>File Dokumen</strong></td>
                                    <td>:</td>
                                    <td style="font-weight: 200; font-size:17px;  "><a href="/tampilpdf/{{ $bacaan-> file }}" target="_blank">[ File ]</a></td>
                                </tr>
                                <tr height="50px">
                                    <td style="font-weight: 300; font-size:17px;  "><strong>Jenis</strong></td>
                                    <td>:</td>
                                    <td style="font-weight: 200; font-size:17px;  ">{{ $bacaan -> nama_kategori }}</td>
                                </tr>
                                <tr height="50px">
                                    <td style="font-weight: 300; font-size:17px;  "><strong>Topik</strong></td>
                                    <td>:</td>
                                    <td style="font-weight: 200; font-size:17px;  ">{{ $bacaan -> nama_topik }}</td>
                                </tr>
                                <tr  height="50px">
                                    <td style="font-weight: 300; font-size:17px;  "><strong>Upload by</strong></td>
                                    <td>:</td>
                                    @if($bacaan-> upload_by <> "")
                                    <td style="font-weight: 200; font-size:17px;  ">{{ $bacaan -> nama_dosen }}</td>
                                    @elseif(!$bacaan-> upload_by <> "")
                                    <td style="font-weight: 200; font-size:17px;  ">Admin</td>
                                    @endif
                                </tr>
                                <tr height="110px">
                                    <td style="font-weight: 300; font-size:17px;  "><strong>Sampul</strong></td>
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

        <div class="container-fluid d bg-secondary" id="info" style="height: 400px">
            <div class="container">
                <div class="row justify-content-evenly">
                    <div class="col-4">
                        <br><br><br>
                        <center>
                            <p style=" font-size:40px;  ">INFO</p>
                            <p style=" font-size:14px;  ">Teknologi Informasi<br>
                                Fakultas Teknik<br>
                                Universitas Lambung Mangkurat<br>
                                Jl. Brigjen H. Hasan Basri, Kayu Tangi, Banjarmasin, Kalimantan Selatan
                            </p>
                            <p class="info"><i class="fa fa-phone"></i><a href="tel:05113304405" style="text-decoration: none; color: white;">(0511) 3304405, </a><a href="tel:05113304503" style="text-decoration: none; color: white;">3304503</a></p>
                            <p class="info"><i class="fa fa-envelope"></i><a href="mailto:ti@ulm.ac.id" style="text-decoration: none; color: white;"vgvvv>ti@ulm.ac.id</a></p>
                        </center>
                    </div>
                </div>
            </div>
        </div>

        <footer class="navbar-light bg-secondary">
            <center><strong>Copyright ©2021</strong> Teknologi Informasi ULM</center>
        </footer>
        
        <!-- jQuery -->
        <script src="{{asset('lte/plugins/jquery/jquery.min.js')}}"></script>
        <!-- Bootstrap 4 -->
        <script src="{{asset('lte/plugins/bootstrap/js/bootstrap.bundle.min.js')}}"></script>
        <!-- AdminLTE App -->
        <script src="{{asset('lte/dist/js/adminlte.min.js')}}"></script>

    </body>
</html>
