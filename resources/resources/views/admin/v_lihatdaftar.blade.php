@extends('layout.v_templateadm')
@section('title', 'Daftar Bacaan')
@section('submenu', 'Daftar Bacaan')
@section('content')
    <h4>{{ $bacaan-> nama_kategori }}</h4>
    <div class="row">
        <div class="col-5 col-sm-3">
            <div class="nav flex-column nav-tabs h-100" id="vert-tabs-tab" role="tablist" aria-orientation="vertical">
                <a class="nav-link" id="vert-tabs-home-tab" data-toggle="pill" href="#vert-tabs-10" role="tab" aria-controls="vert-tabs-home" aria-selected="true">{{ $topik[0] -> nama_topik}}</a>
                <a class="nav-link" id="vert-tabs-home-tab" data-toggle="pill" href="#vert-tabs-12" role="tab" aria-controls="vert-tabs-home" aria-selected="true">{{ $topik[1] -> nama_topik}}</a>
                <a class="nav-link" id="vert-tabs-home-tab" data-toggle="pill" href="#vert-tabs-3" role="tab" aria-controls="vert-tabs-home" aria-selected="true">{{ $topik[2] -> nama_topik}}</a>
                <a class="nav-link" id="vert-tabs-home-tab" data-toggle="pill" href="#vert-tabs-8" role="tab" aria-controls="vert-tabs-home" aria-selected="true">{{ $topik[3] -> nama_topik}}</a>
                <a class="nav-link" id="vert-tabs-home-tab" data-toggle="pill" href="#vert-tabs-1" role="tab" aria-controls="vert-tabs-home" aria-selected="true">{{ $topik[4] -> nama_topik}}</a>
                <a class="nav-link" id="vert-tabs-home-tab" data-toggle="pill" href="#vert-tabs-11" role="tab" aria-controls="vert-tabs-home" aria-selected="true">{{ $topik[5] -> nama_topik}}</a>
                <a class="nav-link" id="vert-tabs-home-tab" data-toggle="pill" href="#vert-tabs-4" role="tab" aria-controls="vert-tabs-home" aria-selected="true">{{ $topik[6] -> nama_topik}}</a>
                <a class="nav-link" id="vert-tabs-home-tab" data-toggle="pill" href="#vert-tabs-7" role="tab" aria-controls="vert-tabs-home" aria-selected="true">{{ $topik[7] -> nama_topik}}</a>
                <a class="nav-link" id="vert-tabs-home-tab" data-toggle="pill" href="#vert-tabs-2" role="tab" aria-controls="vert-tabs-home" aria-selected="true">{{ $topik[8] -> nama_topik}}</a>
                <a class="nav-link" id="vert-tabs-home-tab" data-toggle="pill" href="#vert-tabs-6" role="tab" aria-controls="vert-tabs-home" aria-selected="true">{{ $topik[9] -> nama_topik}}</a>
                <a class="nav-link" id="vert-tabs-home-tab" data-toggle="pill" href="#vert-tabs-5" role="tab" aria-controls="vert-tabs-home" aria-selected="true">{{ $topik[10] -> nama_topik}}</a>
                <a class="nav-link" id="vert-tabs-home-tab" data-toggle="pill" href="#vert-tabs-9" role="tab" aria-controls="vert-tabs-home" aria-selected="true">{{ $topik[11] -> nama_topik}}</a>
            </div>
        </div>
        <div class="col-7 col-sm-9">
            <div class="tab-content" id="vert-tabs-tabContent">
                <div class="tab-pane text-left fade show" id="vert-tabs-1" role="tabpanel" aria-labelledby="vert-tabs-home-tab">
                    <div class="card card-primary">
                        <div class="table-responsive">
                            <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>Judul</th>
                                    <th>Tahun</th>
                                    <th>Penulis</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                            <?php $no=1; ?>
                            @foreach($bacaan10 as $bacaan10)
                                @if($bacaan10 -> judul <> "")
                                    <tr>
                                        <td>{{ $no++ }}</td>
                                        <td>{{ $bacaan10 -> judul }}</td>
                                        <td>{{ $bacaan10 -> tahun }}</td>
                                        <td>{{ $bacaan10 -> penulis }}</td>
                                        <td>
                                            <a href="/admin/detailbacaan/{{ $bacaan10-> id_bacaan }}" class="btn btn-sm btn-primary">Detail</a>
                                        </td>
                                    </tr>  
                                @elseif($bacaan10 -> judul <> "null")
                                @endif
                            @endforeach
                            </tbody>
                        </table>
                        </div>
                    </div>
                </div>
                <div class="tab-pane text-left fade show" id="vert-tabs-2" role="tabpanel" aria-labelledby="vert-tabs-home-tab">
                    <div class="card card-primary">
                        <div class="table-responsive">
                            <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>Judul</th>
                                    <th>Tahun</th>
                                    <th>Penulis</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                            <?php $no=1; ?>
                            @foreach($bacaan2 as $bacaan2)
                                @if($bacaan2 -> judul <> "")
                                
                                    <tr>
                                        <td>{{ $no++ }}</td>
                                        <td>{{ $bacaan2 -> judul }}</td>
                                        <td>{{ $bacaan2 -> tahun }}</td>
                                        <td>{{ $bacaan2 -> penulis }}</td>
                                        <td>
                                            <a href="/admin/detailbacaan/{{ $bacaan2-> id_bacaan }}" class="btn btn-sm btn-primary" >Detail</a>
                                        </td>
                                    </tr>  
                                @elseif($bacaan2 -> judul <> "null")
                                @endif
                            @endforeach
                            </tbody>
                        </table>
                        </div>
                    </div>
                </div>
                <div class="tab-pane text-left fade show" id="vert-tabs-3" role="tabpanel" aria-labelledby="vert-tabs-home-tab">
                    <div class="card card-primary">
                        <div class="table-responsive">
                            <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>Judul</th>
                                    <th>Tahun</th>
                                    <th>Penulis</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                            <?php $no=1; ?>
                            @foreach($bacaan8 as $bacaan8)
                                @if($bacaan8 -> judul <> "")
                                
                                    <tr>
                                        <td>{{ $no++ }}</td>
                                        <td>{{ $bacaan8 -> judul }}</td>
                                        <td>{{ $bacaan8 -> tahun }}</td>
                                        <td>{{ $bacaan8 -> penulis }}</td>
                                        <td>
                                            <a href="/admin/detailbacaan/{{ $bacaan8-> id_bacaan }}" class="btn btn-sm btn-primary" >Detail</a>
                                        </td>
                                    </tr>  
                                @elseif($bacaan8 -> judul <> "null")
                                @endif
                            @endforeach
                            </tbody>
                        </table>
                        </div>
                    </div>
                </div>
                <div class="tab-pane text-left fade show" id="vert-tabs-4" role="tabpanel" aria-labelledby="vert-tabs-home-tab">
                    <div class="card card-primary">
                        <div class="table-responsive">
                            <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>Judul</th>
                                    <th>Tahun</th>
                                    <th>Penulis</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php $no=1; ?>
                            @foreach($bacaan4 as $bacaan4)
                                @if($bacaan4 -> judul <> "")
                                
                                    <tr>
                                        <td>{{ $no++ }}</td>
                                        <td>{{ $bacaan4 -> judul }}</td>
                                        <td>{{ $bacaan4 -> tahun }}</td>
                                        <td>{{ $bacaan4 -> penulis }}</td>
                                        <td>
                                            <a href="/admin/detailbacaan/{{ $bacaan4-> id_bacaan }}" class="btn btn-sm btn-primary" >Detail</a>
                                        </td>
                                    </tr>  
                                @elseif($bacaan4 -> judul <> "null")
                                @endif
                            @endforeach
                            </tbody>
                        </table>
                        </div>
                    </div>
                </div>
                <div class="tab-pane text-left fade show" id="vert-tabs-5" role="tabpanel" aria-labelledby="vert-tabs-home-tab">
                    <div class="card card-primary">
                        <div class="table-responsive">
                            <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>Judul</th>
                                    <th>Tahun</th>
                                    <th>Penulis</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php $no=1; ?>
                            @foreach($bacaan5 as $bacaan5)
                                @if($bacaan5 -> judul <> "")
                                
                                    <tr>
                                        <td>{{ $no++ }}</td>
                                        <td>{{ $bacaan5 -> judul }}</td>
                                        <td>{{ $bacaan5 -> tahun }}</td>
                                        <td>{{ $bacaan5 -> penulis }}</td>
                                        <td>
                                            <a href="/admin/detailbacaan/{{ $bacaan5-> id_bacaan }}" class="btn btn-sm btn-primary" >Detail</a>
                                        </td>
                                    </tr>  
                                @elseif($bacaan5 -> judul <> "null")
                                @endif
                            @endforeach
                            </tbody>
                        </table>
                        </div>
                    </div>
                </div>
                <div class="tab-pane text-left fade show" id="vert-tabs-6" role="tabpanel" aria-labelledby="vert-tabs-home-tab">
                    <div class="card card-primary">
                        <div class="table-responsive">
                            <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>Judul</th>
                                    <th>Tahun</th>
                                    <th>Penulis</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php $no=1; ?>
                            @foreach($bacaan6 as $bacaan6)
                                @if($bacaan6 -> judul <> "")
                                
                                    <tr>
                                        <td>{{ $no++ }}</td>
                                        <td>{{ $bacaan6 -> judul }}</td>
                                        <td>{{ $bacaan6 -> tahun }}</td>
                                        <td>{{ $bacaan6 -> penulis }}</td>
                                        <td>
                                            <a href="/admin/detailbacaan/{{ $bacaan6-> id_bacaan }}" class="btn btn-sm btn-primary" >Detail</a>
                                        </td>
                                    </tr>  
                                @elseif($bacaan6 -> judul <> "null")
                                @endif
                            @endforeach
                            </tbody>
                        </table>
                        </div>
                    </div>
                </div>
                <div class="tab-pane text-left fade show" id="vert-tabs-7" role="tabpanel" aria-labelledby="vert-tabs-home-tab">
                    <div class="card card-primary">
                        <div class="table-responsive">
                            <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>Judul</th>
                                    <th>Tahun</th>
                                    <th>Penulis</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php $no=1; ?>
                            @foreach($bacaan7 as $bacaan7)
                                @if($bacaan7 -> judul <> "")
                                
                                    <tr>
                                        <td>{{ $no++ }}</td>
                                        <td>{{ $bacaan7 -> judul }}</td>
                                        <td>{{ $bacaan7 -> tahun }}</td>
                                        <td>{{ $bacaan7 -> penulis }}</td>
                                        <td>
                                            <a href="/admin/detailbacaan/{{ $bacaan7-> id_bacaan }}" class="btn btn-sm btn-primary" >Detail</a>
                                        </td>
                                    </tr>  
                                @elseif($bacaan7 -> judul <> "null")
                                @endif
                            @endforeach
                            </tbody>
                        </table>
                        </div>
                    </div>
                </div>
                <div class="tab-pane text-left fade show" id="vert-tabs-8" role="tabpanel" aria-labelledby="vert-tabs-home-tab">
                    <div class="card card-primary">
                        <div class="table-responsive">
                            <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>Judul</th>
                                    <th>Tahun</th>
                                    <th>Penulis</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php $no=1; ?>
                            @foreach($bacaan1 as $bacaan1)
                                @if($bacaan1 -> judul <> "")
                                
                                    <tr>
                                        <td>{{ $no++ }}</td>
                                        <td>{{ $bacaan1 -> judul }}</td>
                                        <td>{{ $bacaan1 -> tahun }}</td>
                                        <td>{{ $bacaan1 -> penulis }}</td>
                                        <td>
                                            <a href="/admin/detailbacaan/{{ $bacaan1-> id_bacaan }}" class="btn btn-sm btn-primary" >Detail</a>
                                        </td>
                                    </tr>  
                                @elseif($bacaan1 -> judul <> "null")
                                @endif
                            @endforeach
                            </tbody>
                        </table>
                        </div>
                    </div>
                </div>
                <div class="tab-pane text-left fade show" id="vert-tabs-9" role="tabpanel" aria-labelledby="vert-tabs-home-tab">
                    <div class="card card-primary">
                        <div class="table-responsive">
                            <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>Judul</th>
                                    <th>Tahun</th>
                                    <th>Penulis</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php $no=1; ?>
                            @foreach($bacaan9 as $bacaan9)
                                @if($bacaan9 -> judul <> "")
                                
                                    <tr>
                                        <td>{{ $no++ }}</td>
                                        <td>{{ $bacaan9 -> judul }}</td>
                                        <td>{{ $bacaan9 -> tahun }}</td>
                                        <td>{{ $bacaan9 -> penulis }}</td>
                                        <td>
                                            <a href="/admin/detailbacaan/{{ $bacaan9-> id_bacaan }}" class="btn btn-sm btn-primary" >Detail</a>
                                        </td>
                                    </tr>  
                                @elseif($bacaan9 -> judul <> "null")
                                @endif
                            @endforeach
                            </tbody>
                        </table>
                        </div>
                    </div>
                </div>
                <div class="tab-pane text-left fade show active" id="vert-tabs-10" role="tabpanel" aria-labelledby="vert-tabs-home-tab">
                    <div class="card card-primary">
                        <div class="table-responsive">
                            <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>Judul</th>
                                    <th>Tahun</th>
                                    <th>Penulis</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php $no=1; ?>
                            @foreach($bacaan12 as $bacaan12)
                                    <tr>
                                        <td>{{ $no++ }}</td>
                                        <td>{{ $bacaan12 -> judul }}</td>
                                        <td>{{ $bacaan12 -> tahun }}</td>
                                        <td>{{ $bacaan12 -> penulis }}</td>
                                        <td>
                                            <a href="/admin/detailbacaan/{{ $bacaan12-> id_bacaan }}" class="btn btn-sm btn-primary" >Detail</a>
                                        </td>
                                    </tr>  
                            @endforeach
                            </tbody>
                        </table>
                        </div>
                    </div>
                </div>
                <div class="tab-pane text-left fade show" id="vert-tabs-11" role="tabpanel" aria-labelledby="vert-tabs-home-tab">
                    <div class="card card-primary">
                        <div class="table-responsive">
                            <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>Judul</th>
                                    <th>Tahun</th>
                                    <th>Penulis</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php $no=1; ?>
                            @foreach($bacaan11 as $bacaan11)
                                @if($bacaan11 -> judul <> "")
                                
                                    <tr>
                                        <td>{{ $no++ }}</td>
                                        <td>{{ $bacaan11 -> judul }}</td>
                                        <td>{{ $bacaan11 -> tahun }}</td>
                                        <td>{{ $bacaan11 -> penulis }}</td>
                                        <td>
                                            <a href="/admin/detailbacaan/{{ $bacaan11-> id_bacaan }}" class="btn btn-sm btn-primary" >Detail</a>
                                        </td>
                                    </tr>  
                                @elseif($bacaan11 -> judul <> "null")
                                @endif
                            @endforeach
                            </tbody>
                        </table>
                        </div>
                    </div>
                </div>
                <div class="tab-pane text-left fade show" id="vert-tabs-12" role="tabpanel" aria-labelledby="vert-tabs-home-tab">
                    <div class="card card-primary">
                        <div class="table-responsive">
                            <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>Judul</th>
                                    <th>Tahun</th>
                                    <th>Penulis</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php $no=1; ?>
                            @foreach($bacaan3 as $bacaan3)
                                @if($bacaan3 -> judul <> "")
                                
                                    <tr>
                                        <td>{{ $no++ }}</td>
                                        <td>{{ $bacaan3 -> judul }}</td>
                                        <td>{{ $bacaan3 -> tahun }}</td>
                                        <td>{{ $bacaan3 -> penulis }}</td>
                                        <td>
                                            <a href="/admin/detailbacaan/{{ $bacaan3-> id_bacaan }}" class="btn btn-sm btn-primary" >Detail</a>
                                        </td>
                                    </tr>  
                                @elseif($bacaan3 -> judul <> "null")
                                @endif
                            @endforeach
                            </tbody>
                        </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection