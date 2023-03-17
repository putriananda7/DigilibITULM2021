<!DOCTYPE html>
<html lang="en">
    <head>
        <link rel="shortcut icon" href="{{ url('img/Logo.png') }}">

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>DIGILIB IT | Log in</title>

        <!-- Google Font: Source Sans Pro -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&amp;display=fallback">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="{{asset('lte/plugins/fontawesome-free/css/all.min.css')}}">
        <!-- icheck bootstrap -->
        <link rel="stylesheet" href="{{asset('lte/plugins/icheck-bootstrap/icheck-bootstrap.min.css')}}">
        <!-- Theme style -->
        <link rel="stylesheet" href="{{asset('lte/dist/css/adminlte.min.css')}}">
    </head>
    <body style="min-height: 496.391px;">
    <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-secondary">
 
            <a class="navbar-brand" href="#"  style="font-weight: 700; font-size:30px;">DIGILIB IT</a>

            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a href="/index" class="nav-link"  style="font-weight: 700; font-size:16px;">Beranda</a>
                    </li>
                    <li class="nav-item active">
                        <a href="/login" class="nav-link" style="font-weight: 700; font-size:16px;">Login</a>
                    </li>
                </ul>
            </div>
        </nav>
        <div class="login-page">
        
            @if (session('pesan'))
                <div class="alert alert-danger alert-dismissible">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                    <h5> Failed!</h5>
                    {{ session('pesan') }}
                </div>
            @endif
            <div class="login-box">
                <div class="login-logo">
                    <a href="#"><b>Perpustakaan Digital</b><br>Teknologi Informasi</a>
                </div>
                <!-- /.login-logo -->
                <div class="card">
                    <div class="card-body login-card-body">
                    <p class="login-box-msg">Sign in to start your session</p>

                    <form action="/loginpost" method="POST">
                    @csrf
                        <div class="text-danger">
                            @error('username')
                                {{ $message }}
                            @enderror
                        </div>
                        <div class="input-group mb-3">
                        <input type="text" name="username" class="form-control" placeholder="Username">
                        <div class="input-group-append">
                            <div class="input-group-text">
                                <span class="fas fa-user-circle"></span>
                            </div>
                        </div>
                        </div>
                        <div class="text-danger">
                            @error('password')
                                {{ $message }}
                            @enderror
                        </div>
                        <div class="input-group mb-3">
                            <input type="password" name="password" class="form-control" placeholder="Password">
                            <div class="input-group-append">
                                <div class="input-group-text">
                                    <span class="fas fa-lock"></span>
                                </div>
                            </div>
                        </div>
                        
                        <div class="row">
                        <div class="col-8">
                        </div>
                        <!-- /.col -->
                        <div class="col-4">
                            <button type="submit" class="btn btn-primary btn-block">Login</button>
                        </div>
                        <!-- /.col -->
                        </div>
                    </form>
                    <!-- /.login-card-body -->
                </div>
            </div>
            <!-- /.login-box -->
        </div>
        <footer class="fixed-bottom navbar-light bg-light">
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