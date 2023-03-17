    @extends('layout.v_templateadm')
    @section('title', 'Beranda Admin')
    @section('submenu', 'Statistik Pengunjung')
    @section('content')
            <!-- Main content -->
        <section class="content">

            <!-- Default box -->
            <div class="card card-primary">
                <div class="card-header">
                    <h3 class="card-title">Statistik Pengunjung</h3>
                    <button type="button" class="btn btn-light  float-right" data-toggle="modal" data-target="#cetakStatistik">
                        Cetak
                    </button>
                </div>
                <div class="card-body">
                    <p>Total Pengunjung : {{$totalpengunjung}}</p>
                    <div id="statistikPengunjung">
                        
                    </div>
                </div>
                    <!-- /.card-body -->
            </div>
            <div class="col-sm-6">
                <h3>Chart Bacaan</h3>
            </div>
                <div class="col-12">
                    <div class="card card-primary">
                        <div class="card-header">
                            <h3 class="card-title">Topik yang Sering Dilihat</h3>
                            <button type="button" class="btn btn-light float-right" data-toggle="modal" data-target="#cetakTopik">
                                Cetak
                            </button>
                        </div>
                        <div class="card-body">
                            <div id="chartTopik">
                                
                            </div>
                        </div>
                            <!-- /.card-body -->
                    </div>
                </div>
                <div class="col-12">
                    <div class="card card-primary">
                        <div class="card-header">
                            <h3 class="card-title">Bacaan yang Banyak Dilihat</h3>
                            <button type="button" class="btn btn-light float-right" data-toggle="modal" data-target="#cetakBacaan">
                                Cetak
                            </button>
                        </div>
                        <div class="card-body">
                            <div id="chartBacaan">
                            </div>
                            <div>
                                <p><b> Ket: </b><br>
                                <small>{{ $namabacaan[0] }} : {{ trim($judulbacaan[0], '":judul{}[]') }}</small><br>
                                <small>{{ $namabacaan[1] }} : {{ trim($judulbacaan[1], '":judul{}[]') }}</small><br>
                                <small>{{ $namabacaan[2] }} : {{ trim($judulbacaan[2], '":judul{}[]') }}</small><br>
                                <small>{{ $namabacaan[3] }} : {{ trim($judulbacaan[3], '":judul{}[]') }}</small><br>
                                <small>{{ $namabacaan[4] }} : {{ trim($judulbacaan[4], '":judul{}[]') }}</small><br>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            <div class="col-sm-6">
                <h3>Komentar</h3>
            </div>
            <div class="row">
                <div class="col-4">
                    <div class="card card-primary"  style="height: 500px">
                        <div class="card-header">
                            <h3 class="card-title">Saran Penambahan Bacaan</h3>
                        </div>
                        <div class="card-body">
                            <div class="chart">
                                @foreach($masukan as $masukan)
                                <div class="direct-chat-msg">
                                    <div class="direct-chat-infos clearfix">
                                        <span class="direct-chat-name float-left">{{ $masukan -> nama}}</span>
                                    </div>
                                    <div class="direct-chat-text clearfix">
                                    {{ $masukan -> komentar}}
                                    </div>
                                    <!-- /.direct-chat-text -->
                                </div>
                                @endforeach
                            </div>
                        </div>
                            <!-- /.card-body -->
                    </div>
                </div>
                <div class="col-4">
                    <div class="card card-primary"  style="height: 500px">
                        <div class="card-header">
                            <h3 class="card-title">Komentar untuk Tampilan</h3>
                        </div>
                        <div class="card-body">
                            <div class="chart">
                                @foreach($masukan1 as $masukan)
                                <div class="direct-chat-msg">
                                    <div class="direct-chat-infos clearfix">
                                        <span class="direct-chat-name float-left">{{ $masukan -> nama}}</span>
                                    </div>
                                    <div class="direct-chat-text clearfix">
                                    {{ $masukan -> komentar}}
                                    </div>
                                    <!-- /.direct-chat-text -->
                                </div>
                                @endforeach
                            </div>
                        </div>
                            <!-- /.card-body -->
                    </div>
                </div>
                <div class="col-4">
                    <div class="card card-primary"  style="height: 500px">
                        <div class="card-header">
                            <h3 class="card-title">Komentar untuk Fitur</h3>
                        </div>
                        <div class="card-body">
                            <div class="chart">
                                @foreach($masukan2 as $masukan)
                                <div class="direct-chat-msg">
                                    <div class="direct-chat-infos clearfix">
                                        <span class="direct-chat-name float-left">{{ $masukan -> nama}}</span>
                                    </div>
                                    <div class="direct-chat-text clearfix">
                                    {{ $masukan -> komentar}}
                                    </div>
                                    <!-- /.direct-chat-text -->
                                </div>
                                @endforeach
                            </div>
                        </div>
                            <!-- /.card-body -->
                    </div>
                </div>
            </div>
            <div class="col-sm-6">
                <h3>Tampilan Bacaan</h3>
            </div>
            <div class="row">
                <div class="col-6">
                    <div class="card card-primary">
                        <div class="card-header">
                            <h3 class="card-title">Most Recent</h3>
                        </div>
                        <div class="card-body">
                            <div class="chart">
                                @foreach($bacaan as $bacaan)
                                <p style="text-align:justify;"><a href="/admin/detailbacaan/{{ $bacaan-> id_bacaan }}">{{ $bacaan-> judul }}</a></p>
                                <p><a class="text-muted" href="/tampilpdf/{{ $bacaan-> file }}" style="text-decoration: none;" target="_blank">[ File ]</a></p>
                                @endforeach
                            </div>
                        </div>
                            <!-- /.card-body -->
                    </div>
                </div>
                <div class="col-6">
                    <div class="card card-primary">
                        <div class="card-header">
                            <h3 class="card-title">Most View</h3>
                        </div>
                        <div class="card-body">
                            <div class="chart">
                            <?php $n = 0 ?>
                            <?php $m = 0 ?>
                                @foreach($id_bacaan as $bacaan)
                                <p style="text-align:justify;"><a href="/admin/detailbacaan/{{ $bacaan }}">{{ trim($judul[$m++], '":judul{}[]') }}</a></p>
                                <p><a class="text-muted" href="/tampilpdf/{{ trim($file[$n++], '":y{}[]') }}" style="text-decoration: none;" target="_blank">[ File ]</a></p>
                                @endforeach
                            </div>
                        </div>
                            <!-- /.card-body -->
                    </div>
                </div>
            </div>
            <!-- /.card -->
            <div class="modal fade" id="cetakStatistik">
                <div class="modal-dialog modal-dialog-scrollable">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="staticBackdropLabel">Cetak Statistik Pengunjung</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                        <form action="/admin/printstatistik" method="get" target="_blank">
                            @csrf
                            <div class="form-group">
                                <label for="bulan" class="form-label">Pilih Bulan</label><br>
                                <select class="custom-select form-control-border" id="bulan" name="bulan" aria-label="Default select example">
                                    <option selected>Pilih</option>
                                    <option value="01">Januari</option>
                                    <option value="02">Februari</option>
                                    <option value="03">Maret</option>
                                    <option value="04">April</option>
                                    <option value="05">Mei</option>
                                    <option value="06">Juni</option>
                                    <option value="07">Juli</option>
                                    <option value="08">Agustus</option>
                                    <option value="09">September</option>
                                    <option value="10">Oktober</option>
                                    <option value="11">November</option>
                                    <option value="12">Desember</option>
                                </select><br>
                            </div>
                            <div class="form-group">
                                <label for="tahun" class="form-label">Pilih Tahun</label><br>
                                <select class="custom-select form-control-border" id="tahun" name="tahun" aria-label="Default select example">
                                    <option selected>Pilih</option>
                                    <option value="2021">2021</option>
                                    <option value="2022">2022</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                <button type="submit" name="submit" class="btn btn-primary" target="_blank">Cetak</button>
                            </div>
                        </form>
                        </div>
                        
                    </div>
                </div>
            </div>
            <div class="modal fade" id="cetakTopik">
                <div class="modal-dialog modal-dialog-scrollable">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="staticBackdropLabel">Cetak Topik yang Sering Dilihat</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                        <form action="/admin/printtopik" method="get" target="_blank">
                            @csrf
                            <div class="form-group">
                                <label for="bulan" class="form-label">Pilih Bulan</label><br>
                                <select class="custom-select form-control-border" id="bulan" name="bulan" aria-label="Default select example">
                                    <option selected>Pilih</option>
                                    <option value="01">Januari</option>
                                    <option value="02">Februari</option>
                                    <option value="03">Maret</option>
                                    <option value="04">April</option>
                                    <option value="05">Mei</option>
                                    <option value="06">Juni</option>
                                    <option value="07">Juli</option>
                                    <option value="08">Agustus</option>
                                    <option value="09">September</option>
                                    <option value="10">Oktober</option>
                                    <option value="11">November</option>
                                    <option value="12">Desember</option>
                                </select><br>
                            </div>
                            <div class="form-group">
                                <label for="tahun" class="form-label">Pilih Tahun</label><br>
                                <select class="custom-select form-control-border" id="tahun" name="tahun" aria-label="Default select example">
                                    <option selected>Pilih</option>
                                    <option value="2021">2021</option>
                                    <option value="2022">2022</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                <button type="submit" name="submit" class="btn btn-primary" target="_blank">Cetak</button>
                            </div>
                        </form>
                        </div>
                        
                    </div>
                </div>
            </div>
            <div class="modal fade" id="cetakBacaan">
                <div class="modal-dialog modal-dialog-scrollable">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="staticBackdropLabel">Cetak Bacaan yang Banyak Dilihat</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                        <form action="/admin/printbacaan" method="get" target="_blank">
                            @csrf
                            <div class="form-group">
                                <label for="bulan" class="form-label">Pilih Bulan</label><br>
                                <select class="custom-select form-control-border" id="bulan" name="bulan" aria-label="Default select example">
                                    <option selected>Pilih</option>
                                    <option value="01">Januari</option>
                                    <option value="02">Februari</option>
                                    <option value="03">Maret</option>
                                    <option value="04">April</option>
                                    <option value="05">Mei</option>
                                    <option value="06">Juni</option>
                                    <option value="07">Juli</option>
                                    <option value="08">Agustus</option>
                                    <option value="09">September</option>
                                    <option value="10">Oktober</option>
                                    <option value="11">November</option>
                                    <option value="12">Desember</option>
                                </select><br>
                            </div>
                            <div class="form-group">
                                <label for="tahun" class="form-label">Pilih Tahun</label><br>
                                <select class="custom-select form-control-border" id="tahun" name="tahun" aria-label="Default select example">
                                    <option selected>Pilih</option>
                                    <option value="2021">2021</option>
                                    <option value="2022">2022</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                <button type="submit" name="submit" class="btn btn-primary" target="_blank">Cetak</button>
                            </div>
                        </form>
                        </div>
                        
                    </div>
                </div>
            </div>
        </section>
            <!-- /.content -->
        
    @endsection
    @section('script')
        <script src="https://code.highcharts.com/highcharts.js"></script>
        <script>
            Highcharts.chart('statistikPengunjung', {
                chart: {
                    type: 'column'
                },
                title: {
                    text: 'Statistik Pengunjung'
                },

                xAxis: {
                    categories: {!! json_encode($kategori) !!},
                    crosshair: true
                },
                yAxis: {
                    min: 0,
                    title: {
                        text: 'Jumlah Pengunjung'
                    }
                },
                tooltip: {
                    headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
                    pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
                        '<td style="padding:0"><b>{point.y} pengunjung</b></td></tr>',
                    footerFormat: '</table>',
                    shared: true,
                    useHTML: true
                },
                plotOptions: {
                    column: {
                        pointPadding: 0.2,
                        borderWidth: 0
                    }
                },
                series: [{
                    name: 'Pengunjung',
                    data: {!! json_encode($jumlah) !!}

                }]
            });
        </script>
        <script>
            Highcharts.chart('chartBacaan', {
                chart: {
                    type: 'pie'
                },
                title: {
                    text: 'Chart Bacaan'
                },
                subtitle: {
                    text: '{{$bulan}} - {{ $tahun }}'
                },
                accessibility: {
                    announceNewData: {
                        enabled: true
                    },
                    point: {
                        valueSuffix: '%'
                    }
                },

                plotOptions: {
                    series: {
                        dataLabels: {
                            enabled: true,
                            format: '{point.name}: {point.y} x'
                        }
                    }
                },

                tooltip: {
                    headerFormat: '<span style="font-size:11px">{series.name}</span><br>',
                    pointFormat: '<span style="color:{point.color}">{point.name}</span>: <b>{point.y:} x</b><br/>'
                },

                series: [
                    {
                        name: "Bacaan",
                        colorByPoint: true,
                        data: [
                            {
                                name: "{{ $namabacaan[0] }}",
                                y: {{ $jumlahbacaan[0] }},
                                drilldown: "{{ $namabacaan[0] }}"
                            },
                            {
                                name: "{{ $namabacaan[1] }}",
                                y: {{ $jumlahbacaan[1] }},
                                drilldown: "{{ $namabacaan[1] }}"
                            },
                            {
                                name: "{{ $namabacaan[2] }}",
                                y: {{ $jumlahbacaan[2] }},
                                drilldown: "{{ $namabacaan[2] }}"
                            },
                            {
                                name: "{{ $namabacaan[3] }}",
                                y: {{ $jumlahbacaan[3] }},
                                drilldown: "{{ $namabacaan[3] }}"
                            },
                            {
                                name: "{{ $namabacaan[4] }}",
                                y: {{ $jumlahbacaan[4] }},
                                drilldown: "{{ $namabacaan[4] }}"
                            }
                        ]
                    }
                ],
            });
        </script>
        <script>
            Highcharts.chart('chartTopik', {
                chart: {
                    type: 'pie'
                },
                title: {
                    text: 'Chart Topik'
                },
                subtitle: {
                    text: '{{$bulan}} - {{ $tahun }}'
                },
                accessibility: {
                    announceNewData: {
                        enabled: true
                    },
                    point: {
                        valueSuffix: 'x'
                    }
                },

                plotOptions: {
                    series: {
                        dataLabels: {
                            enabled: true,
                            format: '{point.name}: {point.y} x'
                        }
                    }
                },

                tooltip: {
                    headerFormat: '<span style="font-size:11px">{series.name}</span><br>',
                    pointFormat: '<span style="color:{point.color}">{point.name}</span>: <b>{point.y} x</b><br/>'
                },

                series: [
                    {
                        name: "Topik",
                        colorByPoint: true,
                        data: [
                            {
                                name: "{{ trim($namatopik[0], '":z{}[]') }}",
                                y: {{ $jumlahtopik[0] }},
                                drilldown: "{{ trim($namatopik[0], '":z{}[]') }}"
                            },
                            {
                                name: "{{ trim($namatopik[1], '":z{}[]') }}",
                                y: {{ $jumlahtopik[1] }},
                                drilldown: "{{trim($namatopik[1], '":z{}[]') }}"
                            },
                            {
                                name: "{{ trim($namatopik[2], '":z{}[]') }}",
                                y: {{ $jumlahtopik[2] }},
                                drilldown: "{{ trim($namatopik[2], '":z{}[]') }}"
                            },
                            {
                                name: "{{ trim($namatopik[3], '":z{}[]') }}",
                                y: {{ $jumlahtopik[3] }},
                                drilldown: "{{ trim($namatopik[3], '":z{}[]') }}"
                            },
                            {
                                name: "{{ trim($namatopik[4], '":z{}[]') }}",
                                y: {{ $jumlahtopik[4] }},
                                drilldown: "{{ trim($namatopik[4], '":z{}[]') }}"
                            }
                        ]
                    }
                ],
            });
        </script>

        
    @endsection
    
