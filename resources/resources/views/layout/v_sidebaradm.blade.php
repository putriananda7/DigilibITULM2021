
    <!-- Main Sidebar Container -->
            <aside class="main-sidebar sidebar-dark-primary elevation-4">
                <!-- Brand Logo -->
                <a href="/admin" class="brand-link">
                <img src="" alt="" class="brand-image img-circle elevation-3" style="opacity: .8">
                <span class="brand-text font-weight-light">DIGILIB IT</span>
                </a>
                
                <!-- Sidebar -->
                <div class="sidebar">
                <!-- Sidebar user (optional) -->

                <!-- Sidebar Menu -->
                <nav class="mt-2">
                    <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                    <!-- Add icons to the links using the .nav-icon class
                        with font-awesome or any other icon font library -->
                    <li class="nav-header">INFORMASI</li>
                    <li class="nav-item">
                        <a href="/admin" class="nav-link {{ request()->is('admin') ? 'active' : '' }}">
                        <i class="nav-icon far fa-chart-bar"></i>
                        <p>
                            Dashboard
                        </p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="/admin/mahasiswa" class="nav-link {{ request()->is('admin/mahasiswa') ? 'active' : '' }}">
                        <i class="nav-icon fas fa-users"></i>
                        <p>
                            Mahasiswa
                        </p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="/admin/dosen" class="nav-link {{ request()->is('admin/dosen') ? 'active' : '' }}">
                        <i class="nav-icon fas fa-users"></i>
                        <p>
                            Dosen
                        </p>
                        </a>
                    </li>
                    
                    <li class="nav-header">MANAJEMEN BACAAN</li>
                    <li class="nav-item">
                        <a href="/admin/daftarbacaan" class="nav-link {{ request()->is('admin/daftarbacaan') ? 'active' : '' }}">
                        <i class="nav-icon fas fa-book"></i>
                        <p>Daftar Bacaan</p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="/admin/tambahbacaan" class="nav-link {{ request()->is('admin/tambahbacaan') ? 'active' : '' }}">
                        <i class="nav-icon fas fa-plus-square"></i>
                        <p>Tambah Bacaan</p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="/admin/kelolabacaan" class="nav-link {{ request()->is('admin/kelolabacaan') ? 'active' : '' }}">
                        <i class="nav-icon fas fa-edit"></i>
                        <p>Kelola Bacaan</p>
                        </a>
                    </li>
                    <li class="nav-header">PANDUAN</li>
                    <li class="nav-item">
                        <a href="/admin/manualpenggunaan" class="nav-link {{ request()->is('admin/manualpenggunaan') ? 'active' : '' }}">
                        <i class="fas fa-laptop nav-icon"></i>
                        <p>Manual Penggunaan</p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="/admin/katasandi" class="nav-link {{ request()->is('admin/katasandi') ? 'active' : '' }}">
                        <i class="fas fa-lock nav-icon"></i>
                        <p>Kata Sandi</p>
                        </a>
                    </li>
                    </ul>
                </nav>
                <!-- /.sidebar-menu -->
                </div>
                <!-- /.sidebar -->
            </aside>
