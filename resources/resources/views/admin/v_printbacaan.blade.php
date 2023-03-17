
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Cetak Bacaan yang Banyak Dilihat</title>
    <!-- Google Font: Source Sans Pro -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&amp;display=fallback">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="{{asset('lte/plugins/fontawesome-free/css/all.min.css')}}">
    <!-- Theme style -->
    <link rel="stylesheet" href="{{asset('lte/dist/css/adminlte.min.css')}}">
</head>
<body><br><br>
  <div class="container">
    <!-- Main content -->
    <section class="invoice">
      <!-- title row -->
      <div class="container">
          <table align="center">
              <tr>
                  <td><img src="{{url('img/logoulm.png')}}" width="100" height="100"></td>
                  <td><font size="5" color="white">......</font><br></td>
                  <td><font size="5" color="white">......</font><br></td>
                  <td><center>
                      <font size="5">KEMENTRIAN PENDIDIKAN DAN KEBUDAYAAN</font><br>
                      <font size="5"><b>PROGRAM STUDI TEKNOLOGI INFORMASI FAKULTAS TEKNIK</b></font><br>
                      <font size="5"><b>UNIVERSITAS LAMBUNG MANGKURAT</b></font><br>
                      <font size="2"><i>Jl. Brigjen H. Hasan Basri, Pangeran, Kec. Banjarmasin Utara, Kota Banjarmasin, Kalimantan Selatan 70123</i></font>
                  </center></td>
                  <td><font size="5" color="white">......</font><br></td>
                  <td><font size="5" color="white">......</font><br></td>
                  <td><font size="5" color="white">......</font><br></td>
              </tr>
              <tr>
                  <td colspan="7"><hr></td>
              </tr>
          </table>
        
      <div class="row">
        <div class="col-12">
          <div class="page-header">
            <center><h3>Bacaan yang Banyak Dilihat</h3>
            <h3>Bulan {{ $bln }} {{ $tahun }}</h3></center>
            
          </div>
        </div>
        <!-- /.col -->
      </div>

      <!-- Table row -->
      <div class="row">
        <div class="col-12 table-responsive">
          <table class="table table-striped">
            <thead>
            <tr>
              <th>No</th>
              <th>Judul</th>
              <th>Jumlah Dilihat</th>
            </tr>
            </thead>
            <tbody>
                <?php $no = 1 ?>
                <?php $m = 0 ?>
                @if($view <> "")
                @foreach($view as $data)
                  <tr>
                    <td>{{ $no++ }}</td>
                    <td>{{ trim($bacaan[$m++], '":judul{}[]') }}</td> 
                    <td>{{ $data }}</td>
                  </tr>
                @endforeach
                @elseif(!$view <> "")
                  <tr>
                    <td></td>
                    <td></td> 
                    <td></td>
                  </tr>
                @endif
            </tbody>
          </table>
          <small class="float-right">Tanggal Cetak: {{ date('d-M-Y') }}</small>
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </div>
    </section>
    <!-- /.content -->
  </div>
<!-- ./wrapper -->
<!-- Page specific script -->
<script>
  window.addEventListener("load", window.print());
</script>
</body>
</html>
