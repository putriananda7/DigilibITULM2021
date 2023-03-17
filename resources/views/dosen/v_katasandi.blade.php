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
        <style>
            img {
                max-width: 100%;
                height: auto;
            }
        </style>


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
                        <a href="/dosen" class="nav-link"  style="font-weight: 700; font-size:16px;">Beranda</a>
                    </li>
                    <li class="nav-item">
                        <a href="/dosen#daftar" class="nav-link" style="font-weight: 700; font-size:16px;">Daftar Bacaan</a>
                    </li>
                    <li class="nav-item">
                        <a href="#info" class="nav-link" style="font-weight: 700; font-size:16px;">Info</a>
                    </li>
                                      
                    <li class="nav-item active dropdown">
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
                                        {{ session('nama_dosen') }}
                                        </h3>
                                        <p class="text-sm text-muted">Dosen</p><hr>
                                        <a href="/dosen/katasandi" class="text-sm btn btn-sm btn-outline-secondary">Ubah Kata Sandi</a><br><br>
                                        <a href="/dosen/tambahbacaan" class="text-sm btn btn-sm btn-outline-secondary">Tambah Bacaan</a>
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
        @if (session('pesan'))
            <div class="alert alert-success alert-dismissible">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                <h5><i class="icon fas fa-check"></i> Success!</h5>
                {{ session('pesan') }}
            </div>
        @elseif (session('gagal'))
            <div class="alert alert-danger alert-dismissible">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                <h5>Failed!</h5>
                {{ session('gagal') }}
            </div>
        @endif
        <div class="container-fluid d" style="height: 600px">
            <div class="row justify-content-evenly">
                <div class="col-4">
                    <div class="container">
                        <br><br>
                        <h1 style="font-weight: 1000;">{{ session('nama_dosen') }}</h1>
                        <h4 style="font-weight: 1000;color:darkgrey;">Dosen</h4>
                    </div>
                    <br><br>
                    <center><img src="{{ url('img/buku.png') }}" alt="" ></center>
                </div>
                <div class="col-4">
                    <div class="container">
                        <br><br><br><br>
                        <h3 style="font-weight: 1000;">Ubah Kata Sandi</h3>
                        <form method="post" action="/dosen/ubahkatasandi/{{ session('id_dosen') }}" >
                            @csrf
                            <label for="username">Username</label>
                            <input type="text" class="form-control" name="username" id="username" placeholder="{{ session('username_dosen') }}" readonly>
                            <label for="katasandilama">Kata Sandi Lama</label>
                            <input type="password" class="form-control" name="katasandilama" id="katasandilama">
                            <div class="text-danger">
                                @error('katasandilama')
                                {{ $message }}
                                @enderror
                            </div>
                            <label for="katasandibaru">Kata Sandi Baru</label>
                            <input type="password" class="form-control" name="katasandibaru" id="katasandibaru">
                            <div class="text-danger">
                                @error('katasandibaru')
                                {{ $message }}
                                @enderror
                            </div><br>
                            <button type="submit" class="btn-outline-secondary">Ubah</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <div class="container-fluid d bg-secondary" id="info" >
            <div class="container">
                <div class="row justify-content-evenly">
                    <div class="col-4"><br>
                        <center>
                            <h1 style="font-style: normal;">INFO</h1><br>
                            <p style=" font-style: normal;">Teknologi Informasi<br>
                                Fakultas Teknik<br>
                                Universitas Lambung Mangkurat<br>
                                Jl. Brigjen H. Hasan Basri, Kayu Tangi, Banjarmasin, Kalimantan Selatan
                            </p>
                            <p class="info"><i class="fa fa-phone"></i><a href="tel:05113304405">(0511) 3304405, </a><a href="tel:05113304503">3304503</a></p>
                            <p class="info"><i class="fa fa-envelope"></i><a href="mailto:ti@ulm.ac.id">ti@ulm.ac.id</a></p>
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
