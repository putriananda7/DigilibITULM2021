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
        @endif
        <div class="container-fluid d">
            <div class="row justify-content-evenly">
                <div class="col-6">
                        <br><br>
                        <h4 style="font-weight: 1000;">Form Tambah Bacaan</h4>
                        <form method="post" action="/dosen/insert"  enctype="multipart/form-data">
                            @csrf
                            <label for="nama">ID</label>
                            <input type="text" class="form-control" name="nama" id="nama" value="{{ session('id_dosen') }}" readonly><br>
                            <label for="kategori">Kategori <small style="color:red">*</small></label>
                            <select class="form-control" name="kategori" id="kategori" value="{{ old('kategori') }}">
                                <option value="{{ $kategori[0]-> id_kategori }}">{{ $kategori[0]-> nama_kategori }}</option>
                                <option value="{{ $kategori[1]-> id_kategori }}">{{ $kategori[1]-> nama_kategori }}</option>
                            </select><br>
                            <label for="topik">Topik <small style="color:red">*</small></label>
                            <select class="form-control" name="topik" id="topik" value="{{ old('topik') }}">
                            @foreach ($topik as $data)
                                <option value="{{ $data-> id_topik }}">{{ $data-> nama_topik }}</option>
                            @endforeach
                            </select><br>
                            <label for="judul">Judul <small style="color:red">*</small></label>
                            <input type="text" class="form-control" name="judul" id="judul" value="{{ old('judul') }}">
                            <div class="text-danger">
                                @error('judul')
                                {{ $message }}
                                @enderror
                            </div>
                            <label for="tahun">Tahun <small style="color:red">*</small></label>
                            <input type="number" class="form-control" name="tahun" id="tahun" value="{{ old('tahun') }}">
                            <div class="text-danger">
                                @error('tahun')
                                {{ $message }}
                                @enderror
                            </div>
                            <label for="penulis">Penulis <small style="color:red">*</small></label>
                            <input type="text" class="form-control" name="penulis" id="penulis" value="{{ old('penulis') }}">
                            <div class="text-danger">
                                @error('penulis')
                                {{ $message }}
                                @enderror
                            </div>
                            <label for="penerbit">Penerbit</label>
                            <input type="text" class="form-control" name="penerbit" id="penerbit" value="{{ old('penerbit') }}">
                            <div class="text-danger">
                                @error('penerbit')
                                {{ $message }}
                                @enderror
                            </div>
                            <label for="abstrak">Abstrak</label>
                            <textarea class="form-control" name="abstrak" id="abstrak" rows="3" placeholder="Enter ..." value="{{ old('abstrak') }}"></textarea>
                            <div class="text-danger">
                                @error('abstrak')
                                {{ $message }}
                                @enderror
                            </div>
                            <label for="sampul">Sampul <small>    (jpg, png)</small></label>
                            <input class="form-control" type="file" id="sampul" name="sampul">
                            <div class="text-danger">
                                @error('sampul')
                                {{ $message }}
                                @enderror
                            </div>
                            <label for="file">File <small style="color:red">*</small><small>    (pdf)</small></label>
                            <input class="form-control" type="file" id="file" name="file">
                            <div class="text-danger">
                                @error('file')
                                {{ $message }}
                                @enderror
                            </div>
                            <br>
                            <button type="submit" class="btn-outline-secondary">Tambah</button>
                        </form>
                    <br><br>
                </div>
                <div class="col-4">
                        <br><br>
                        <h5 style="font-weight: 1000; ">Daftar Bacaan</h5>
                        @foreach($bacaan as $bacaan)
                            <p style="align:justify;">{{ $bacaan -> judul}}</p>
                            <a href="/tampilpdf/{{ $bacaan-> file }}" target="_blank">[File]</a><hr>
                        @endforeach
                </div>
            </div>
        </div>

        <div class="container-fluid d bg-secondary" id="info">
            <div class="container">
                <div class="row justify-content-evenly">
                    <div class="col-4">
                        <center>
                            <p style=" font-size:40px; font-style: normal;">INFO</p>
                            <p style=" font-size:14px; font-style: normal;">Teknologi Informasi<br>
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
