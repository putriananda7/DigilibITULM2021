<!DOCTYPE html>
<html lang="en">
    <head>
        <link rel="shortcut icon" href="{{ url('img/Logo.png') }}">

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>DIGILIB IT | Beranda</title>

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
        <link rel="stylesheet" href="css/bootstrap.min.css"/>

        <link rel="stylesheet" href="{{asset('css/owl.carousel.css')}}"/>
        <link rel="stylesheet" href="{{asset('css/animate.css')}}"/>
        <link rel="stylesheet" href="{{asset('css/style.css')}}"/>
        
        <style>
            a:link { color:black; text-decoration:none; }
            a:visited { color:black; text-decoration:none; }
            a:hover { color:#6495ED; text-decoration:none; }
            img {
                max-width: 100%;
                height: auto;
                object-fit: cover;
            }
            .card {
            	width: 100%;
            	height: auto;
            	grid-column: span 3;
            	margin: 2px 0;
            	border-radius: 7px;
            	position: relative;
            	box-shadow: 0 1px 1px rgba(0,0,0,.1);
            
            }
            @media screen and (min-width: 300px) {
            	.card {
            	grid-column: span 2;
                width: 200px;
            }
            @media screen and (min-width: 500px) {
            	.card {
            	grid-column: span 2;
                width: 250px;
            }
            
            @media screen and (min-width: 750px) {
            
            	.card {
            	grid-column: span 2;
            	width: 250px;
            }
            
            @media screen and (min-width: 960px) {
            	.card {
            	width: 300px;
            	margin: 0 10px;
            }
            @media screen and (min-width: 1024px) {
            	.card {
            	width: 350px;
            	margin: 0 10px;
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
                    <li class="nav-item active">
                        <a href="/index" class="nav-link"  style="font-weight: 700; font-size:16px;">Beranda</a>
                    </li>
                    <li class="nav-item">
                        <a href="/login" class="nav-link" style="font-weight: 700; font-size:16px;">Login</a>
                    </li>
                </ul>
            </div>
        </nav>
        <section class="hero-section">
            <div class="hero-slider owl-carousel">
                <div class="hero-slide-item set-bg" data-setbg="{{ url('img/bgg.jpeg') }}">
                    <div class="hs-text">
                        <p style="font-weight: 700; font-size:70px; text-align: center; font-style: normal; color: white; background-color: #8cbee8">Univesitas Lambung Mangkurat</p>
                        <p style="font-weight: 700; font-size:16px; text-align: center; font-style: normal; color: #8cbee8; background-color: white">Perpustakaan Digital Program Studi Teknologi Informasi Universitas Lambung Mangkurat</p>  
                    </div>
                </div>
                <div class="hero-slide-item set-bg" data-setbg="{{ url('img/bg-011.png') }}">
                    <div class="hs-text">
                        <p style="font-weight: 700; font-size:70px; text-align: center; font-style: normal; color: white; background-color: #8cbee8">Perpustakaan Digital</p>
                        <p style="font-weight: 700; font-size:16px; text-align: center; font-style: normal; color: #8cbee8; background-color: white">Perpustakaan Digital Program Studi Teknologi Informasi Universitas Lambung Mangkurat</p>  
                    </div>
                </div>
            </div>
        </section>

        <div class="container-fluid d" id="daftar">
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
                    </form>
                </div>
            </div>
            <br>
            <div class="container">
                <div class="row">
                @foreach($topik as $data)
                    <div class="col-md-4 col-sm-6 col-xs-6 mb-3">
                        <div class="card" style=" background-color: brokenwhite">
                            <img src="{{ url('img/img.png') }}" alt="">
                            <div class="card-body">
                                <h5 class="card-title" style="font-weight: 800;  font-style: normal;">{{ $data-> nama_topik}}</h5>
                                <p class="card-text"></p>
                            </div>
                            <ul class="list-group list-group-flush">
                                <li class="list-group-item">
                                    <a href="/dosen/daftarbacaan/topik/{{ $data -> id_topik }}" type="button"class="btn btn-md btn-outline-secondary">Lihat Selengkapnya</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                @endforeach
                </div><br>
            </div>
        </div>

        <div class="container-fluid d" id="most">
                <br><br>
                <div class="row justify-content-evenly">
                    <div class="col-4">
                        <center>
                            <h4 style="font-weight: 700; font-style: normal;">MOST RECENT</h4>
                        </center><br>
                        @foreach($bacaan as $bacaan)
                            <p style="text-align:justify;"><a href="/mahasiswa/detail/{{ $bacaan-> id_bacaan }}">{{ $bacaan-> judul }}</a></p>
                            <p><a class="text-muted" href="/tampilpdf/{{ $bacaan-> file }}" style="text-decoration: none;"  target="_blank">[ File ]</a></p>
                        @endforeach
                    </div>
                    <div class="col-4">
                        <center>
                            <h4 style="font-weight: 700; font-style: normal; ">MOST VIEWED</h4>
                        </center><br>
                        <?php $n = 0 ?>
                        <?php $m = 0 ?>
                        @foreach($id_bacaan as $bacaan)
                            <p style="text-align:justify;"><a href="/mahasiswa/detail/{{ $bacaan }}">{{ trim($judul[$m++], '":judul{}[]') }}</a></p>
                            <p><a class="text-muted" href="/tampilpdf/{{ trim($file[$n++], '":y{}[]') }}" style="text-decoration: none;" target="_blank">[ File ]</a></p>
                        @endforeach
                    </div>
                </div><br>
        </div>

        <div class="container-fluid d bg-secondary" id="info" style="height: 700px">
            <div class="container">
                    @if (session('pesan'))
                    <div class="alert alert-success alert-dismissible">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                    <h5><i class="icon fas fa-check"></i> Success!</h5>
                    {{ session('pesan') }}
                    </div>
                    @endif
                <div class="row justify-content-evenly">
                    <div class="col-4">
                        <br><br><br><br><br>
                        <p>Berikan Komentar</p>
                        <form class="form-floating" action="/mahasiswa/masukan" method="post"> 
                            @csrf
                            <div class="form-check form-check-inline" style="font-size: 12px">
                                <input class="form-check-input" type="radio" name="jenis" id="jenis1" value="Komentar untuk Fitur pada Sistem">
                                <label class="form-check-label" for="jenis1">
                                    Komentar untuk Fitur pada Sistem
                                </label>
                            </div>
                            <div class="form-check form-check-inline" style="font-size: 12px">
                                <input class="form-check-input" type="radio" name="jenis" id="jenis2" value="Komentar untuk Tampilan">
                                <label class="form-check-label" for="jenis2">
                                    Komentar untuk Tampilan
                                </label>
                            </div>
                            <div class="form-check form-check-inline" style="font-size: 12px">
                                <input class="form-check-input" type="radio" name="jenis" id="jenis3" value="Masukan untuk Saran Penambahan Bacaan" checked>
                                <label class="form-check-label" for="jenis3">
                                    Masukan untuk Saran Penambahan Bacaan
                                </label>
                            </div><br><br>
                            <div class="form-floating">
                                <input type="text" style="color: black" class="form-control" id="nama" name="nama" placeholder="Masukkan Nama" value=" ">
                                <label for="nama" style="color: black">Nama</label>
                            </div><br>
                            <div class="form-floating">
                                <textarea class="form-control" style="height: 100px" placeholder="Leave a comment here" id="masukan" name="masukan"> </textarea>
                                <label for="masukan"  style="color: black">Masukan</label>
                            </div><br>
                            <button type="submit" class="btn btn-outline-light">Kirim</button>
                        </form>
                    </div>
                    <div class="col-4">
                        <br><br><br><br><br><br>
                        <center>
                            <p style="font-size:40px; font-style: normal;">INFO</p>
                            <p style="font-size:14px; font-style: normal;">Teknologi Informasi<br>
                                Fakultas Teknik<br>
                                Universitas Lambung Mangkurat<br>
                                Jl. Brigjen H. Hasan Basri, Kayu Tangi, Banjarmasin, Kalimantan Selatan
                            </p>
                            <p class="info"><i class="fa fa-phone"></i><a href="tel:05113304405" style="text-decoration: none; color: white;">(0511) 3304405, </a><a href="tel:05113304503" style="text-decoration: none; color: white;">3304503</a></p>
                            <p class="info"><i class="fa fa-envelope"></i><a href="mailto:ti@ulm.ac.id" style="text-decoration: none; color: white;">ti@ulm.ac.id</a></p>
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

        <script src="{{asset('js/jquery-3.2.1.min.js')}}"></script>
        <script src="{{asset('js/owl.carousel.min.js')}}"></script>
        <script src="{{asset('js/main.js')}}"></script>
    </body>
</html>
