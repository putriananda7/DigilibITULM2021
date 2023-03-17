<!DOCTYPE html>
<html lang="en">
    <head>
        <link rel="shortcut icon" href="{{ url('img/Logo.png') }}">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>DIGILIB IT | @yield('title')</title>
        <!-- Google Font: Source Sans Pro -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&amp;display=fallback">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="{{asset('lte/plugins/fontawesome-free/css/all.min.css')}}">
        <!-- icheck bootstrap -->
        <link rel="stylesheet" href="{{asset('lte/plugins/icheck-bootstrap/icheck-bootstrap.min.css')}}">
        <!-- Theme style -->
        <link rel="stylesheet" href="{{asset('lte/dist/css/adminlte.min.css')}}">
    </head>
    <body class="sidebar-mini" style="height: auto;">
        <!-- Site wrapper -->
        <div class="wrapper">
            @include('layout.v_navbar')
            @include('layout.v_sidebaradm')
            <!-- Content Wrapper. Contains page content -->
            <div class="content-wrapper" style="min.height: 1000.25px;">
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <div class="container-fluid">
                        <div class="row mb-2">
                            <div class="col-sm-6">
                                <h1>@yield('submenu')</h1>
                            </div>
                            <div class="col-sm-6">
                                <ol class="breadcrumb float-sm-right">
                                <li class="breadcrumb-item"><a href="#">Admin</a></li>
                                <li class="breadcrumb-item active">@yield('submenu')</li>
                                </ol>
                            </div>
                        </div>
                    </div><!-- /.container-fluid -->
                </section>
                @yield('content')
            </div>
            <footer>
                @include('layout.v_footer')
            </footer>
        <!-- Control Sidebar -->
        <aside class="control-sidebar control-sidebar-dark">
        <!-- Control sidebar content goes here -->
        @yield('script')
        <!-- jQuery -->
        <script src="{{asset('lte/plugins/jquery/jquery.min.js')}}"></script>
        <!-- Bootstrap 4 -->
        <script src="{{asset('lte/plugins/bootstrap/js/bootstrap.bundle.min.js')}}"></script>
        <script src="{{asset('lte/plugins/sweetalert2/sweetalert2.min.js')}}"></script>
        <!-- Toastr -->
        <script src="{{asset('lte/plugins/toastr/toastr.min.js')}}"></script>
        <!-- AdminLTE App -->
        <script src="{{asset('lte/dist/js/adminlte.min.js')}}"></script>
        <!-- AdminLTE for demo purposes -->
        <script src="{{asset('dist/js/demo.js')}}"></script>
    </body>
    
</html>