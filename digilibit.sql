-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 18 Nov 2021 pada 12.53
-- Versi server: 10.2.40-MariaDB-cll-lve
-- Versi PHP: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `digilibit`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username_admin` varchar(255) NOT NULL,
  `password_admin` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `username_admin`, `password_admin`) VALUES
(1, 'admin', 'c93ccd78b2076528346216b3b2f701e6');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bacaan`
--

CREATE TABLE `bacaan` (
  `id_bacaan` int(11) NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `tahun` varchar(255) DEFAULT NULL,
  `penerbit` varchar(255) DEFAULT NULL,
  `penulis` varchar(255) DEFAULT NULL,
  `abstrak` text DEFAULT NULL,
  `sampul` varchar(255) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `kategori_id` int(11) NOT NULL,
  `topik_id` varchar(20) NOT NULL,
  `upload_by` int(11) DEFAULT NULL,
  `upload_admin` int(11) DEFAULT NULL,
  `id_akses` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `bacaan`
--

INSERT INTO `bacaan` (`id_bacaan`, `judul`, `tahun`, `penerbit`, `penulis`, `abstrak`, `sampul`, `file`, `kategori_id`, `topik_id`, `upload_by`, `upload_admin`, `id_akses`) VALUES
(5, 'SISTEM INFORMASI PENGAMBILAN CUTI DAN KENAIKAN PANGKAT (SICEPAT) PEGAWAI ASN SECARA BERKALA DI DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI KALIMANTAN SELATAN', '2020', NULL, 'M. Ibnu Madina, Rahimanisa, Muhammad Fahrialdi, Dahliana', NULL, 'SISTEM INFORMASI PENGAMBILAN CUTI DAN KENAIKAN PANGKAT (SICEPAT) PEGAWAI ASN SECARA BERKALA DI DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI KALIMANTAN SELATAN.png', 'SISTEM INFORMASI PENGAMBILAN CUTI DAN KENAIKAN PANGKAT (SICEPAT) PEGAWAI ASN SECARA BERKALA DI DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI KALIMANTAN SELATAN.pdf', 5, '9', NULL, NULL, 2),
(62, 'PREDIKSI JUMLAH MAHASISWA REGISTRASI PER SEMESTER  MENGGUNAKAN LINIER REGRESI PADA UNIVERSITAS ICHSAN  GORONTALO', '2018', 'ILKOM Jurnal Ilmiah', 'Amiruddin , Rezqiwati Ishak', 'Peningkatan mutu pendidikan, mutu pelayanan dan peningkatan nilai akreditasi adalah harapan semua perguruan tinggi khususnya di Universitas Ichsan Gorontalo. Salah satu faktor untuk mencapai hal tersebut adalah meningkatnya jumlah mahasiswa yang melakukan registrasi pembayaran setiap semester. Berdasarkan laporan di PDPT Dikti tahun pelaporan 2017/2018 memiliki jumlah mahasiswa ± 9.000 orang, dari analisa 4 tahun terakhir jumlah mahasiswa yang tidak registrasi cenderung meningkat dan mahasiswa registrasi cenderung menurun, jika hal ini tidak diperhatikan, maka akan berdampak pada pencapaian harapan tersebut di atas. Untuk mengatasi masalah tersebut perlu dilakukan teknik prediksi menggunakan metode Linier Regresi dan MAPE. Tujuan dari penelitian ini adalah membangun aplikasi untuk memprediksi jumlah mahasiswa registrasi. Berdasarkan hasil penelitian dari 2 prodi yang dipilih yakni prodi Teknik Informatika didapatkan hasil tingkat error 4.24% atau tingkat akurasi 95.76%, dan untuk prodi Ilmu Hukum didapatkan tingkat error 7.69% atau tingkat akurasi 92.31%, dengan demikian aplikasi yang sudah dibangun layak untuk digunakan.', 'PREDIKSI JUMLAH MAHASISWA REGISTRASI PER SEMESTER  MENGGUNAKAN LINIER REGRESI PADA UNIVERSITAS ICHSAN  GORONTALO.png', 'PREDIKSI JUMLAH MAHASISWA REGISTRASI PER SEMESTER  MENGGUNAKAN LINIER REGRESI PADA UNIVERSITAS ICHSAN  GORONTALO.pdf', 2, '4', 3, NULL, 3),
(81, 'Prediksi  Backpropagation Neural Network dalam Memprediksi Harga Komoditi Tanaman Karet', '2011', NULL, 'Rahimanisa', 'Prediksi  Backpropagation Neural Network dalam Memprediksi Harga Komoditi Tanaman KaretPrediksi  Backpropagation Neural Network dalam Memprediksi Harga Komoditi Tanaman KaretPrediksi  Backpropagation Neural Network dalam Memprediksi Harga Komoditi Tanaman KaretPrediksi  Backpropagation Neural Network dalam Memprediksi Harga Komoditi Tanaman KaretPrediksi  Backpropagation Neural Network dalam Memprediksi Harga Komoditi Tanaman Karet', 'Prediksi  Backpropagation Neural Network dalam Memprediksi Harga Komoditi Tanaman Karet.png', 'Prediksi  Backpropagation Neural Network dalam Memprediksi Harga Komoditi Tanaman Karet.pdf', 5, '10', NULL, NULL, 0),
(87, 'Prediksi Kelulusan Mahasiswa Menggunakan Metode K-Nearest Neighbor Studi Kasus Teknik Sipil Universitas Lambung Mangkurat', '2019', NULL, 'Ranti Saputri', NULL, 'Prediksi Kelulusan Mahasiswa Menggunakan Metode K-Nearest Neighbor Studi Kasus Teknik Sipil Universitas Lambung Mangkurat.png', 'Prediksi Kelulusan Mahasiswa Menggunakan Metode K-Nearest Neighbor Studi Kasus Teknik Sipil Universitas Lambung Mangkurat.pdf', 4, '1', NULL, NULL, 0),
(88, 'Rancang Bangun Aplikasi Laporan Harian Kegiatan Bidang Teknologi Informasi Kepolisian Daerah Kalimantan Selatan Berbasis Web', '2018', NULL, 'Muhammad Rais Norhidayat', NULL, 'Rancang Bangun Aplikasi Laporan Harian Kegiatan Bidang Teknologi Informasi Kepolisian Daerah Kalimantan Selatan Berbasis Web.png', 'Rancang Bangun Aplikasi Laporan Harian Kegiatan Bidang Teknologi Informasi Kepolisian Daerah Kalimantan Selatan Berbasis Web.pdf', 4, '9', NULL, NULL, 0),
(89, 'Rancang Bangun Sistem Aplikasi Pengarsipan Surat Masuk dan Keluar Berbasis Dekstop Pada PT. Ma\'ali Wisata Banjarmasin Kalimantan Selatan', '2018', NULL, 'Muhammad Reza Karimi', NULL, 'Rancang Bangun Sistem Aplikasi Pengarsipan Surat Masuk dan Keluar Berbasis Dekstop Pada PT. Ma\'ali Wisata Banjarmasin Kalimantan Selatan.png', 'Rancang Bangun Sistem Aplikasi Pengarsipan Surat Masuk dan Keluar Berbasis Dekstop Pada PT. Ma\'ali Wisata Banjarmasin Kalimantan Selatan.pdf', 4, '10', NULL, NULL, 0),
(90, 'Rancang Bangun Sistem Aplikasi Laporan Stock Barang Berbasis Dekstop Pada PT. Ma\'ali Wisata Banjarmasin Kalimantan Selatan', '2018', NULL, 'Muhammad Rizal Fikri', NULL, 'Rancang Bangun Sistem Aplikasi Laporan Stock Barang Berbasis Dekstop Pada PT. Ma\'ali Wisata Banjarmasin Kalimantan Selatan.png', 'Rancang Bangun Sistem Aplikasi Laporan Stock Barang Berbasis Dekstop Pada PT. Ma\'ali Wisata Banjarmasin Kalimantan Selatan.pdf', 4, '10', NULL, NULL, 0),
(91, 'Rancang Bangun Sistem Manajemen Data Sekolah Berbasis Website Di SMA Negeri 5 Banjarmasin', '2019', NULL, 'Noorhanida Royani', NULL, 'Rancang Bangun Sistem Manajemen Data Sekolah Berbasis Website Di SMA Negeri 5 Banjarmasin.png', 'Rancang Bangun Sistem Manajemen Data Sekolah Berbasis Website Di SMA Negeri 5 Banjarmasin.pdf', 4, '9', NULL, NULL, 0),
(92, 'Rancang Bangun Website SD Santa Maria Banjarmasin', '2018', NULL, 'Naomi Sekariyanti', NULL, 'Rancang Bangun Website SD Santa Maria Banjarmasin.png', 'Rancang Bangun Website SD Santa Maria Banjarmasin.pdf', 4, '9', NULL, NULL, 0),
(93, 'Rancang Bangun Sistem Inventaris Berbasis Website Pada Akademi Farmasi ISFI Banjarmasin', '2018', NULL, 'Misnariyani', NULL, 'Rancang Bangun Sistem Inventaris Berbasis Website Pada Akademi Farmasi ISFI Banjarmasin.png', 'Rancang Bangun Sistem Inventaris Berbasis Website Pada Akademi Farmasi ISFI Banjarmasin.pdf', 4, '9', NULL, NULL, 0),
(94, 'Perancangan Sistem Informasi Pengelolaan Arsip Surat Pada PT.  Abu Walad Tour & Travel', '2018', NULL, 'Taufiq Abrory', NULL, 'Perancangan Sistem Informasi Pengelolaan Arsip Surat Pada PT.  Abu Walad Tour & Travel.png', 'Perancangan Sistem Informasi Pengelolaan Arsip Surat Pada PT.  Abu Walad Tour & Travel.pdf', 4, '9', NULL, NULL, 0),
(95, 'Digitalisasi Sistem Verifikasi Proses Pendaftaran Peserta Lelang Berbasis Web Di Layanan Pengadaan Secara Elektronik (LPSE) Kalimantan Selatan', '2018', NULL, 'Arina Ihda Rahmah Syarifah', NULL, 'Digitalisasi Sistem Verifikasi Proses Pendaftaran Peserta Lelang Berbasis Web Di Layanan Pengadaan Secara Elektronik (LPSE) Kalimantan Selatan.png', 'Digitalisasi Sistem Verifikasi Proses Pendaftaran Peserta Lelang Berbasis Web Di Layanan Pengadaan Secara Elektronik (LPSE) Kalimantan Selatan.pdf', 4, '9', NULL, NULL, 0),
(96, 'Digitalisasi Sistem Pendaftaran Peserta Lelang Berbasis Web Online Di Layanan Pengadaan Secara Elektronik (LPSE) Provinsi Kalimantan Selatan', '2018', NULL, 'Nia Maharani', NULL, 'Digitalisasi Sistem Pendaftaran Peserta Lelang Berbasis Web Online Di Layanan Pengadaan Secara Elektronik (LPSE) Provinsi Kalimantan Selatan.png', 'Digitalisasi Sistem Pendaftaran Peserta Lelang Berbasis Web Online Di Layanan Pengadaan Secara Elektronik (LPSE) Provinsi Kalimantan Selatan.pdf', 4, '9', NULL, NULL, 0),
(97, 'Rancang Bangun Aplikasi Nota Tagih Pelayaran Kapal-Kapal Berbasis Dektsop Pada Stasiun Radio Pantai Distrik Navigasi Kelas II Banjarmasin', '2018', NULL, 'Triana Rifkah', NULL, 'Rancang Bangun Aplikasi Nota Tagih Pelayaran Kapal-Kapal Berbasis Dektsop Pada Stasiun Radio Pantai Distrik Navigasi Kelas II Banjarmasin.png', 'Rancang Bangun Aplikasi Nota Tagih Pelayaran Kapal-Kapal Berbasis Dektsop Pada Stasiun Radio Pantai Distrik Navigasi Kelas II Banjarmasin.pdf', 4, '10', NULL, NULL, 0),
(98, 'Rancang Bangun Aplikasi Pengarsipan Surat Menyurat Berbasis Website Di Dinas Komunikasi Informatika Dan Statistik Kabupaten Tabalong', '2019', NULL, 'Rafif Taufiqurrahman', NULL, 'Rancang Bangun Aplikasi Pengarsipan Surat Menyurat Berbasis Website Di Dinas Komunikasi Informatika Dan Statistik Kabupaten Tabalong.png', 'Rancang Bangun Aplikasi Pengarsipan Surat Menyurat Berbasis Website Di Dinas Komunikasi Informatika Dan Statistik Kabupaten Tabalong.pdf', 4, '9', NULL, NULL, 0),
(99, 'Rancang Bangun Sistem Informasi Pendidikan Berbasis Web Pada SD Santa Maria Banjarmasin', '2018', NULL, 'Gedio Gervin', NULL, 'Rancang Bangun Sistem Informasi Pendidikan Berbasis Web Pada SD Santa Maria Banjarmasin.png', 'Rancang Bangun Sistem Informasi Pendidikan Berbasis Web Pada SD Santa Maria Banjarmasin.pdf', 4, '9', NULL, NULL, 0),
(100, 'Sistem Antrian Dan Pendataan Pasien Di Puskesmas Alalak Tengah Kalimantan Selatan', '2018', NULL, 'Irham Maulani', NULL, 'Sistem Antrian Dan Pendataan Pasien Di Puskesmas Alalak Tengah Kalimantan Selatan.png', 'Sistem Antrian Dan Pendataan Pasien Di Puskesmas Alalak Tengah Kalimantan Selatan.pdf', 4, '9', NULL, NULL, 0),
(101, 'Implementasi Sistem Aplikasi Arsip Berkas Jamaah Berbasis Dekstop PT. Abu Walad Tour & Travel', '2018', NULL, 'Muhammad Khairunanda Pratama', NULL, 'Implementasi Sistem Aplikasi Arsip Berkas Jamaah Berbasis Dekstop PT. Abu Walad Tour & Travel.png', 'Implementasi Sistem Aplikasi Arsip Berkas Jamaah Berbasis Dekstop PT. Abu Walad Tour & Travel.pdf', 4, '10', NULL, NULL, 0),
(103, 'Implementasi Sistem Aplikasi Penerima Nota Dinas (NDS) Menara Suar Berbasis Dekstop Pada Stasiun Radio Pantai Distrik Navigasi II Banjarmasin', '2018', NULL, 'M. Herru Setiawan', NULL, 'Implementasi Sistem Aplikasi Penerima Nota Dinas (NDS) Menara Suar Berbasis Dekstop Pada Stasiun Radio Pantai Distrik Navigasi II Banjarmasin.png', 'Implementasi Sistem Aplikasi Penerima Nota Dinas (NDS) Menara Suar Berbasis Dekstop Pada Stasiun Radio Pantai Distrik Navigasi II Banjarmasin.pdf', 4, '10', NULL, NULL, 0),
(104, 'Sistem Informasi Pengarsipan Surat Di Paud Terpadu Inklusi Nur Ramadhan Berbasis Web', '2019', NULL, 'Yanuary Yulistian Putra', NULL, 'Sistem Informasi Pengarsipan Surat Di Paud Terpadu Inklusi Nur Ramadhan Berbasis Web.png', 'Sistem Informasi Pengarsipan Surat Di Paud Terpadu Inklusi Nur Ramadhan Berbasis Web.pdf', 4, '9', NULL, NULL, 0),
(105, 'Rancang Bangun Aplikasi Laporan Kegiatan Harian Bidang Teknologi Informasi Kepolisian Daerah Kalimantan Tengah', '2018', NULL, 'Agusvia Fikri Budiman', NULL, 'Rancang Bangun Aplikasi Laporan Kegiatan Harian Bidang Teknologi Informasi Kepolisian Daerah Kalimantan Tengah.png', 'Rancang Bangun Aplikasi Laporan Kegiatan Harian Bidang Teknologi Informasi Kepolisian Daerah Kalimantan Tengah.pdf', 4, '9', NULL, NULL, 0),
(106, 'Rancang Bangun Aplikasi Peminjaman Buku Perpustakaan Berbasis Web Di SMP Negeri 19 Banjarmasin', '2018', NULL, 'Nurul Qamariah', NULL, 'Rancang Bangun Aplikasi Peminjaman Buku Perpustakaan Berbasis Web Di SMP Negeri 19 Banjarmasin.png', 'Rancang Bangun Aplikasi Peminjaman Buku Perpustakaan Berbasis Web Di SMP Negeri 19 Banjarmasin.pdf', 4, '9', NULL, NULL, 0),
(107, 'Rancang Bangun Pengarsipan Surat Menyurat Pada Sekolah Dasar Islam Terpadu Al-Firdaus Banjarmasin', '2019', NULL, 'Sugiantoro', NULL, 'Rancang Bangun Pengarsipan Surat Menyurat Pada Sekolah Dasar Islam Terpadu Al-Firdaus Banjarmasin.png', 'Rancang Bangun Pengarsipan Surat Menyurat Pada Sekolah Dasar Islam Terpadu Al-Firdaus Banjarmasin.pdf', 4, '9', NULL, NULL, 0),
(108, 'Redesign Website Program Studi Teknologi Informasi Fakultas Teknik Universitas Lambung Mangkurat Banjarmasin', '2019', NULL, 'Syahrul Alam Suriazdin', NULL, 'Redesign Website Program Studi Teknologi Informasi Fakultas Teknik Universitas Lambung Mangkurat Banjarmasin.png', 'Redesign Website Program Studi Teknologi Informasi Fakultas Teknik Universitas Lambung Mangkurat Banjarmasin.pdf', 4, '9', NULL, NULL, 0),
(109, 'Sistem Informasi Perpustakaan Berbasis Website Pada Perpustakaan Program Studi PGSD FKIP Universitas Lambung Mangkurat', '2019', NULL, 'Sausan Hidayah Nova', NULL, 'Sistem Informasi Perpustakaan Berbasis Website Pada Perpustakaan Program Studi PGSD FKIP Universitas Lambung Mangkurat.png', 'Sistem Informasi Perpustakaan Berbasis Website Pada Perpustakaan Program Studi PGSD FKIP Universitas Lambung Mangkurat.pdf', 4, '9', NULL, NULL, 0),
(110, 'Sistem Pengarsipan Skripsi Dan Laporan Magang Berbasis Website Pada Perpustakaan Fakultas Ilmu Sosial Dan Ilmu Politik Universitas Lambung Mangkurat', '2019', NULL, 'Ahmad Yusuf', NULL, 'Sistem Pengarsipan Skripsi Dan Laporan Magang Berbasis Website Pada Perpustakaan Fakultas Ilmu Sosial Dan Ilmu Politik Universitas Lambung Mangkurat.png', 'Sistem Pengarsipan Skripsi Dan Laporan Magang Berbasis Website Pada Perpustakaan Fakultas Ilmu Sosial Dan Ilmu Politik Universitas Lambung Mangkurat.pdf', 4, '9', NULL, NULL, 0),
(111, 'Perancangan Sistem Informasi Penyusunan Laporan Perjalanan Dinas Berbasis Dekstop Di OMBUDSMAN RI Perwakilan Kalimantan Selatan', '2017', NULL, 'Muhammad Ridho A.G.D', NULL, 'Perancangan Sistem Informasi Penyusunan Laporan Perjalanan Dinas Berbasis Dekstop Di OMBUDSMAN RI Perwakilan Kalimantan Selatan.png', 'Perancangan Sistem Informasi Penyusunan Laporan Perjalanan Dinas Berbasis Dekstop Di OMBUDSMAN RI Perwakilan Kalimantan Selatan.pdf', 4, '10', NULL, NULL, 0),
(112, 'Rancang Bangun Website Profil Perusahaan Dan Galeri Proyek Di CV. Asri Furniture Banjarmasin Kalimantan Selatan', '2019', NULL, 'Winarto Chandra', NULL, 'Rancang Bangun Website Profil Perusahaan Dan Galeri Proyek Di CV. Asri Furniture Banjarmasin Kalimantan Selatan.png', 'Rancang Bangun Website Profil Perusahaan Dan Galeri Proyek Di CV. Asri Furniture Banjarmasin Kalimantan Selatan.pdf', 4, '9', NULL, NULL, 0),
(113, 'Perancangan Sistem Informasi Kedisiplinan Tata Tertib Siswa Berbasis Website Pada SMA Negeri 6 Banjarmasin Provinsi Kalimantan Selatan', '2019', NULL, 'Pandan Rasna', NULL, 'Perancangan Sistem Informasi Kedisiplinan Tata Tertib Siswa Berbasis Website Pada SMA Negeri 6 Banjarmasin Provinsi Kalimantan Selatan.png', 'Perancangan Sistem Informasi Kedisiplinan Tata Tertib Siswa Berbasis Website Pada SMA Negeri 6 Banjarmasin Provinsi Kalimantan Selatan.pdf', 4, '9', NULL, NULL, 0),
(114, 'Rancang Bangun Sistem Informasi Pengelolaan Arsip Surat Berbasis Web Di Akademi Farmasi ISFI Banjarmasin', '2018', NULL, 'Halimah', NULL, 'Rancang Bangun Sistem Informasi Pengelolaan Arsip Surat Berbasis Web Di Akademi Farmasi ISFI Banjarmasin.png', 'Rancang Bangun Sistem Informasi Pengelolaan Arsip Surat Berbasis Web Di Akademi Farmasi ISFI Banjarmasin.pdf', 4, '9', NULL, NULL, 0),
(115, 'Rancang Bangun Aplikasi Heregistrasi Dan Kartu Pelajar Siswa SMA Negeri 3 Banjarmasin Berbasis Web', '2015', NULL, 'Akbar Kurniawan', NULL, 'Rancang Bangun Aplikasi Heregistrasi Dan Kartu Pelajar Siswa SMA Negeri 3 Banjarmasin Berbasis Web.png', 'Rancang Bangun Aplikasi Heregistrasi Dan Kartu Pelajar Siswa SMA Negeri 3 Banjarmasin Berbasis Web.pdf', 4, '9', NULL, NULL, 0),
(116, 'Rancang Bangun Aplikasi Pembuatan Surat Cuti Berbasis Dekstop Di Biro Umum Pemerintah Provinsi Kalimantan Selatan', '2016', NULL, 'Muhammad Nur Rizqan', NULL, 'Rancang Bangun Aplikasi Pembuatan Surat Cuti Berbasis Dekstop Di Biro Umum Pemerintah Provinsi Kalimantan Selatan.png', 'Rancang Bangun Aplikasi Pembuatan Surat Cuti Berbasis Dekstop Di Biro Umum Pemerintah Provinsi Kalimantan Selatan.pdf', 4, '10', NULL, NULL, 0),
(117, 'Sistem Informasi Pengelolaan Dokumen MOU Berbasis Web Di Rektorat Universitas Lambung Mangkurat', '2016', NULL, 'Budi Haryadi', NULL, 'Sistem Informasi Pengelolaan Dokumen MOU Berbasis Web Di Rektorat Universitas Lambung Mangkurat.png', 'Sistem Informasi Pengelolaan Dokumen MOU Berbasis Web Di Rektorat Universitas Lambung Mangkurat.pdf', 4, '9', NULL, NULL, 0),
(118, 'Pembuatan Aplikasi Surat Keterangan Domisili Kelurahan Surgi Mufti Berbasis Dekstop', '2016', NULL, 'Akhmad Rojali', NULL, 'Pembuatan Aplikasi Surat Keterangan Domisili Kelurahan Surgi Mufti Berbasis Dekstop.png', 'Pembuatan Aplikasi Surat Keterangan Domisili Kelurahan Surgi Mufti Berbasis Dekstop.pdf', 4, '10', NULL, NULL, 0),
(119, 'Pembuatan Aplikasi Inventaris Barang Pada SMK Bina Banua Banjarmasin', '2016', NULL, 'M. Adetya Ashari', NULL, 'Pembuatan Aplikasi Inventaris Barang Pada SMK Bina Banua Banjarmasin.png', 'Pembuatan Aplikasi Inventaris Barang Pada SMK Bina Banua Banjarmasin.pdf', 4, '10', NULL, NULL, 0),
(120, 'Implementasi Sistem Aplikasi Pengelolaan Kerja Praktik Berbasis Website Pada Program Studi Teknik Lingkungan Universitas Lambung Mangkurat', '2016', NULL, 'Muhammad Riko Anshori Prasetya', NULL, 'Implementasi Sistem Aplikasi Pengelolaan Kerja Praktik Berbasis Website Pada Program Studi Teknik Lingkungan Universitas Lambung Mangkurat.png', 'Implementasi Sistem Aplikasi Pengelolaan Kerja Praktik Berbasis Website Pada Program Studi Teknik Lingkungan Universitas Lambung Mangkurat.pdf', 4, '9', NULL, NULL, 0),
(121, 'Rancang Bangun Website Program Studi Teknik Lingkungan Fakultas Teknik Banjarbaru Universitas Lambung Mangkurat', '2016', NULL, 'Puja Darmawan', NULL, 'Rancang Bangun Website Program Studi Teknik Lingkungan Fakultas Teknik Banjarbaru Universitas Lambung Mangkurat.png', 'Rancang Bangun Website Program Studi Teknik Lingkungan Fakultas Teknik Banjarbaru Universitas Lambung Mangkurat.pdf', 4, '9', NULL, NULL, 0),
(122, 'Rancang Bangun Sistem Informasi Penjadwalan Dan Manajemen Ruang Perkuliahan Dengan Metode Algoritma Genetika Di Fakultas Teknik UNLAM Banjarbaru', '2016', NULL, 'Syarifah Soraya AL B, Ismi Vidiya, Wenny Puspita, Akbar Kurniawan', NULL, 'Rancang Bangun Sistem Informasi Penjadwalan Dan Manajemen Ruang Perkuliahan Dengan Metode Algoritma Genetika Di Fakultas Teknik UNLAM Banjarbaru.png', 'Rancang Bangun Sistem Informasi Penjadwalan Dan Manajemen Ruang Perkuliahan Dengan Metode Algoritma Genetika Di Fakultas Teknik UNLAM Banjarbaru.pdf', 5, '9', NULL, NULL, 0),
(123, 'Game Edukasi Utuh Si Bekantan (USB) Berbasis Android', '2018', NULL, 'Andi Eriady, Ryan Hidayat, Khair Zuniar Rahman', NULL, 'Game Edukasi Utuh Si Bekantan (USB) Berbasis Android.png', 'Game Edukasi Utuh Si Bekantan (USB) Berbasis Android.pdf', 5, '11', NULL, NULL, 0),
(124, 'Rancang Bangun Dan Implementasi Sistem Informasi Pelepasan Sarjana Fakultas Teknik Universitas Lambung Berbasis Website', '2016', NULL, 'Muhammad Rasyid Ridha', NULL, 'Rancang Bangun Dan Implementasi Sistem Informasi Pelepasan Sarjana Fakultas Teknik Universitas Lambung Berbasis Website.png', 'Rancang Bangun Dan Implementasi Sistem Informasi Pelepasan Sarjana Fakultas Teknik Universitas Lambung Berbasis Website.pdf', 4, '9', NULL, NULL, 0),
(125, 'Sistem Informasi Kurikulum Prodi Dan RPKPS Pada Program Studi Teknik Lingkungan Fakultas Teknik Universitas Lambung Mangkurat', '2016', NULL, 'Muhammad Tamjidi', NULL, 'Sistem Informasi Kurikulum Prodi Dan RPKPS Pada Program Studi Teknik Lingkungan Fakultas Teknik Universitas Lambung Mangkurat.png', 'Sistem Informasi Kurikulum Prodi Dan RPKPS Pada Program Studi Teknik Lingkungan Fakultas Teknik Universitas Lambung Mangkurat.pdf', 4, '9', NULL, NULL, 0),
(126, 'Implementasi Sistem Aplikasi Registrasi Tugas besar Dan Praktikum Berbasis Dekstop Pada Teknik Lingkungan Universitas Lambung Mangkurat (UNLAM) Provinsi Kalimantan Selatan', '2016', NULL, 'Muhammad Sufyan', NULL, 'Implementasi Sistem Aplikasi Registrasi Tugas besar Dan Praktikum Berbasis Dekstop Pada Teknik Lingkungan Universitas Lambung Mangkurat (UNLAM) Provinsi Kalimantan Selatan.png', 'Implementasi Sistem Aplikasi Registrasi Tugas besar Dan Praktikum Berbasis Dekstop Pada Teknik Lingkungan Universitas Lambung Mangkurat (UNLAM) Provinsi Kalimantan Selatan.pdf', 4, '10', NULL, NULL, 0),
(127, 'Implementasi Sistem Aplikasi Pelaporan Kepegawaian Berbasis Dekstop Pada Fakultas Teknik Universitas Lambung Mangkurat', '2016', NULL, 'Fungky Arya', NULL, 'Implementasi Sistem Aplikasi Pelaporan Kepegawaian Berbasis Dekstop Pada Fakultas Teknik Universitas Lambung Mangkurat.png', 'Implementasi Sistem Aplikasi Pelaporan Kepegawaian Berbasis Dekstop Pada Fakultas Teknik Universitas Lambung Mangkurat.pdf', 4, '10', NULL, NULL, 0),
(128, 'Sistem Informasi Pendaftaran Pra Proposal Tugas Akhir Berbasis Web Pada Program Studi Teknik Lingkungan Fakultas Teknik Universitas Lambung Mangkurat', '2016', NULL, 'Ryan Maulana', NULL, 'Sistem Informasi Pendaftaran Pra Proposal Tugas Akhir Berbasis Web Pada Program Studi Teknik Lingkungan Fakultas Teknik Universitas Lambung Mangkurat.png', 'Sistem Informasi Pendaftaran Pra Proposal Tugas Akhir Berbasis Web Pada Program Studi Teknik Lingkungan Fakultas Teknik Universitas Lambung Mangkurat.pdf', 4, '9', NULL, NULL, 0),
(129, 'Support Ticketing System Pada Layanan Pengadaan Secara Elektronik (LSPE) Provinsi Kalimantan Selatan', '2019', NULL, 'Arina Ihda Rahmah Syarifah, Naomi Sekariyanti, Taufiq Abrory, Yohanes Hendro Wicaksono', NULL, 'Support Ticketing System Pada Layanan Pengadaan Secara Elektronik (LSPE) Provinsi Kalimantan Selatan.png', 'Support Ticketing System Pada Layanan Pengadaan Secara Elektronik (LSPE) Provinsi Kalimantan Selatan.pdf', 5, '9', NULL, NULL, 0),
(130, 'Sistem Pendukung Keputusan Penentuan Kesesuaian Jenis Ikan Berdasarkan Kualitas Air Untuk Peningkatan Produksi Akuakultur Secara Intensif Dengan Metode Simple Additive Weighting (SAW)', '2018', NULL, 'Akbar Kurniawan', 'abstrak', 'Sistem Pendukung Keputusan Penentuan Kesesuaian Jenis Ikan Berdasarkan Kualitas Air Untuk Peningkatan Produksi Akuakultur Secara Intensif Dengan Metode Simple Additive Weighting (SAW).png', 'Sistem Pendukung Keputusan Penentuan Kesesuaian Jenis Ikan Berdasarkan Kualitas Air Untuk Peningkatan Produksi Akuakultur Secara Intensif Dengan Metode Simple Additive Weighting (SAW).pdf', 3, '10', NULL, NULL, 0),
(131, 'Prediksi Jumlah Penumpang Pesawat Menggunakan Metode Radial Basis Function-Neural Network (RBF-NN) Dan K-Means', '2019', NULL, 'Ryan Hidayat', 'abstrak', 'Prediksi Jumlah Penumpang Pesawat Menggunakan Metode Radial Basis Function-Neural Network (RBF-NN) Dan K-Means.png', 'Prediksi Jumlah Penumpang Pesawat Menggunakan Metode Radial Basis Function-Neural Network (RBF-NN) Dan K-Means.pdf', 3, '1', NULL, NULL, 0),
(132, 'Evaluasi Kualitas Website Pemerintah Kota Banjarmasin Menggunakan Metode Webqual 4.0 Dan Importance-Performance Analysis (IPA)', '2019', NULL, 'Ismi Vidiya', 'abstrak', 'Evaluasi Kualitas Website Pemerintah Kota Banjarmasin Menggunakan Metode Webqual 4.0 Dan Importance-Performance Analysis (IPA).png', 'Evaluasi Kualitas Website Pemerintah Kota Banjarmasin Menggunakan Metode Webqual 4.0 Dan Importance-Performance Analysis (IPA).pdf', 3, '4', NULL, NULL, 0),
(133, 'Prediksi Penjualan Barang Dengan Metode Fuzzy Mamdani Di CV. Aneka Jaya', '2019', NULL, 'Budi Haryadi', 'abstrak', 'Prediksi Penjualan Barang Dengan Metode Fuzzy Mamdani Di CV. Aneka Jaya.png', 'Prediksi Penjualan Barang Dengan Metode Fuzzy Mamdani Di CV. Aneka Jaya.pdf', 3, '1', NULL, NULL, 0),
(134, 'Perhitungan Jumlah Kendaraan Bergerak Berdasarkan Jenisnya Dengan Metode Gaussian Mixture Model (GMM) Dan Fuzzy Clustering Means (FCM) Berbasis Computer Vision', '2019', NULL, 'Khair Zuniar Rahman', 'abstrak', 'Perhitungan Jumlah Kendaraan Bergerak Berdasarkan Jenisnya Dengan Metode Gaussian Mixture Model (GMM) Dan Fuzzy Clustering Means (FCM) Berbasis Computer Vision.png', 'Perhitungan Jumlah Kendaraan Bergerak Berdasarkan Jenisnya Dengan Metode Gaussian Mixture Model (GMM) Dan Fuzzy Clustering Means (FCM) Berbasis Computer Vision.pdf', 3, '1', NULL, NULL, 0),
(135, 'Prediksi Jumlah Titik Api Pada Lahan Gambut Kalimantan Menggunakan Model Zero-Inflated Poisson Regression', '2021', NULL, 'Nandang Eko Yulianto', 'Perpustakaan Digital Program Studi Teknologi Informasi Universitas Lambung Mangkurat', 'Prediksi Jumlah Titik Api Pada Lahan Gambut Kalimantan Menggunakan Model Zero-Inflated Poisson Regression.png', 'Prediksi Jumlah Titik Api Pada Lahan Gambut Kalimantan Menggunakan Model Zero-Inflated Poisson Regression.pdf', 3, '1', NULL, NULL, 0),
(136, 'Sistem Klasifikasi Ras Kucing Menggunakan Metode Convolution Neural Network', '2021', NULL, 'Yudha Ramadanu', 'Perpustakaan Digital Program Studi Teknologi Informasi Universitas Lambung Mangkurat', 'Sistem Klasifikasi Ras Kucing Menggunakan Metode Convolution Neural Network.png', 'Sistem Klasifikasi Ras Kucing Menggunakan Metode Convolution Neural Network.pdf', 3, '1', NULL, NULL, 0),
(137, 'Evaluasi Usability Dan User Experience (UX) Pada E-Learning Universitas Lambung Mangkurat Menggunakan Model Technique User Experience Evaluation In E-Learning (TUXEL)', '2020', NULL, 'Syarifah Nurul Huda', 'Perpustakaan Digital Program Studi Teknologi Informasi Universitas Lambung Mangkurat', 'Evaluasi Usability Dan User Experience (UX) Pada E-Learning Universitas Lambung Mangkurat Menggunakan Model Technique User Experience Evaluation In E-Learning (TUXEL).png', 'Evaluasi Usability Dan User Experience (UX) Pada E-Learning Universitas Lambung Mangkurat Menggunakan Model Technique User Experience Evaluation In E-Learning (TUXEL).pdf', 3, '5', NULL, NULL, 0),
(138, 'Penerapan Model People At The Center Of Mobile Application Development (PACMAD) Pada Evaluasi Usability Aplikasi Portal Mahasiswa ULM Berbasis Android', '2021', NULL, 'Syahrul Alam Suriazdin', 'Perpustakaan Digital Program Studi Teknologi Informasi Universitas Lambung Mangkurat', 'Penerapan Model People At The Center Of Mobile Application Development (PACMAD) Pada Evaluasi Usability Aplikasi Portal Mahasiswa ULM Berbasis Android.png', 'Penerapan Model People At The Center Of Mobile Application Development (PACMAD) Pada Evaluasi Usability Aplikasi Portal Mahasiswa ULM Berbasis Android.pdf', 3, '5', NULL, NULL, 0),
(139, 'Evaluasi Usability Desain Interface Menggunakan Metode Human-Centered Design Dan Heuristic Evaluation Pada Aplikasi Antrian Online RSUD Ulin', '2020', NULL, 'Pandan Rasna', 'Perpustakaan Digital Program Studi Teknologi Informasi Universitas Lambung Mangkurat', 'Evaluasi Usability Desain Interface Menggunakan Metode Human-Centered Design Dan Heuristic Evaluation Pada Aplikasi Antrian Online RSUD Ulin.png', 'Evaluasi Usability Desain Interface Menggunakan Metode Human-Centered Design Dan Heuristic Evaluation Pada Aplikasi Antrian Online RSUD Ulin.pdf', 3, '5', NULL, NULL, 0),
(140, 'Sistem Pakar Diagnosa Penyakit Mata Terhadap penggunaan Smartphone Pada Anak', '2020', NULL, 'Muhammad Khairunanda Pratama', 'Perpustakaan Digital Program Studi Teknologi Informasi Universitas Lambung Mangkurat', 'Sistem Pakar Diagnosa Penyakit Mata Terhadap penggunaan Smartphone Pada Anak.png', 'Sistem Pakar Diagnosa Penyakit Mata Terhadap penggunaan Smartphone Pada Anak.pdf', 3, '6', NULL, NULL, 0),
(141, 'Klasifikasi Motif Sasirangan Dengan Scale-Invariant Feature Transform (SIFT) Dan Support Vector Machine (SVM)', '2018', NULL, 'Nur Latifah', 'Perpustakaan Digital Program Studi Teknologi Informasi Universitas Lambung Mangkurat', 'Klasifikasi Motif Sasirangan Dengan Scale-Invariant Feature Transform (SIFT) Dan Support Vector Machine (SVM).png', 'Klasifikasi Motif Sasirangan Dengan Scale-Invariant Feature Transform (SIFT) Dan Support Vector Machine (SVM).pdf', 3, '1', NULL, NULL, 0),
(142, 'Evaluasi Kualitas Website Pemerintahan Kota Banjarmasin Menggunakan Metode Webqual 4.0 Dan Importance-Performance Analysis (IPA)', '2019', NULL, 'Ismi Vidiya', 'Perpustakaan Digital Program Studi Teknologi Informasi Universitas Lambung Mangkurat', 'Evaluasi Kualitas Website Pemerintahan Kota Banjarmasin Menggunakan Metode Webqual 4.0 Dan Importance-Performance Analysis (IPA).png', 'Evaluasi Kualitas Website Pemerintahan Kota Banjarmasin Menggunakan Metode Webqual 4.0 Dan Importance-Performance Analysis (IPA).pdf', 3, '5', NULL, NULL, 0),
(143, 'Rancang Bangun Sistem E-Musrenbang Berbasis Web Untuk Banjarmasin', '2020', NULL, 'Yanuari Yulistian Putra, Yudha Ramadhani, Mukarramah, Rizki Noviyanti, Adhika Benu, Adha Akbar', NULL, 'Rancang Bangun Sistem E-Musrenbang Berbasis Web Untuk Banjarmasin.png', 'Rancang Bangun Sistem E-Musrenbang Berbasis Web Untuk Banjarmasin.pdf', 5, '9', NULL, NULL, 0),
(144, 'Rancang Bangun Sistem Informasi Keuangan Berbasis Website Pada Fakultas Teknik Universitas Lambung Mangkurat', '2016', NULL, 'Dewi Rizqia Najipah, Rizky Awlia Fajrin, Novi Rusiana, Firdaus Akmal, Nur Latifah', NULL, 'Rancang Bangun Sistem Informasi Keuangan Berbasis Website Pada Fakultas Teknik Universitas Lambung Mangkurat.png', 'Rancang Bangun Sistem Informasi Keuangan Berbasis Website Pada Fakultas Teknik Universitas Lambung Mangkurat.pdf', 5, '9', NULL, NULL, 0),
(145, 'Sistem Informasi Keanggotaan APAN (Aliansi Pemuda Anti Narkoba) Kalimantan Selatan', '2018', NULL, 'Razak Maulana, Muhammad Arif Rahman, Akhmad Rojali', NULL, 'Sistem Informasi Keanggotaan APAN (Aliansi Pemuda Anti Narkoba) Kalimantan Selatan.png', 'Sistem Informasi Keanggotaan APAN (Aliansi Pemuda Anti Narkoba) Kalimantan Selatan.pdf', 5, '9', NULL, NULL, 0),
(146, 'Sistem Informasi Manajemen Praktikum Di Program Studi Teknik Informatika Fakultas Teknik Universitas Lambung Mangkurat', '2016', NULL, 'M. Riko Anshori P., M. Rasyid Ridha, Ryan Maulana, Muhammad Tamjidi', NULL, 'Sistem Informasi Manajemen Praktikum Di Program Studi Teknik Informatika Fakultas Teknik Universitas Lambung Mangkurat.png', 'Sistem Informasi Manajemen Praktikum Di Program Studi Teknik Informatika Fakultas Teknik Universitas Lambung Mangkurat.pdf', 5, '9', NULL, NULL, 0),
(147, 'Sistem Informasi Surat Di Kelurahan Sungai Andai Berbasis Web', '2017', NULL, 'Greesciano L. B., Reza Fahleffi, Doni Saputra T., Meldy Novandry', NULL, 'Sistem Informasi Surat Di Kelurahan Sungai Andai Berbasis Web.png', 'Sistem Informasi Surat Di Kelurahan Sungai Andai Berbasis Web.pdf', 5, '9', NULL, NULL, 0),
(148, 'Rancang Bangun Aplikasi web Pendaftaran Mahasiswa Praktik Kerja Lapangan (PKL) Pada Dinas Kesehatan Kota Banjarmasin', '2016', NULL, 'Taufik Rahman', NULL, 'Rancang Bangun Aplikasi web Pendaftaran Mahasiswa Praktik Kerja Lapangan (PKL) Pada Dinas Kesehatan Kota Banjarmasin.png', 'Rancang Bangun Aplikasi web Pendaftaran Mahasiswa Praktik Kerja Lapangan (PKL) Pada Dinas Kesehatan Kota Banjarmasin.pdf', 4, '9', NULL, NULL, 0),
(149, 'Rancang Bangun Website SMK Yayasan Pendidikan Teknologi (YPT) Banjarmasin', '2016', NULL, 'Insan Firdaus', NULL, 'Rancang Bangun Website SMK Yayasan Pendidikan Teknologi (YPT) Banjarmasin.png', 'Rancang Bangun Website SMK Yayasan Pendidikan Teknologi (YPT) Banjarmasin.pdf', 4, '9', NULL, NULL, 0),
(150, 'Rancang Bangun Website E-Jurnal Teknologi Informasi Pada Program Studi Teknik Informatika Fakultas teknik Universitas Lambung Mangkurat', '2015', NULL, 'Syarifah Soraya Bahasyim', NULL, 'Rancang Bangun Website E-Jurnal Teknologi Informasi Pada Program Studi Teknik Informatika Fakultas teknik Universitas Lambung Mangkurat.png', 'Rancang Bangun Website E-Jurnal Teknologi Informasi Pada Program Studi Teknik Informatika Fakultas teknik Universitas Lambung Mangkurat.pdf', 4, '9', NULL, NULL, 0),
(151, 'Sistem Informasi Siswa SMK Bina Banua Banjarmasin Berbasis Web', '2017', NULL, 'Nandang Eko Yulianto', NULL, 'Sistem Informasi Siswa SMK Bina Banua Banjarmasin Berbasis Web.png', 'Sistem Informasi Siswa SMK Bina Banua Banjarmasin Berbasis Web.pdf', 4, '9', NULL, NULL, 0),
(152, 'Rancang Bangun Sistem Informasi Benih Bersertifikat Balai Pengawasan Wasan Dan Sertifikasi Benih Tanaman Pangan Dan Hortikultura Provinsi kalimantan Selatan Berbasis Web', '2017', NULL, 'Rizki Noviyanti', NULL, 'Rancang Bangun Sistem Informasi Benih Bersertifikat Balai Pengawasan Wasan Dan Sertifikasi Benih Tanaman Pangan Dan Hortikultura Provinsi kalimantan Selatan Berbasis Web.png', 'Rancang Bangun Sistem Informasi Benih Bersertifikat Balai Pengawasan Wasan Dan Sertifikasi Benih Tanaman Pangan Dan Hortikultura Provinsi kalimantan Selatan Berbasis Web.pdf', 4, '9', NULL, NULL, 0),
(153, 'Rancang Bangun Aplikasi Pengarsipan Surat Menyurat Berbasis Web Bagian Pelayanan Masyarakat Kantor Kecamatan Banjarmasin Timur', '2017', NULL, 'Fahrizal Syahri Ramadhan', NULL, 'Rancang Bangun Aplikasi Pengarsipan Surat Menyurat Berbasis Web Bagian Pelayanan Masyarakat Kantor Kecamatan Banjarmasin Timur.png', 'Rancang Bangun Aplikasi Pengarsipan Surat Menyurat Berbasis Web Bagian Pelayanan Masyarakat Kantor Kecamatan Banjarmasin Timur.pdf', 4, '9', NULL, NULL, 0),
(154, 'Rancang Bangun Aplikasi Arsip Surat Masuk Dan Surat Keluar Berbasis Desktop Pada Sekretariat Badan Koordinasi Penyuluhan Kalimantan Selatan', '2017', NULL, 'Muhammad Reza Anwar', NULL, 'Rancang Bangun Aplikasi Arsip Surat Masuk Dan Surat Keluar Berbasis Desktop Pada Sekretariat Badan Koordinasi Penyuluhan Kalimantan Selatan.png', 'Rancang Bangun Aplikasi Arsip Surat Masuk Dan Surat Keluar Berbasis Desktop Pada Sekretariat Badan Koordinasi Penyuluhan Kalimantan Selatan.pdf', 4, '10', NULL, NULL, 0),
(155, 'Rancang Bangun Sistem Aplikasi Pembuatan Surat Cuti Biro Keuangan Pada Pemerintahan Provinsi Kalimantan Selatan Berbasisi Desktop', '2017', NULL, 'Ryan Hidayat', NULL, 'Rancang Bangun Sistem Aplikasi Pembuatan Surat Cuti Biro Keuangan Pada Pemerintahan Provinsi Kalimantan Selatan Berbasisi Desktop.png', 'Rancang Bangun Sistem Aplikasi Pembuatan Surat Cuti Biro Keuangan Pada Pemerintahan Provinsi Kalimantan Selatan Berbasisi Desktop.pdf', 4, '10', NULL, NULL, 0),
(156, 'Rancang Bangun Website Dinas Pekerjaan Umum Kabupaten Kapuas', '2016', NULL, 'Donny Saputra Tinggam', NULL, 'Rancang Bangun Website Dinas Pekerjaan Umum Kabupaten Kapuas.png', 'Rancang Bangun Website Dinas Pekerjaan Umum Kabupaten Kapuas.pdf', 4, '9', NULL, NULL, 0),
(157, 'Rancang Bangun Website Balai Pengawasan Sertifikasi Benih Tanaman Pangan Dan Hotrikultura Provinsi Kalimantan Selatan', '2016', NULL, 'Ranti Saputri', NULL, 'Rancang Bangun Website Balai Pengawasan Sertifikasi Benih Tanaman Pangan Dan Hotrikultura Provinsi Kalimantan Selatan.png', 'Rancang Bangun Website Balai Pengawasan Sertifikasi Benih Tanaman Pangan Dan Hotrikultura Provinsi Kalimantan Selatan.pdf', 4, '9', NULL, NULL, 0),
(158, 'Rancang Bangun Sistem Informasi Pengelahan Data Jalan Jembatan Pada Dinas Pekerjaan Umum Kabupaten Kapuan Berbasis Web', '2016', NULL, 'Meldy Novandry', NULL, 'Rancang Bangun Sistem Informasi Pengelahan Data Jalan Jembatan Pada Dinas Pekerjaan Umum Kabupaten Kapuan Berbasis Web.png', 'Rancang Bangun Sistem Informasi Pengelahan Data Jalan Jembatan Pada Dinas Pekerjaan Umum Kabupaten Kapuan Berbasis Web.pdf', 4, '9', NULL, NULL, 0),
(159, 'Rancang Bangun Sistem Informasi Kegiatan Organisasi Mahasiswa berbasis Web Di Fakultas teknik Universitas Lambung Mangkurat', '2016', NULL, 'Khair Zuniar Rahman', NULL, 'Rancang Bangun Sistem Informasi Kegiatan Organisasi Mahasiswa berbasis Web Di Fakultas teknik Universitas Lambung Mangkurat.png', 'Rancang Bangun Sistem Informasi Kegiatan Organisasi Mahasiswa berbasis Web Di Fakultas teknik Universitas Lambung Mangkurat.pdf', 4, '9', NULL, NULL, 0),
(160, 'Rancang Bangun Aplikasi Inventaris Barang  Berbasis Desktop Di SMK TPY', '2016', NULL, 'Akhmad Rivaldy', NULL, 'Rancang Bangun Aplikasi Inventaris Barang  Berbasis Desktop Di SMK TPY.png', 'Rancang Bangun Aplikasi Inventaris Barang  Berbasis Desktop Di SMK TPY.pdf', 4, '10', NULL, NULL, 0),
(161, 'Rancang Bangun Sistem Informasi Pendataan Peserta Pelatihan Berbasis Web Pada Balai Teknologi Informasi Dan Komunikasi Pendidikan Provinsi Kalimantan Selatan', '2016', NULL, 'Andi Eriady', NULL, 'Rancang Bangun Sistem Informasi Pendataan Peserta Pelatihan Berbasis Web Pada Balai Teknologi Informasi Dan Komunikasi Pendidikan Provinsi Kalimantan Selatan.png', 'Rancang Bangun Sistem Informasi Pendataan Peserta Pelatihan Berbasis Web Pada Balai Teknologi Informasi Dan Komunikasi Pendidikan Provinsi Kalimantan Selatan.pdf', 4, '9', NULL, NULL, 0),
(162, 'Rancang Bangun Aplikasi Pengarsipan Surat Unit Layanan Pengadaan Secara Elektronik (LPSE) Provinsi Kalimantan Selatan Berbasis Web', '2016', NULL, 'Ahmad Khoiril Anwar', NULL, 'Rancang Bangun Aplikasi Pengarsipan Surat Unit Layanan Pengadaan Secara Elektronik (LPSE) Provinsi Kalimantan Selatan Berbasis Web.png', 'Rancang Bangun Aplikasi Pengarsipan Surat Unit Layanan Pengadaan Secara Elektronik (LPSE) Provinsi Kalimantan Selatan Berbasis Web.pdf', 4, '10', NULL, NULL, 0),
(163, 'Sistem Informasi Pendataan Pra Proposal tugas Akhir Berbasis Web Pada program Studi Teknik Lingkungan Fakultas Teknik Universitas Lambung Mangkurat', '2016', NULL, 'Ryan Maulana', NULL, 'Sistem Informasi Pendataan Pra Proposal tugas Akhir Berbasis Web Pada program Studi Teknik Lingkungan Fakultas Teknik Universitas Lambung Mangkurat.png', 'Sistem Informasi Pendataan Pra Proposal tugas Akhir Berbasis Web Pada program Studi Teknik Lingkungan Fakultas Teknik Universitas Lambung Mangkurat.pdf', 4, '9', NULL, NULL, 0),
(164, 'Rancang Bangun Dan Implementasi Sistem Informasi Pelepasan Sarjana Fakultas Teknik Universitas Lambung Mangkurat Berbasis Website', '2016', NULL, 'Muhammad Rasyid Ridha', NULL, 'Rancang Bangun Dan Implementasi Sistem Informasi Pelepasan Sarjana Fakultas Teknik Universitas Lambung Mangkurat Berbasis Website.png', 'Rancang Bangun Dan Implementasi Sistem Informasi Pelepasan Sarjana Fakultas Teknik Universitas Lambung Mangkurat Berbasis Website.pdf', 4, '9', NULL, NULL, 0),
(165, 'PENGELOMPOKAN TOPIK DOKUMEN BERBASIS TEXT MINING DENGAN ALGORITME K-MEANS: STUDI KASUS PADA DOKUMEN  KEDUTAAN BESAR AUSTRALIA JAKARTA', '2019', 'Visi Pustaka', 'Wishnu Hardi, M.P., Dr. Eng. Wisnu Ananta Kusuma, Prof. Dr. Sulistyo Basuki', 'Kedutaan Besar Australia di Jakarta menyimpan beragam dokumen rilis media. Menganalisis koleksi \r\ndokumen yang berpola khusus dan vital sangatlah penting untuk menghasilkan wawasan baru dan \r\npengetahuan tentang kelompok topik penting dari dokumen. K-Means digunakan sebagai metode \r\npengelompokan data non-hirarkis objek data menjadi klaster. Metode ini bekerja dengan \r\nmeminimalkan variasi data di dalam klaster dan memaksimalkan variasi data di antara klaster. Dari \r\ndokumen yang dikeluarkan antara 2006 dan 2016, 839 dokumen diperiksa untuk menentukan \r\nfrekuensi jangka dan untuk menghasilkan klaster. Evaluasi dilakukan dengan menunjuk seorang ahli \r\nuntuk memvalidasi hasil klaster. Hasil penelitian menunjukkan bahwa ada 57 istilah bermakna yang \r\ndikelompokkan menjadi 3 kelompok. “Hubungan orang-orang”, “kerja sama ekonomi”, dan \r\n“pembangunan manusia” dipilih untuk mewakili topik rilis media Kedutaan Besar Australia Jakarta dari \r\ntahun 2006 hingga 2016. Penelitian ini menyimpulkan bahwa text mining dapat digunakan untuk \r\nmengelompokkan topik dokumen. Ini memberikan proses pengelompokan yang lebih sistematis \r\nkarena analisis teks dilakukan melalui sejumlah tahapan dengan parameter yang ditetapkan secara \r\nkhusus.', NULL, 'PENGELOMPOKAN TOPIK DOKUMEN BERBASIS TEXT MINING DENGAN ALGORITME K-MEANS: STUDI KASUS PADA DOKUMEN  KEDUTAAN BESAR AUSTRALIA JAKARTA.pdf', 2, '1', NULL, NULL, 0),
(166, 'Pembuatan Aplikasi Surat Keterangan Domisili Keluarahan Surgi Mufti Berbasis Desktop', '2016', NULL, 'Akhmad Rojali', NULL, 'Pembuatan Aplikasi Surat Keterangan Domisili Keluarahan Surgi Mufti Berbasis Desktop.png', 'Pembuatan Aplikasi Surat Keterangan Domisili Keluarahan Surgi Mufti Berbasis Desktop.pdf', 4, '10', NULL, NULL, 0),
(167, 'Sistem Pakar Diagnosa Jenis Gangguan Jiwa Skizofrenia menggunakan Kombinasi Metode Forward Chaining Dan Certainty Factor', '2018', NULL, 'Ryan Maulana', 'Perpustakaan Digital Program Studi Teknologi Informasi Universitas Lambung Mangkurat', 'Sistem Pakar Diagnosa Jenis Gangguan Jiwa Skizofrenia menggunakan Kombinasi Metode Forward Chaining Dan Certainty Factor.png', 'Sistem Pakar Diagnosa Jenis Gangguan Jiwa Skizofrenia menggunakan Kombinasi Metode Forward Chaining Dan Certainty Factor.pdf', 3, '6', NULL, NULL, 0),
(168, 'Penerapan Metode Demster Shafer pada Sistem Pakar Untuk Mendeteksi Jenis Perilaku Abnormal ADHD (Attention Deficit Hyperactivity Disorder) Pada Anaka Berbasis Android', '2018', NULL, 'Puja Darmawan', 'Perpustakaan Digital Program Studi Teknologi Informasi Universitas Lambung Mangkurat', 'Penerapan Metode Demster Shafer pada Sistem Pakar Untuk Mendeteksi Jenis Perilaku Abnormal ADHD (Attention Deficit Hyperactivity Disorder) Pada Anaka Berbasis Android.png', 'Penerapan Metode Demster Shafer pada Sistem Pakar Untuk Mendeteksi Jenis Perilaku Abnormal ADHD (Attention Deficit Hyperactivity Disorder) Pada Anaka Berbasis Android.pdf', 3, '10', NULL, NULL, 0),
(169, 'PENERAPAN DATA MINING UNTUK ANALISIS POLA  PEMBELIAN KONSUMEN DENGAN ALGORITMA FPGROWTH PADA DATA TRANSAKSI PENJUALAN  SPARE PART MOTOR', '2018', 'Kumpulan jurnaL Ilmu Komputer (KLIK)', 'Alfannisa Annurullah Fajrin, Algifanri Maulana', 'The company has many branch or dealer as CV. This new TJAHAJA, requires\r\nlocations that must be considered in setting up a new branch, should be able to\r\ninfluence consumer purchasing patterns, because the pattern of purchase every consumer is\r\ndifferent – different. This needs to be analyzed further so that it can yield useful information, \r\nas well as maximize the benefits to be gained. Data Mining can be usedby large companies to \r\ndig up the data to get information that can support and improve the business processes of the \r\ncompany. Then in this research done testing with FP-Growth algorithm to help \r\ncompanies figure out the pattern of consumer purchase transactions and sales of spare parts.', NULL, 'PENERAPAN DATA MINING UNTUK ANALISIS POLA  PEMBELIAN KONSUMEN DENGAN ALGORITMA FPGROWTH PADA DATA TRANSAKSI PENJUALAN  SPARE PART MOTOR.pdf', 2, '1', NULL, NULL, 0),
(170, 'IMPLEMENTASI DATA MINING UNTUK PENGATURAN LAYOUT  MINIMARKET DENGAN MENERAPKAN ASSOCIATION RULE', '2017', 'Jurnal Riset Komputer (JURIKOM)', 'Maharani1 , Nelly Astuti Hasibuan, Natalia Silalahi, Surya Darma Nasution, Mesran, Suginam,  Dian U Sutiksno, Heri Nurdiyanto, Efori Buulolo, Yuhandri', 'Istilah data mining sudah berkembang jauh dalam mengadaptasi setiap bentuk analisa data, penelitian ini berupaya \r\nmengembangkan strategi bisnis penyusunan layout produk yang disesuaikan dengan pola pembelian pelanggan di indomaret. \r\nSalah satu teknik data mining yang digunakan untuk merancang strategi penyusunan layout produk yang efektif dengan \r\nmemanfaatkan data transaksi penjualan yang telah tersedia di perusahaan dengan menggunakan metode association rule. \r\nTeknik ini dapat menemukan pola berupa produk-produk yang sering dibeli secara bersamaan. Penelitian ini bertujan untuk \r\nmenerapkan associstion rule kedalam penyusunan layout produk. Dari rule yang dihasilkan harapkan dapat membantu \r\nperusahaan memudahkan dalam penyusunan layout produk.', NULL, 'IMPLEMENTASI DATA MINING UNTUK PENGATURAN LAYOUT  MINIMARKET DENGAN MENERAPKAN ASSOCIATION RULE.pdf', 2, '1', NULL, NULL, 0),
(171, 'DATA MINING UNTUK MEMPREDIKSI PRESTASI SISWA  BERDASARKAN SOSIAL EKONOMI, MOTIVASI, KEDISIPLINAN  DAN PRESTASI MASA LALU', '2014', 'DATA MINING UNTUK MEMPREDIKSI PRESTASI SISWA  BERDASARKAN SOSIAL EKONOMI, MOTIVASI, KEDISIPLINAN  DAN PRESTASI MASA LALU', 'Heri Susanto, Sudiyatno', 'Penelitian ini bertujuan untuk membuat prediksi prestasi belajar siswa berdasarkan status sosial \r\nekonomi orang tua, motivasi, kedisiplinan siswa dan prestasi masa lalu menggunakan metode \r\ndata mining dengan algoritma J48. Sebagai perbandingan, data penelitian dianalisis juga dengan \r\nCHAID (Chi Squared Automatic Interaction Detection) dan regresi ganda. Pendekatan penelitian \r\nyang digunakan adalah kuantitatif. Subyek penelitian ini adalah siswa tingkat X SMK Negeri 4 \r\nSurakarta berjumlah 416 siswa. Teknik pengumpulan data yang digunakan adalah dokumentasi dan \r\nangket. Hasil penelitian menunjukkan bahwa analisis prediksi menggunakan decision tree algoritma \r\nJ48 memiliki akurasi sebesar 95,7%, sedangkan analisis prediksi menggunakan CHAID memiliki \r\ntingat akurasi 82,1% dan analisis regresi ganda menghasilkan tingkat signifikansi sebesar 90,6%. \r\nBerdasarkan hasil tersebut bisa disimpulkan bahwa metode J48 lebih baik dibandingkan dengan \r\nmetode CHAID dan regresi ganda.', NULL, 'DATA MINING UNTUK MEMPREDIKSI PRESTASI SISWA  BERDASARKAN SOSIAL EKONOMI, MOTIVASI, KEDISIPLINAN  DAN PRESTASI MASA LALU.pdf', 2, '1', NULL, NULL, 0),
(173, 'IMPLEMENTASI ALGORITMA K-MEANS UNTUK PENGELOMPOKKAN PENYAKIT  PASIEN PADA PUSKESMAS KAJEN PEKALONGAN', '2016', 'JURNAL TRANSFORMATIKA', 'Anindya Khrisna Wardhani', 'Abstract - In determining the consistency of \r\nhealth data, can use data mining techniques that \r\ncan dig the hidden information from \r\nmultidimensional data sets that have been \r\nobtained. In addition, data wich connected with \r\nother data can also be done by these data mining \r\ntechniques. One of the data mining techniques is \r\nquite well known namely clustering. The methods \r\nare quite popular in data mining techniques that \r\ncalled k-means method. It is used to facilitate \r\nmedical recorder for analyzing the general health \r\nsituation of population groups in archiving health \r\ncare data. The results of this analysis, the \r\nclustering of the disease based on age, sex, \r\nduration of disease and disease diagnosis.This \r\nresearch used tool Rapid Miner 5.3.Based on the \r\ndata from clinic centers Kajen Pekalongan, the \r\nresult of clustering is 376 items of acute and 624 \r\nunacute diseases from 1000 total of data.', NULL, 'IMPLEMENTASI ALGORITMA K-MEANS UNTUK PENGELOMPOKKAN PENYAKIT  PASIEN PADA PUSKESMAS KAJEN PEKALONGAN.pdf', 2, '1', NULL, NULL, 0),
(174, 'DATA WAREHOUSE, DATA MINING DAN KONSEP CROSS-SELLING  PADA ANALISIS PENJUALAN PRODUK', '2015', 'International Journal of Advanced Engineering, Management and Science (IJAEMS)', 'Asmita Singh, Anchal Pokharana', '—This paper has discussed various issues and \r\nsecurity primitives like Spatial Data Handing, Privacy \r\nProtection of data, Data Load Balancing, Resource Mining \r\netc. in the area of Data Mining.A 5-stage review process has \r\nbeen conductedfor 30 research papers which were published \r\nin the period of year ranging from 1996 to year 2013. After \r\nan exhaustive review process, nine key issues were found \r\n“Spatial Data Handing, Data Load Balancing, Resource \r\nMining ,Visual Data Mining, Data Clusters Mining, Privacy \r\nPreservation, Mining of gaps between business tools & \r\npatterns, Mining of hidden complex patterns.” which have \r\nbeen resolved and explained with proper methodologies. \r\nSeveral solution approaches have been discussed in the 30 \r\npapers. This paper provides an outcome of the review which \r\nis in the form of various findings, found under various key \r\nissues. The findings included algorithms and methodologies \r\nused by researchers along with their strengths and \r\nweaknesses and the scope for the future work in the area.', NULL, 'DATA WAREHOUSE, DATA MINING DAN KONSEP CROSS-SELLING  PADA ANALISIS PENJUALAN PRODUK.pdf', 2, '1', NULL, NULL, 0),
(175, 'A Survey of Data Mining Tasks', '2018', 'International Journal of New Technology and Research (IJNTR)', 'International Journal of New Technology and Research (IJNTR)', 'Data Mining is the process of discovering patterns in \r\nlarge data sets and establish relationships to solve problems \r\nthrough data analysis. The main goal of data mining is to \r\nidentify patterns and to transform them into a more \r\nunderstandable structure for further analysis. Data mining \r\nprocess pares the overall task of finding patterns from data into \r\na set of well defined subtasks. Data mining uses sophisticated \r\nalgorithms to find patterns and evaluate the possibility of a \r\nfuture event. There are fundamentally different types of tasks \r\nthese algorithms address. In this paper we make an effort to \r\nbriefly explain these funadamental tasks .', NULL, 'A Survey of Data Mining Tasks.pdf', 2, '1', NULL, NULL, 0),
(176, 'A REVIEW PAPER ON BIG DATA AND DATA  MINING', '2018', '(IJID) International Journal on Informatics for Development', 'Prasdika F.B.S, Dr. Bambang Sugiantoro, S.Si., M.T', 'In the digital era like today the growth of data in the \r\ndatabase is very rapid, all things related to technology have a large \r\ncontribution to data growth as well as social media, financial \r\ntechnology and scientific data. Therefore, topics such as big data \r\nand data mining are topics that are often discussed. Data mining is \r\na method of extracting information through from big data to \r\nproduce an information pattern or data anomaly.', NULL, 'A REVIEW PAPER ON BIG DATA AND DATA  MINING.pdf', 2, '1', NULL, NULL, 0),
(177, 'IMPLEMENTASI ALGORITMA DATA MINING NAIVE BAYES  PADA KOPERASI', '2018', 'J-ICON', 'Emerensye S. Y. Pandie', 'Salah satu faktor kegagalan dalam bidang usaha perkreditan yaitu kurang akuratnya penilaian \r\nterhadap kemampuan debitur, sehingga mengakibatkan kesalahan dalam keputusan pemberian kredit \r\nyang berujung pada kemacetan kredit. Teknik data mining dapat digunakan untuk menilai kemampuan \r\nnasabah berdasarkan data-data masa lalu. Data debitur yang telah melalui tahapan data mining \r\nselanjutnya diproses menggunakan algoritma data mining Naive Bayes. Naive Bayes merupakan teknik \r\nprediksi berbasis probabilistik sederhana berbasis pada penerapan aturan bayes. Implementasi \r\nmenggunakan Weka 3.8 dengan jumlah data 3018 record menghasilkan tingkat kebenaran sebesar 94 %.', NULL, 'IMPLEMENTASI ALGORITMA DATA MINING NAIVE BAYES  PADA KOPERASI.pdf', 2, '1', NULL, NULL, 0);
INSERT INTO `bacaan` (`id_bacaan`, `judul`, `tahun`, `penerbit`, `penulis`, `abstrak`, `sampul`, `file`, `kategori_id`, `topik_id`, `upload_by`, `upload_admin`, `id_akses`) VALUES
(178, 'Perbandingan Kinerja Tool Data Mining Weka  dan Rapidminer Dalam Algoritma Klasifikasi', '2019', 'TEKNIKA', 'Mochammad Faid, Moh. Jasri, dan Titasari Rahmawati', '– Data mining merupakan ilmu yang membahas \r\ntentang bagaimana menambang pengetahuan dari sebuah data. \r\nKlasifikasi merupakan salah satu bagian dari data mining. \r\nAlgoritma klasifikasi dalam data mining bermacam-macam \r\nmodel. Karena setiap model yang ada di algoritma klasifikasi \r\ntidak sama, maka akurasinya tentu akan berubah. Untuk \r\nmengetahui baik tidaknya sebuah algoritma klasifikasi, \r\nindikatornya adalah tingkat akurasi. Dengan perhitunganperhitungan yang rumit dan membutuhkan waktu yang sangat \r\nlama, diciptakan sebuah tools data mining sehingga proses dan \r\npengolahan data mining lebih mudah. Tools data mining dalam \r\npenelitian ini menggunakan Weka dan Rapidminer. Adapun \r\ntujuan dari penelitian ini adalah untuk mengetahui kinerja dari \r\ntools data mining Weka dan Rapidminer.', NULL, 'Perbandingan Kinerja Tool Data Mining Weka  dan Rapidminer Dalam Algoritma Klasifikasi.pdf', 2, '1', NULL, NULL, 0),
(179, 'Memanfaatkan Algoritma K-Means Dalam Memetakan Potensi Hasil  Produksi Kelapa Sawit PTPN IV Marihat', '2021', 'BIOS : Jurnal Teknologi Informasi dan Rekayasa Komputer', 'Deny Franata Pasaribu, Irfan Sudahri Damanik, Eka Irawan, Suhada, Heru Satria Tambunan', 'Berdasarkan data hasil produksi buah sawit di PTPN IV Marihat \r\nmenampilkan beberapa Lokasi dengan hasil panen buah yang bervariasi \r\njumlahnya. Untuk itu diperlukan pengelompokan lokasi potensial penghasil \r\nbuah untuk mengetahuni lokasi mana saja yang menghasilkan buah sawit \r\ndengan jumlah banyak ataupun sedikit. Pembagian hasil produksi biasanya \r\ndilakukan berdasarkan loaksi atau blok panen buah kelapa sawit. Oleh karena \r\nitu, dibutuhkan metode untuk memudahkan dalam pengelompokan lokasi \r\npenghasil buah. Dengan pendekatan pengklasteran K-Means, pembagian \r\nkelompok lokasi dapat dilakukan berdasarkan luas panen (Ha), realisasi \r\nproduksi (kg) dan tahun panen. Pada penelitian ini dilakukan pengklasteran \r\ndaerah potensial penghasil buah menggunakan algoritma K-Means. Dengan \r\nmenggunakan K-Means bertujuan dalam memudahkan pengelompokan suatu \r\nblok dengan hasil produksi buah banyak, dan rendah. Hasil dari penelitian ini \r\ndidapakan C1 (tertinggi) ialah 14 data Blok Panen, dan C2 (terendah) ialah 11 \r\ndata Blok Panen.', NULL, 'Memanfaatkan Algoritma K-Means Dalam Memetakan Potensi Hasil  Produksi Kelapa Sawit PTPN IV Marihat.pdf', 2, '1', NULL, NULL, 0),
(180, 'Penerapan Algoritma K-Means dalam Mengelompokkan Balita yang  Mengalami Gizi Buruk Menurut Provinsi', '2021', 'BIOS : Jurnal Teknologi Informasi dan Rekayasa Komputer', 'Muhammad Dwi Chandra, Eka Irawan, Ilham Syahputra Saragih, Agus Perdana Windarto,  Dedi Suhendro', 'Tujuan penelitian ini adalah untuk mencluctering balita yang mengalami gizi buruk menurut Provinsi. Sumber data penelitian yang digunakan diperoleh dari BPS. Adapun variabel yang digunakan adalah balita yang mengalami gizi buruk menurut Provinsi. Pada Penelitian ini menggunakan Teknik Data Mining dengan menggunakan algoritma K-means. Diharapkan hasil penelitian ini dapat memberikan masukan kepada pihak pemerintah pusat agar lebih memperhatikan asupan gizi pada balita, sehingga dapat meningkatkan pertumbuhan dan perkembangan balita yang ada di Indonesia. Dan data yang diperoleh cluster tinggi ada 15 Provinsi yaitu (Aceh, Sumatera Utara, Nusa Tenggara Barat, Nusa Tenggara Timur, Kalimantan Barat, kalimantan Tengah, Kalimantan Selatan, Sulawesi Tengah, Sulawesi Selatan, Sulawesi Tenggara, Sulawesi Tenggara, Gorontalo, Sulawesi Barat, Papua Barat, Papua), dan cluster rendah ada 19 yaitu (Sumatera Barat, Riau, Jambi, Sumatera \r\nSelatan, Bengkulu, Lampung, Kep. Bangka Belitung, Kep. Riau, Dki Jakarta, Jawa Barat, Jawa Tengah, DI Yogyakarta, Jawa Timur, Banten, Bali, Kalimantan Timur, Kalimantan Utara, Sulawesi utara, Maluku Utara).', NULL, 'Penerapan Algoritma K-Means dalam Mengelompokkan Balita yang  Mengalami Gizi Buruk Menurut Provinsi.pdf', 2, '1', NULL, NULL, 0),
(181, 'APLIKASI DATA MINING  UNTUK MENAMPILKAN INFORMASI  TINGKAT KELULUSAN MAHASISWA', '2014', 'JURNAL INFORMATIKA', 'Yuli Asriningtias, Rodhyah Mardhiyah', 'Perguruan tinggi dituntut memiliki keunggulan bersaing dengan memanfaatkan sumber dayanya, termasuk sumber daya manusia dalam hal ini adalah mahasiswa.Tidak semua mahasiswa dapat menyelesaikan study tepat waktu, disamping IPK yang beragam. Lama waktu mahasiswa dalam menempuh studi dan IPK menjadi salah satu faktor tingkat keunggulan sebuah Perguruan Tinggi. Nilai potensi tersebut dapat digali menggunakan teknik data mining.Data mining adalah kegiatan menemukan pola yang menarik dari data dalam jumlah besar, data dapat disimpan dalam database, data warehouse, atau penyimpanan informasi lainnya. Data warehouse merupakan penyimpanan data yang berorientasi objek, terintegrasi, mempunyai variant waktu, dan menyimpan data dalam bentuk nonvolatile sebagai pendukung manejemen dalam proses pengambilan keputusan. Penelitian ini dikembangkan dengan cara menscan data pada database secara \r\nlangsung sehingga menghasilkan informasi yag dibutuhkan. Aplikasi data mining ini dibangun menggunakan bahasa pemrograman Borland Delphi 7 dan menggunakan database SQL Server 2000 sebagai media penyimpan data. Hasil dari penelitian bahwa dapat diketahui tingkat ketepatan waktu dan nilai kelulusan mahasiswa yang berelasi dengan atribut data masuk mahasiswa.', NULL, 'APLIKASI DATA MINING  UNTUK MENAMPILKAN INFORMASI  TINGKAT KELULUSAN MAHASISWA.pdf', 2, '1', NULL, NULL, 0),
(182, 'Evaluating a game-development approach to teach  introductory programming concepts in secondary  education', '2020', 'Int. J. Technology Enhanced Learning', 'Stamatios Papadakis', 'Owing to the development of multimedia and computer technologies, \r\nmany scholars have attempted to employ digital learning content to improve \r\nstudents’ learning motivation and learning achievement in CS courses. In this \r\npedagogical design, students interact and create their own content related to \r\ncurricular areas with several advantages, such as motivation, fun, commitment, \r\nand enthusiasm, showing improvements related to computational thinking and \r\ncomputational practices. The purpose of the present study is to evaluate \r\nthe combined use of App Inventor and a game-development approach in \r\nschool lessons, as an example of constructionist learning in an introductory \r\nprogramming course for novices. This study was conducted in a public \r\nsecondary school in Greece. It used a quasi-experimental control group design. \r\nThe results of the study showed that the combined use of App Inventor \r\nprogramming environment and a game development approach has a positive \r\neffect on students’ basic programming skills achievements and motivation in a \r\nCS course.', NULL, 'Evaluating a game-development approach to teach  introductory programming concepts in secondary  education.pdf', 2, '11', NULL, NULL, 0),
(183, 'Game Analytics Evidence-Based Evaluation of  a Learning Game for Intellectual Disabled Users', '2019', 'IEEE Access', 'Ana Rus Cano, Álvaro García-Tejedor , Cristina Alonso-Fernández and Baltasar  Fernández-Manjón1, Senior Member, IEEE', 'Learning games are becoming popular among teachers as educational tools. However, despite \r\nall the game development quality processes (e.g., beta testing), there is no total assurance about the game \r\ndesign appropriateness to the students’ cognitive skills until the games are used in the classroom. \r\nFurthermore, games designed specifically for Intellectual Disabled (ID) users are even harder to evaluate \r\nbecause of the communication issues that this type of players have. ID users’ feedback about their learning \r\nexperience is complex to obtain and not always fully reliable. To address this problem, we use an evidencebased approach for evaluating the game design of Downtown, A Subway Adventure, a game created to \r\nimprove independent living in users with ID. In this paper we exemplify the whole process of applying \r\nGame Analytics techniques to gather actual users’ gameplay interaction data in real settings for evaluating\r\nthe design. Following this process, researchers were able to validate different game aspects (e.g.,\r\nmechanics) and could also identify game flaws that may be difficult to detect using formative evaluation or \r\nother observational-based methods. Results showed that the proposed evidence-based approach using Game \r\nAnalytics information is an effective way to evaluate both the game design and the implementation, \r\nespecially in situations where other types of evaluations that require users’ involvement are limited.', NULL, 'Game Analytics Evidence-Based Evaluation of  a Learning Game for Intellectual Disabled Users.pdf', 2, '11', NULL, NULL, 0),
(184, 'Emulating Human Play in a Leading Mobile Card Game', '2018', 'IEEE TRANSACTIONS ON COMPUTATIONAL INTELLIGENCE AND AI IN GAMES', 'Hendrik Baier, Adam Sattaur, Edward J. Powley, Sam Devlin, Jeff Rollason, and Peter I. Cowling,', 'Monte Carlo Tree Search (MCTS) has\r\nbecome a popular solution for game AI, capable of\r\ncreating strong game playing opponents. However, the\r\nemergent playstyle of agents using MCTS is not necessarily human-like, believable or enjoyable. AI Factory\r\nSpades, currently the top rated Spades game in the\r\nGoogle Play store, uses a variant of MCTS to control\r\nAI allies and opponents. In collaboration with the\r\ndevelopers, we showed in a previous study that the\r\nplaystyle of human players significantly differed from\r\nthat of the AI players [1]. This article presents a method\r\nfor player modelling using gameplay data and neural\r\nnetworks that does not require domain knowledge, and\r\na method of biasing MCTS with such a player model to\r\ncreate Spades playing agents that emulate human play\r\nwhilst maintaining strong, competitive performance.\r\nThe methods of player modelling and biasing MCTS\r\npresented in this study are applied to the commercial\r\ncodebase of AI Factory Spades, and are transferable\r\nto MCTS implementations for discrete-action games\r\nwhere relevant gameplay data is available.', NULL, 'Emulating Human Play in a Leading Mobile Card Game.pdf', 2, '11', NULL, NULL, 0),
(185, 'Unity Game Development  Essentials', '2009', 'Packt Publishing Ltd', 'Will Goldstone', '-', NULL, 'Unity Game Development  Essentials.pdf', 1, '11', NULL, NULL, 0),
(186, 'An Analytic and Psychometric Evaluation of Dynamic Game Adaption for Increasing Session-Level Retention in Casual Games', '2015', 'IEEE TRANSACTIONS ON COMPUTATIONAL INTELLIGENCE AND AI IN GAMES', 'Brent Harrison and David L. Roberts', 'This paper shows how game analytics can be used\r\nto dynamically adapt casual game environments in order to increase session-level retention. Our technique involves using game\r\nanalytics to create an abstracted game analytic space to make the\r\nproblem tractable. We then model player retention in this space\r\nand use these models to make guided changes to game analytics in\r\norder to bring about a targeted distribution of game states that will,\r\nin turn, influence player behavior. Experiments performed showed\r\nthat the adaptive versions of two different casual games, Scrabblesque and Sidequest: The Game, were able to better fit a target distribution of game states while also significantly reducing the quitting rate compared to the nonadaptive version of the games. We\r\nshowed that these gains were not coming at the cost of player experience by performing a psychometric evaluation in which we measured player intrinsic motivation and engagement with the game\r\nenvironments. In both cases, we showed that players playing the\r\nadaptive version of the games reported higher intrinsic motivation\r\nand engagement scores than players playing the nonadaptive version of the games.', NULL, 'An Analytic and Psychometric Evaluation of Dynamic Game Adaption for Increasing Session-Level Retention in Casual Games.pdf', 2, '11', NULL, NULL, 0),
(187, 'Game object model version II: a theoretical framework for educational game development', '2006', 'Association for Educational Communications and Technology', 'Alan Amory', 'Complex computer and video games may provide a vehicle, based\r\non appropriate theoretical concepts, to transform the educational landscape.\r\nBuilding on the original game object model (GOM) a new more detailed\r\nmodel is developed to support concepts that educational computer games\r\nshould: be relevant, explorative, emotive, engaging, and include complex\r\nchallenges; support authentic learning activities that are designed as narrative\r\nsocial spaces where learners are transformed through exploration of multiple\r\nrepresentation, and reflection; be gender-inclusive, include non-confrontational outcomes, and provide appropriate role models; develop democracy,\r\nand social capital through dialogue that is supported by means of computer\r\nmediated-communication tools; and include challenges, puzzles or quests,\r\nwhich form the core of the learning process, where access to explicit knowledge, conversations, and reflection results in the construction of tacit knowledge. It is argued that the GOM version II can be used not only to support the\r\ndevelopment of educational computer games but to provide a mechanism to\r\nevaluate the use of computer games in the classroom.', NULL, 'Game object model version II: a theoretical framework for educational game development.pdf', 2, '11', NULL, NULL, 0),
(188, 'Describing, organizing, and maintaining video game development artifacts', '2020', 'Jasist Wiley', 'Claire McDonald,Marc Schmalz,Allee Monheim,Stephen Keating,Kelsey Lewin,Frank Cifaldi, Jin Ha Lee', 'Game development artifacts resulting from the creation process of video\r\ngames, such as design documents, style guides, test builds, and marketing\r\nmaterials, provide rich contextual information about how and why the game\r\nwas created. Better organizing and preserving these materials will not only\r\nenrich our understanding of the history of these media but also educate and\r\ninspire the next generation of video game creators. This research aims to\r\nimprove our theoretical understanding of how to organize and represent game\r\ndevelopment artifacts by examining the various types of artifacts created and\r\ntheir attendant issues and challenges. We adopted a multimethod approach\r\nemploying an examination of existing collections and 29 interviews with creators, information professionals, and game researchers. From these data, we\r\nanalyze the current practices, expressed values, and perceived challenges of\r\nthese stakeholders, produce a taxonomy of game development artifacts, and\r\nprovide best practices recommendations for describing them', NULL, 'Describing, organizing, and maintaining video game development artifacts.pdf', 2, '11', NULL, NULL, 0),
(189, 'Game Data Mining Competition on Churn Prediction and Survival Analysis Using Commercial Game Log Data', '2019', 'IEEE TRANSACTIONS ON GAMES', 'Eunjo Lee , Yoonjae Jang, Du-Mim Yoon, Jihoon Jeon, Seong-il Yang , Sang-Kwang Lee, Dae-Wook Kim, Pei Pei Chen, Anna Guitart, Paul Bertens, Africa Peri ´ a´nez, Fabian Hadiji , Marc Muller, Youngjun Joo , Jiyeon Lee, Inchon Hwang, and Kyung-Joong Kim', 'Game companies avoid sharing their game data with\r\nexternal researchers. Only a few research groups have been granted\r\nlimited access to game data so far. The reluctance of these companies to make data publicly available limits the wide use and development of data mining techniques and artificial intelligence research\r\nspecific to the game industry. In this paper, we developed and implemented an international competition on game data mining using\r\ncommercial game log data from one of the major game companies\r\nin South Korea: NCSOFT. Our approach enabled researchers to\r\ndevelop and apply state-of-the-art data mining techniques to game\r\nlog data by making the data open. For the competition, data were\r\ncollected from Blade & Soul, an action role-playing game, from\r\nNCSOFT. The data comprised approximately 100 GB of game logs\r\nfrom 10 000 players. The main aim of the competition was to predict whether a player would churn and when the player would\r\nchurn during two periods between which the business model was changed to a free-to-play model from a monthly subscription. The\r\nresults of the competition revealed that highly ranked competitors\r\nused deep learning, tree boosting, and linear regression.\r\nIndex Terms—Churn prediction, competition, data mining,\r\ngame log, machine learning, survival analysis', NULL, 'Game Data Mining Competition on Churn Prediction and Survival Analysis Using Commercial Game Log Data.pdf', 2, '11', NULL, NULL, 0),
(190, 'Game-Theoretic Approaches Applied to Transactions in the Open and Ever-Growing Electricity Markets From the Perspective of Power Demand Response: An Overview', '2019', 'IEEE Access', 'LEFENG CHENG, AND TAO YU', 'This paper conducts a detailed overview on game-theoretic approaches for power demand\r\nresponse (DR) in the open and ever-growing electricity market (EM) in terms of three major categories of\r\ngames, including non-cooperative game, cooperative game, and evolutionary game. In addition, we also\r\nseparately review the Stackelberg game and Bayesian game in power DR. First, we briefly describe the main\r\ncontents of game theory and the game behaviors of the electricity sellers, electricity suppliers, and electricity\r\nusers in EM. Second, we comprehensively introduce the principle of the above-mentioned five categories of\r\ngames and thoroughly review their applications in power DR in the context of open EMs, considering the\r\ntransactions such as electricity pricing and electricity capacity trading among the electricity supplier side,\r\nelectricity seller side, and electricity user side in the perfect open EMs, such as retail market, spot market,\r\nwholesale market, and ancillary service market. In this survey, aiming at each type of game mentioned above,\r\nwe try to summarize the advantages and shortcomings of their application in EM in terms of power DR,\r\nas well as the issues that need to be solved currently or in the future. Finally, we offer some prospects on the\r\nscenario application and future development of game-theoretic approaches for power DR in an open EM. The\r\nbiggest innovation of this paper lies in conducting a comprehensive survey on game-theoretic approaches\r\napplied to transactions in the open and ever-growing EMs from the perspective of power DR in terms of\r\nfive major categories of games. We conduct this survey intended to arouse the interest and excitement of\r\nexperts and scholars in the energy and electric power system industry and to look ahead to efforts that jointly\r\npromote the rapid development of game theory in the perfect open EM field.', NULL, 'Game-Theoretic Approaches Applied to Transactions in the Open and Ever-Growing Electricity Markets From the Perspective of Power Demand Response: An Overview.pdf', 2, '11', NULL, NULL, 0),
(191, 'IMPLEMENTASI PERMAINAN FLOW PADA PEMBANGUNAN  SISTEM CAPTCHA', '2015', 'INFORMATIKA', 'Indra Setiawan, Willy Sudiarto Raharjo, Budi Susanto', 'The basic challenge in designing an obfuscating CAPTCHAs is to make them easy enough that users are not dissuaded from attempting a solution, yet still too difficult to solve using available image-based computer vision algorithms. CAPTCHA has been widely used in many web applications and there has been so many research on CAPTCHA. Current technology enables computer to easily solve image-based CAPTCHA with high probability, so we propose another type of CAPTCHA-based authenticaton that can not be solved by utilizing \r\nOptical Character Recognition but still easy to use for new users. We implemented the new model of CAPTCHA using FLOW game. We found that the success rate of this new system is 92.025%, completion time is 6.3614s, and 81,67% of users are able to solve it in less than 10s.', NULL, 'IMPLEMENTASI PERMAINAN FLOW PADA PEMBANGUNAN  SISTEM CAPTCHA.pdf', 2, '3', NULL, NULL, 0),
(192, 'APLIKASI SISTEM MONITORING PERTUMBUHAN TANAMAN BERBASIS WEB MENGGUNAKAN MACHINE VISION', '2011', 'AGRITECH', 'Lilik Sutiarso, Artis Suyantohadi, Dody Kastono, Andri Prima Nugroho', 'Tuntutan integrasi teknologi sistem informasi dan sistem pertanian saat ini dimaksudkan guna mendukung efi siensi, produktivitas dan profi tabiltas pertanian. Hal tersebut didorong oleh timbulnya permasalahan di lapangan terkait dengan belum optimalnya produktivitas tanaman yang diakibatkan antara lain, kurang intensifnya pemantauan (monitoring) tanaman pada masa pertumbuhan. Salah satu alternatif solusi untuk memperbaiki permasalahan tersebut dengan mengaplikasikan teknologi machine vision. Penelitian yang dilakukan merupakan penelitian dasar yang bertujuan memanfaatkan teknologi pengolahan citra digital dan perangkat lunak komputasi untuk mendukung fungsi monitoring pertumbuhan tanaman secara real-time. Mekanisme penelitian dimulai dengan tahap pengolahan citra digital yang \r\nmenggunakan metode segmentasi untuk mengenali objek tanaman dengan objek lainnya. Algoritma pengolahan citra menggunakan metode kelebihan hijau dan normalisasi warna, sedangkan untuk menghitung luas tanaman digunakan metode Otsu dengan mengubah ke citra biner. Tahap berikutnya menghitung prosentase pertumbuhan tanaman selama proses budidaya sampai dengan panen. Data hasil pencitraan disimpan dalam basisdata MySql. Hasil akhir dari pengolahan data ditampilkan sebagai informasi pertumbuhan tanaman yang ditampilkan di website. Dari hasil pengujian, sistem monitoring dengan machine vision ini memiliki tingkat keberhasilan mencapai 70 % dalam mengenali tanaman.', NULL, 'APLIKASI SISTEM MONITORING PERTUMBUHAN TANAMAN BERBASIS WEB MENGGUNAKAN MACHINE VISION.pdf', 2, '3', NULL, NULL, 0),
(193, 'PELACAKAN DAN PENGENALAN WAJAH MENGGUNAKAN METODE EMBEDDED HIDDEN MARKOV MODELS', '2004', 'JURNAL INFORMATIKA', 'Arie Wirawan Margono, Ibnu Gunawan, Resmana Lim', 'Pelacakan dan pengenalan wajah manusia merupakan salah satu bidang yang cukupberkembang dewasa ini, dimana aplikasi dapat diterapkan dalam bidang keamanan (securitysystem) seperti ijin akses masuk ruangan, pengawasan lokasi (surveillance), maupun pencarianidentitas individu pada database kepolisian. Karena diterapkan dalam kasus keamanan,dibutuhkan sistem yang handal terhadap beberapa kondisi, seperti: pengaruh latar belakang, pose\r\nwajah non-frontal terhadap pria maupun wanita dalam perbedaan usia dan ras.Tujuan penelitiam ini adalah untuk membuat perangkat lunak yang menggabungkan sistempelacakan wajah manusia dengan menggunakan algoritma CamShift dan sistem pengenalan wajahdengan menggunakan algoritma Embedded Hidden Markov Models. Sebagai input sistem\r\ndigunakan video kamera (webcam) untuk input bersifat real-time, video AVI untuk input bersifatdinamis, dan file image untuk input statis. Pemrograman perangkat lunak menggunakan prinsippemrograman berorientasi objek (OOP) dengan menggunakan bahasa pemrograman C++,kompiler Microsoft Visual C++ 6.0®, dan dibantu dengan library dari Intel Image Processing Library (IPL) dan Intel Open Source Computer Vision (OpenCV).Hasil pengujian sistem menunjukkan bahwa pelacakan berdasarkan warna kulit manusia\r\ndengan menggunakan algoritma CamShift cukup baik, dalam melakukan pelacakan terhadap satu maupun dua objek wajah sekaligus. Sistem pengenalan wajah manusia menggunakan metode Embedded Hidden Markov Models mencapai tingkat akurasi pengenalan sebesar 82.76%, dengan\r\ndatabase citra wajah sebanyak 341 citra yang terdiri dari 31 individu dengan 11 pose, dan jumlah citra penguji sebanyak 29 citra wajah.', NULL, 'PELACAKAN DAN PENGENALAN WAJAH MENGGUNAKAN METODE EMBEDDED HIDDEN MARKOV MODELS.pdf', 2, '3', NULL, NULL, 0),
(194, 'Analisis Dimensi Fraktal untuk Identifikasi Tanaman dengan  Pendekatan Pemrosesan Citra Secara Paralel', '2010', 'Jurnal Keteknikan Pertanian', 'Mohamad Solahudin  dan Kudang Boro Seminar', 'The use of camera vision and real-time computation as plant identification tool has become an activeresearch. Application of both methods can not be separated from a pretension that the computation must produce correct results within the specified time interval where the truth of the calculation depends not only on logical truth but also on the time in which results are produced. The purpose of this study is to identify plants with fractal dimension analysis and the application of parallel computing. Fractal dimension analysis \r\nresults showed that each plant has a typical Fractal dimension value. Filtration process with a small window size is accompanied by the use of multiple processors indicates that the image processing in parallel show \r\nresults much faster than processing with a single processor.', NULL, 'Analisis Dimensi Fraktal untuk Identifikasi Tanaman dengan  Pendekatan Pemrosesan Citra Secara Paralel.pdf', 2, '3', NULL, NULL, 0),
(195, 'Perancangan dan Pengujian Piranti Pemantauan  Visual untuk Menentukan Volume Lalu Lintas', '2016', 'Jurnal Rekayasa Elektrika', 'Alfina, Yuwaldi Away, dan Muhammad Isya', 'Sistem transportasi pintar atau Intelligent Transportation System (ITS) menerapkan teknologi informasi dan komunikasi untuk pengelolaan transportasi. Permasalahan pada penelitian adalah perlunya piranti visi computer untuk menentukan volume lalu lintas di jalan raya. Perancangan piranti visi komputer ini dilakukan menggunakan kamera statis dan metode bounding box untuk menentukan volume lalu lintas berdasarkan jenis kendaraan yaitu kendaraan ringan, kendaraan berat (truk), dan sepeda motor yang diterapkan pada Gaussian Mixture Models (GMM). Pengklasifikasian kendaraan dilakukan berdasarkan ukuran luasan piksel dari objek kendaraan. Pengujian dilakukan di Jalan T. Nyak Arief, Jambotape, Banda Aceh. Dari hasil pengujian diperoleh tingkat ketelitian sistem sebesar 79,32 %.', NULL, 'Perancangan dan Pengujian Piranti Pemantauan  Visual untuk Menentukan Volume Lalu Lintas.pdf', 2, '3', NULL, NULL, 0),
(196, 'Pelacakan dan Estimasi Pose Video Wajah 3 Dimensi', '2002', 'Jurnal Teknik Elektro', 'Resmana Lim, Davina, Silvia R', 'Paper ini membahas sistem pelacakan dan estimasi pose wajah dengan menggunakan webcamera. Model wajah wireframe 3D digunakan disini bersama dengan metode feature tracking Lucas-Kanade. Titik fiture wajah dilacak pada setiap frame video yang masuk dan pose wajah diestimasi menggunakan metode Fully projective. Sistem ini dibangun menggunakan Microsoft Visual C++ 6.0® , Microsoft® DirectShow® , Intel Image Processing dan Open Source Computer Vision Library. Aplikasi ini telah diimplementasikan dan dapat melacak pergerakan wajah secara real-time yaitu 30 frames/s dengan menggunakan webcam resolusi 320´240 pixel/frame pada PC Pentium III/533 MHz. Sistem cukup prospektif digunakan sebagai salah satu metode interaksi manusia komputer maupun pada sistem pengenalan ekspresi wajah.', NULL, 'Pelacakan dan Estimasi Pose Video Wajah 3 Dimensi.pdf', 2, '3', NULL, NULL, 0),
(197, 'Sistem Pengenalan Plat Nomor Mobil Dengan Metode Principal Components Analysis', '2003', 'Jurnal Teknik Elektro', 'Resmana Lim, Lukman Vendy W., Kartika Gunadi', 'Paper ini membahas sistem pengenalan plat nomor mobil menggunakan teknik computer vision. Image mobil diambil dari kamera, dan selanjutnya diidentifikasi secara otomatis dengan cara mencari lokasi plat nomor mobil tersebut, mensegmentasi setiap karakter yang ada dari plat tersebut dan kemudian melakukan pengenalan pada setiap karakter dengan metode feature reduction PCA. Aplikasi ini dibangun menggunakan Microsoft Visual C++ 6.0® , Microsoft® DirectShow® , Intel® Image Processing Library dan Open Source Computer Vision Library. Aplikasi ini telah diimplementasikan dan dapat mendeteksi letak plat nomor serta mengenalinya pada PC Pentium II/400 MHz. Sistem telah diujicobakan pada suatu basis data yang mewakili 26 karakter (0-9, A-Z) yang masing-masing terdiri dari beberapa variasi gambar mobil. Hasil uji coba menunjukkan tingkat keberhasilan yang cukup menggembirakan, dimana tingkat keberhasilan mencapai ±82%. Sistem cukup prospektif digunakan sebagai salah satu sistem kontrol dan sekuriti pada area parkir.', NULL, 'Sistem Pengenalan Plat Nomor Mobil Dengan Metode Principal Components Analysis.pdf', 2, '3', NULL, NULL, 0),
(198, 'Pengenalan Objek pada Computer Vision dengan  Pencocokan Fitur Menggunakan Algoritma SIFT  Studi Kasus: Deteksi Penyakit Kulit Sederhana', '2016', 'Jurnal Teknik Informatika dan Sistem Informasi', 'Tjatur Kandaga Gautama, Antonius Hendrik ,  dan Riskadewi', 'Human vision can do amazing things such as recognizing people or objects, navigating through obstacles, recognizing the mood in a scene, and imagining stories. To do mimicry of the human vision, the computer requires a sensor that functions like the human eye and a computer program that serves as a data processor from the sensor. Computer vision is the science that uses image processing to make decisions based on images obtained from sensors. In other words, computer vision aims to build an intelligent machine that can \"see\". Computer vision can be used to detect skin diseases, for example, to detect disease Shingles (Herpes Zoster), Hives (Urticaria), Psoriasis, Eczema, Rosacea, Cold Sores (Fever Blisters), Rash, Razor Bumps, Skin Tags, Acne, Athlete\'s Foot, moles, Age or Liver Spots, Pityriasis Rosea, Melasma (Pregnancy Mask), Warts, and Seborrheic keratoses. Prewitt, Sobel, Roberts, and Canny operator are used to detect the edges of one or more objects. Then the results will be match with the results of edge detection image data base to determine the type of disease using Scale invariant Feature Transform (SIFT) algorithm. Skin Disease Detection Expert System will be implemented with C++ programming language, IDE MS Visual Studio 2010 and OpenCV 2.4 library.', NULL, 'Pengenalan Objek pada Computer Vision dengan  Pencocokan Fitur Menggunakan Algoritma SIFT  Studi Kasus: Deteksi Penyakit Kulit Sederhana.pdf', 2, '3', NULL, NULL, 0),
(199, 'Aplikasi Pengenal Citra Nomor Kendaraan Bermotor  Mengunakan Metode Template Matching', '2016', 'E-journal Teknik Informatika', 'Bayu Sy. Kurniawan, Steven Ray Sentinuwo, Oktavian A. Lantang', 'Untuk pengelolaan jasa parkir suatu kawasan pertokoan dan pusat perbelanjaan biasanya dikelola oleh suatu perusahaan pengelola parkir yang profesional, namun membutuhkan sejumlah karyawan pada setiap pos untuk memasukan data plat nomor kendaraan secara manual. Proses secara manual ini mempengaruhi lama waktu dan akurasi yang diakibatkan oleh faktor manusia. Untuk mempermudah kinerja, dibutuhkan sebuah aplikasi berbasis Computer Vision menggunakan pengolahan Image Processing yang dapat membaca nomor kendaraan secara otomatis. Skripsi ini dibuat untuk merancang dan mengimplementasikan aplikasi yang dapat mengenali karakter angka dan huruf plat nomor kendaraan bermotor pada citra hasil pemotretan kamera digital menggunakan metode template matching. Yang nantinya dapat mempermudah kinerja pengelola jasa parkir. Berdasarkan hasil implementasi terhadap 30 sampel citra mobil dengan jumlah 238 karakter didapatkan akurasi 80,25%. Dengan pengujian pada citra ideal yang didapatkan berdasarkan jarak pengambilan gambar dan kecerahan, diperoleh 22 citra dengan 176 karakter menghasilkan akurasi 97,77%.', NULL, 'Aplikasi Pengenal Citra Nomor Kendaraan Bermotor  Mengunakan Metode Template Matching.pdf', 2, '3', NULL, NULL, 0),
(200, 'DETEKSI KEBERSIHAN KERABANG TELUR AYAM BERDASARKAN  PENGOLAHAN CITRA DIGITAL', '2015', 'Jurnal Penelitian Ilmu Komputer, System Embedded & Logic', 'Maimunah', 'Digital image processing can be used in the applications of computer vision, one of which is the object classification. Classification of eggs used to determine the quality of eggs that includes internal quality and external quality. One aspect of the external egg quality is in terms of cleanliness of the eggshell whether there is dirt on the eggshel or not. Digital image processing on the image of the egg is done by preprocessing to convert to binary image which are further identified wheter there is dirt on the eggshell. Programs designed can determine whether an egg has a good quality or not with the information that eggs is in clean or dirty conditions. The results stated that the image quality of the eggs, image preprocessing and classification methods greatly affect the outcome of the classification of the eggs.', NULL, 'DETEKSI KEBERSIHAN KERABANG TELUR AYAM BERDASARKAN  PENGOLAHAN CITRA DIGITAL.pdf', 2, '3', NULL, NULL, 0),
(201, 'Internet of things based smart environmental monitoring for mushroom cultivation', '2018', 'Indonesian Journal of Electrical Engineering and Computer Science', 'Mohd Saiful Azimi Mahmud, Salinda Buyamin, Musa Mohd Mokji, M. S. Zainal Abidin', 'Environmental condition is a significant factor that needs to be controlled in mushroom production. Mushrooms are unable to grow if the temperature is higher than 33°C or lower than 25°C. Thus, this work focuses on developing an automatic environmental control system to provide optimum condition to mushroom production house. Environmental factors considered in the systemare temperature, humidity and carbon dioxide. For this, DHT11 temperature humidity sensor and MQ135 CO2 sensor are connected to the ESP8266 Wi-Fi module to become IoT (Internet of Things) sensors that send big amount of data to the internet for monitoring and assessment. This enable users to monitor the environmental condition anywhere whenever accessing the internet. Based on the analysis of the data, the system will automatically on and off the irrigation system to put the temperature at an optimum level.', NULL, 'Internet of things based smart environmental monitoring for mushroom cultivation.pdf', 2, '7', NULL, NULL, 0),
(202, 'Internet of Things Based Weather Forecast Monitoring System', '2018', 'Indonesian Journal of Electrical Engineering and Computer Science', 'Atul Kulkarni, Debajyoti Mukhopadhyay', 'Weather forecasting is a significant function in meteorology and has been one of the most systematically challenging troubles around the world.This scheme deals with the structure of a weather display method using small cost components so that any electronics hobbyist can construct it. As a replacement for using sensors to collect the weather data, the development gets the information from weather stations placed around the world through a global weather data supplier. Severe weather phenomena challengedifficult weather forecast approach with the partial explanation. Weather events have numerous parameters that are not possible to detail and compute. Growing on communication methods enables weather predictsspecialist systems to combine and share possessions and thus hybrid systems have emerged. Still, though these improvements on climate predict, these expert systems can’t be entirely reliable while weather forecast is central problem.', NULL, 'Internet of Things Based Weather Forecast Monitoring System.pdf', 2, '7', NULL, NULL, 0),
(203, 'Internet of Things Low cost and Wearable SpO2 Device for Health Monitoring', '2018', 'International Journal of Electrical and Computer Engineering (IJECE)', 'R. R. Adiputra, S. Hadiyoso, Y. Sun Hariyani', 'This paper discusses a device for measuring oxygen saturation (SpO2) and heart rate as parameters of the representations of heart conditions. SpO2 device that have been made has a small dimension, wearable and high mobility with battery as the main power source. The device connects to a node MCU as a data processor and an internet network gateway to support internet of things applications. Data sent to the Internet cloud can be accessed online and real time via website for further analysis. The error rate at heart rate measurement is ± 2.8 BPM and for oxygen saturation (SpO2) is ± 1.5%. Testing data transmission delay until it can be displayed on website is 3 second that depends on internet traffic conditions.', NULL, 'Internet of things Low cost and wearable SpO2 device for health monitoring.pdf', 2, '7', NULL, NULL, 0),
(204, 'Internet of Things Surveys for Measuring Human Activities from Everywhere', '2017', 'International Journal of Electrical and Computer Engineering (IJECE)', 'Amine Rghioui, Abdelmajid Oumnad', 'The internet of things (IoT), also called internet of all, is a new paradigm that combines several technologies such as computers, the internet, sensors network, radio frequency identification (RFID), communication technology and embedded systems to form a system that links the real worlds with digital worlds. With an increase in the deployment of smart objects, the internet of things should have a significant impact on human life in the near future. To understand the development of the IoT, this paper reviews the current research of the IoT, key technologies, the main applications of the IoT in various fields, and identifies research challenges. A main contribution of this review article is that it summarizes the current state of the IoT technology in several areas, and also the applications of IoT that cause side effects on our environment for monitoring and evaluation of the impact of human activity on the environment around us, and also provided an overview of some of the main challenges and application of IoT. This article presents not only the problems and challenges of IoT, but also solutions that help overcome some of the problems and challenges.', NULL, 'Internet of things Surveys for measuring human activities from everywhere.pdf', 2, '7', NULL, NULL, 0),
(205, 'IOT Based Application for Monitoring Electricity Power Consumption in Home Appliances', '2019', 'International Journal of Electrical and Computer Engineering (IJECE)', 'Korakot Luechaphonthara, Vijayalakshmi A', 'Internet of Things is one of the emerging techniques that help in bridging the gap between the physical and cyber world. In the Internet of Things, the different smart objects connected, communicate with each other, data is gathered from the smart objects and based on the need of the users, and the data gathered are queried and sent back to the user. IoT helps in monitoring electrical and physical parameters. Electricity consumption from electronic devices is one among such parameters that need to be monitored. The development of energy efficient schemes for the IoT is a challenging issue as the IoT becomes more complex due to its large scale the current techniques of wireless sensor networks cannot be applied directly to the IoT. To achieve the green networked IoT, this paper proposes a Wi-Fi enabled simple low cost electricity monitoring device that can monitor the electricity consumption on home appliances which helps to analyses the consumption of electricity on a daily and weekly basis.', NULL, 'IOT Based Application for Monitoring Electricity Power Consumption in Home Appliances.pdf', 2, '7', NULL, NULL, 0),
(206, 'IoT Based Heart Monitoring and Alerting System with Cloud Computing and Managing the Traffic for an Ambulance in India', '2019', 'International Journal of Electrical and Computer Engineering (IJECE)', 'Khushboo Bhagchandani, D. Peter Augustine', 'Global Burden of Disease Report, released in Sept 2017, shows that Cardio- vascular Diseases caused 1.7 million deaths (17.8%) in 2016 and it is the leading cause of deaths in India [1]. According to the Indian Heart Association, 25% of all heart attacks happen under the age of 40. In most cases, the initial heart attacks are often ignored. Even post-diagnosis, as per government data [2], 50% of heart attack cases reach the hospital in more than 400 minutes against the ideal window time of 180 minutes; post which damage is irreversible. The delay is often attributed to delay in reaching a hospital or receiving primary aid. In India, traffic conditions also add to the grimace of the situation. Although the government is taking various measures; a holistic solution is required to minimize the delay at each of the steps like accessing the patient situation, contacting the Medical aid or making available the nearest aid possible. In this paper, we aim at providing the holistic solution using the Internet of Things technology (IOT) along with data analytics. IoT enables real-time capturing and computation of medical data from smart sensors built-in wearable devices. The amalgamation of Internet-based services with Medical Things (Smart sensors) enhance the chances of survival of patients. The proposed system analyses the inputs collected from the sensors fit with the patients prone to cardiovascular diseases to ascertain the emergency situation. In addition, to these data, the system also considers age, maximum and minimum heart rate. Based on computational results received from the input parameters, the system triggers the alert to emergency contacts such as the close relatives of the patient, doctors, the hospitals and nearby ambulance. The proposed system combines with the optimized navigation platform to guide the medical assistance to find the fastest route.', NULL, 'IoT Based Heart Monitoring and Alerting System with Cloud Computing and Managing the Traffic for an Ambulance in India.pdf', 2, '7', NULL, NULL, 0),
(207, 'Performance Evaluation of Smart Home System using Internet of Things', '2018', 'International Journal of Electrical and Computer Engineering (IJECE)', 'Teddy Surya Gunawan, Intan Rahmithul Husna Yaldi, Mira Kartiwi, Hasmah Mansor', 'Nowadays, many researches have been conducted on smart home. Smart home control system (SHCS) can be integrated into an existing home appliances to reduce the need for human intervention, increase security and energy efficiency. We have proposed a smart home system using internet of things and four types of sensors, including PIR, temperature, ultrasonic, and smoke gas sensor for automatic environmental control and intrustion detection. In this paper, the performance of the previously developed prototype of smart home system will be evaluated. First, experiments on various sensors will be conducted. Next, the communicaton channel using wireless and Ethernet modules will be discussed. Moreover, the overall SHCS will be evaluated in terms of hardware and software performance. Additionaly, solar charger enhances the availability of our prototype system. Results showed the effectiveness of our proposed smart home system in the prototype and real life experiments.', NULL, 'Performance Evaluation of Smart Home System using Internet of Things.pdf', 2, '7', NULL, NULL, 0),
(208, 'Smart Home and Ambient Assisted Living Based on the Internet of Things', '2017', 'International Journal of Electrical and Computer Engineering (IJECE)', 'H. Sayuti, R. A. Rashid, N. M. Abdul Latiff, M. R. Abdul Rahim, A. H. F. Abdul Hamid, M. A. Sarijari6, N. E. Ghazali', 'This paper presents a Smart Home and Ambient Assisted Living (SHAAL) system that has been developed and tested in a real experimental home environment. SHAAL system is designed on wireless sensor network (WSN) linked to the cloud network on the Internet. The development of SHAAL is divided into two phases: the design of SHAAL network and the development of SHAAL applications. SHAAL network is made up of the home network which is the WSN, and the cloud network. The network is designed using TelG mote that operates under Zigbee technology and includes various sensor modules for SHAAL system. The cloud network consists of the gateway, the server and user devices running on third generation (3G) network. Using priority scheduling algorithm for data transmission, it is shown that the performance delay of this system on the test-bed experiment is 34.2 percent less compared to the theoretical study. The implementation of the experimental test-bed has proven that SHAAL has been successfully designed and deployed in the real world.', NULL, 'Smart Home and Ambient Assisted Living Based on the Internet of Things.pdf', 2, '7', NULL, NULL, 0),
(209, 'SmartBike: An IoT Crowd Sensing Platform for Monitoring City Air Pollution', '2017', 'International Journal of Electrical and Computer Engineering (IJECE)', 'Fulvio Corno, Teodoro Montanaro, Carmelo Migliore, and Pino Castrogiovanni', 'In recent years, the Smart City concept is emerging as a way to increase efficiency, reduce costs, and improve the overall quality of citizen life. The rise of Smart City solutions is encouraged by the increasing availability of Internet of Things (IoT) devices and crowd sensing technologies. This paper presents an IoT Crowd Sensing platform that offers a set of services to citizens by exploiting a network of bicycles as IoT probes. Based on a survey conducted to identify the most interesting bike-enabled services, the SmartBike platform provides: real time remote geo-location of users’ bikes, anti-theft service, information about traveled route, and air ollution monitoring. The proposed SmartBike platform is composed of three main components: the SmartBike mobile sensors for data collection installed on the bicycle; the end-user devices implementing the user interface for geo-location and anti-theft; and the SmartBike central servers for storing and processing detected data and providing a web interface for data visualization. The suitability of the platform was evaluated through the implementation of an initial prototype. Results demonstrate that the proposed SmartBike platform is able to provide the stated services, and, in addition, that the accuracy of the acquired air quality measurements is compatible with the one provided by the official environmental monitoring system of the city of Turin. The described platform will be adopted within a project promoted by the city of Turin, that aims at helping people making their mobility behavior more sustainable.', NULL, 'SmartBike: An IoT Crowd Sensing Platform for Monitoring City Air Pollution.pdf', 2, '7', NULL, NULL, 0),
(210, 'Web based Water Turbidity Monitoring and Automated Filtration System IoT Application in Water Management', '2018', 'International Journal of Electrical and Computer Engineering (IJECE)', 'S. Noorjannah Ibrahim, A. L. Asnawi, N. Abdul Malik, N. F. Mohd Azmin, A. Z. Jusoh, F. N. Mohd Isa', 'Water supplied to residential areas is prone to contaminants due to pipe residues and silt, and therefore resulted in cloudiness, unfavorable taste, and odor in water. Turbidity, a measure of water cloudiness, is one of the important factors for assessing water quality. This paper proposes a low-cost turbidity system based on a light detection unit to measure the cloudiness in water. The automated system uses Intel Galileo 2 as the microprocessor and a server for a web-based monitoring system. The turbidity detection unit consists of a Light Dependent Resistor (LDR) and a Light Emitting Diode (LED) inside a polyvinyl chloride (PVC) pipe. Turbidity readings were\r\nrecorded for two different positionings; 90° and 180° between the detector (LDR) and the incident light (LED). Once the turbidity level reached a threshold level, the system will trigger the filtration process to clean the\r\nwater. The voltage output captured from the designed system versus total suspended solid (TSS) in sample water is graphed and analyzed in two different conditions; in total darkness and in the present of ambient light. This paper also discusses and compares the results from the above-mentioned conditions when the system is submerged in still and flowing water. It was found that the trends of the plotted graph decline when the total suspended solid increased for both 90° and 180° detector turbidimeter in all conditions which imitate the trends of a commercial turbidimeter. By taking the consideration of the above findings, the design can be recommended for a low-cost real-time web-based monitoring system of the water quality in an IOT environment.', NULL, 'Web based Water Turbidity Monitoring and Automated Filtration System IoT Application in Water Management.pdf', 2, '7', NULL, NULL, 0),
(211, 'A Preliminary Performance Evaluation of K-means, KNN and EM Unsupervised Machine Learning Methods for Network Flow Classification', '2016', 'International Journal of Electrical and Computer Engineering (IJECE)', 'Alhamza Munther, Rozmie Razif , Mosleh AbuAlhaj, Mohammed Anbar, Shahrul Nizam', 'Unsupervised leaning is a popular method for classify unlabeled dataset i.e. without prior knowledge about data class. Many of unsupervised learning are used to inspect and classify network flow. This paper presents in-deep study for three unsupervised classifiers, namely: K-means, K-nearest neighbor and Expectation maximization. The methodologies and how it’s employed to classify network flow are elaborated in details. The three classifiers are\r\nevaluated using three significant metrics, which are classification accuracy, classification speed and memory consuming. The K-nearest neighbor introduces better results for accuracy and memory; while K-means announce\r\nlowest processing time.', NULL, 'A Preliminary Performance Evaluation of K-means, KNN and EM Unsupervised Machine Learning Methods for Network Flow Classification.pdf', 2, '2', NULL, NULL, 0);
INSERT INTO `bacaan` (`id_bacaan`, `judul`, `tahun`, `penerbit`, `penulis`, `abstrak`, `sampul`, `file`, `kategori_id`, `topik_id`, `upload_by`, `upload_admin`, `id_akses`) VALUES
(212, 'Classification of Macronutrient Deficiencies in Maize Plant Using Machine Learning', '2018', 'International Journal of Electrical and Computer Engineering (IJECE)', 'Leena N, K. K. Saju', 'Detection of nutritional deficiencies in plants is vital for improving crop productivity. Timely identification of nutrient deficiency through visual symptoms in the plants can help farmers take quick corrective action by appropriate nutrient management strategies. The application of computer vision and machine learning techniques offers new prospects in non-destructive field-based analysis for nutrient deficiency. Color and shape are important parameters in feature extraction. In this work, two different techniques are used for image segmentation and feature extraction to generate two different feature sets from the same image sets. These are then used for classification using different machine learning techniques. The experimental results are analyzed and compared in terms of classification accuracy to find the best algorithm for the two feature sets.', NULL, 'Classification of Macronutrient Deficiencies in Maize Plant Using Machine Learning.pdf', 2, '2', NULL, NULL, 0),
(213, 'Comparison of Machine Learning Approaches on Arabic Twitter Sentiment Analysis', '2016', 'International Journal on Advanced Science Engineering  Information Technology', 'Merfat M. Altawaier, Sabrina Tiun', 'With the dramatic expansion of information over the internet, users around the world express their opinion daily on the social network such as Facebook and Twitter. Large corporations nowadays invest on analyzing these opinions in order to assess their products or services by knowing the people feedback toward such business. The process of knowing users’ opinions toward particular product or services whether positive or negative is called sentiment analysis. Arabic is one of the common languages that have been addressed regarding sentiment analysis. In the literature, several approaches have been proposed for Arabic sentiment analysis and most of these approaches are using machine learning techniques. Machine learning techniques are various and have different performances. Therefore, in this study, we try to identify a simple, but workable approach for Arabic sentiment analysis on Twitter. Hence, this study aims to investigate the machine learning technique in terms of Arabic sentiment analysis on Twitter. Three techniques have been used including Naïve Bayes, Decision Tree (DT) and Support Vector Machine (SVM). In addition, two simple sub-tasks pre-processing have been also used; Term Frequency-Inverse Document Frequency (TF-IDF) and Arabic stemming to get the heaviest weight term as the feature for tweet classification. TF-IDF aims to identify the most frequent words, whereas stemming aims to retrieve the stem of the word by removing the inflectional derivations. The dataset that has been used is Modern Arabic Corpus which consists of Arabic tweets. The performance of classification has been evaluated based on the information retrieval metrics precision, recall, and f-measure. The experimental results have shown that DT has outperformed the other echniques by obtaining 78% of f-measure.', NULL, 'Comparison of Machine Learning Approaches on Arabic Twitter Sentiment Analysis.pdf', 2, '2', NULL, NULL, 0),
(214, 'Extracting Hidden Patterns from Dates\' Product Data Using a Machine Learning Technique', '2019', 'IAES International Journal of Artificial Intelligence (IJ-AI)', 'Mohammed Abdullah Al-Hagery', 'Mining in data is an important step for knowledge discovery, which leads to extract new patterns from datasets. It is a widespread methodology that has the capability to help ministries, companies, and experts for diving into the data to find important insights and patterns to help them take suitable decisions. The farmers and marketers of the date product in the production regions lack to discover the most important characteristics of dates types from the economically, healthy, and the type of consumers point of view to achieve the highest profits by choosing the best types and the most consumed. The research objective is to extract interesting patterns from the dates’ product dataset, using Machine Learning, based on association rules generation. This, in turn, will support the farmers, and marketers to discover new features related to the production, consumption, and marketing processes. This research used a real dataset collected from KSA, Qassim region, which is the first region of cultivation of palm, that produces the best types of dates in the Arab region. The data preprocessed and analyzed by the Apriori algorithm. The results show important features and insights related to the health benefits of dates, production, its consumption, consumers types, and marketing. Consequently, these results can be employed, for instance, to encourage individuals to consume dates for their nutritional value and their important health benefits. Furthermore, the results encourage producers to focus on the production of preferable types and to improve the marketing policies of the other types.', NULL, 'Extracting Hidden Patterns from Dates\' Product Data Using a Machine Learning Technique.pdf', 2, '2', NULL, NULL, 0),
(215, 'Fault Detection for Air Conditioning System using Machine Learning', '2020', 'IAES International Journal of Artificial Intelligence (IJ-AI)', 'Noor Asyikin Sulaiman, Md Pauzi Abdullah, Hayati Abdullah, Muhammad Noorazlan Shah Zainudin, Azdiana Md Yusop', 'Air conditioning system is a complex system and consumes the most energy in a building. Any fault in the system operation such as cooling tower fan faulty, compressor failure, and damper stuck, etc. could lead to energy wastage and reduction in the system’s coefficient of performance (COP). Due to the complexity of the air conditioning system, detecting those faults is hard as it requires exhaustive inspections. This paper consists of two parts; i) to investigate the impact of different faults related to the air conditioning system on COP and ii) to analyse the performances of machine learning algorithms to classify those faults. Three supervised learning classifier models were developed, which were deep learning, support vector machine (SVM) and multi-layer perceptron (MLP). The performances of each classifier were investigated in terms of six different classes of faults. Results showed that different faults give different negative impacts on the COP. Also, the three supervised learning classifier models able to classify all faults for more than 94%, and MLP produced the highest accuracy and precision among all.', NULL, 'Fault Detection for Air Conditioning System using Machine Learning.pdf', 2, '2', NULL, NULL, 0),
(216, 'Feature Selection for DDoS Detection Using Classification Machine Learning Techniques', '2020', 'IAES International Journal of Artificial Intelligence (IJ-AI)', 'Andi Maslan, Kamaruddin Malik Bin Mohamad, Feresa Binti Mohd Foozy', 'Computer system security is a factor that needs to be considered in the era of industrial revolution 4.0, namely by preventing various threats to the system, as well as being able to detect and repair any damage that occurs to the computer system. DDoS attacks are a threat to the company at this time because this attack is carried out by making very large requests for a site or website server so that the system becomes stuck and cannot function at all. DDoS attacks in Indonesia and developed countries always increase every year to 6% from only 3%. To minimize the attack, we conducted a study using Machine Learning techniques. The dataset is obtained from the results of DDoS attacks that have been collected by the researchers. From the datasets, there is a training and testing of data using five techniques classification: Neural Network, Naïve Bayes and Random Forest, KNN, and Support Vector Machine (SVM), datasets processed have different percentages, with the aim of facilitating in classifying. From this study it can be concluded that from the five classification techniques used, the Forest random classification technique achieved the highest level of accuracy (98.70%) with a Weighted Avg 98.4%. This means that the technique can detect DDoS attacks accurately on the application that will be developed.', NULL, 'Feature Selection for DDoS Detection Using Classification Machine Learning Techniques.pdf', 2, '2', NULL, NULL, 0),
(217, 'Handwritten Digits Recognition with Decision Tree Classification a Machine Learning Approach', '2019', 'International Journal of Electrical and Computer Engineering (IJECE)', 'Tsehay Admassu Assegie, Pramod Sekharan Nair', 'Handwritten digits recognition is an area of machine learning, in which a machine is trained to identify handwritten digits. One method of achieving this is with decision tree classification model. A decision tree classification is a machine learning approach that uses the predefined labels from the past known sets to determine or predict the classes of the future data sets where the class labels are unknown. In this paper we have used the standard kaggle digits dataset for recognition of handwritten digits using a decision tree classification approach. And we have evaluated the accuracy of the model against each digit from 0 to 9.', NULL, 'Handwritten Digits Recognition with Decision Tree Classification a Machine Learning Approach.pdf', 2, '2', NULL, NULL, 0),
(218, 'Machine Learning Approach for Flood Risks Prediction', '2020', 'IAES International Journal of Artificial Intelligence (IJ-AI)', 'Nazim Razali, Shuhaida Ismail, Aida Mustapha', 'Flood is one of main natural disaster that happens all around the globe caused law of nature. It has caused vast destruction of huge amount of properties, livestock and even loss of life. Therefore, the needs to develop an accurate and efficient flood risk prediction as an early warning system is highly essential. This study aims to develop a predictive modelling follow Cross-Industry Standard Process for Data Mining (CRISP-DM) methodology by using Bayesian network (BN) and other Machine Learning (ML) techniques such as Decision Tree (DT), k-Nearest Neighbours (kNN) and Support Vector Machine (SVM) for flood risks prediction in Kuala Krai, Kelantan, Malaysia. The data is sourced from 5-year period between 2012 until 2016 consisting 1,827 observations. The performance of each models were compared in terms of accuracy, precision, recall and f-measure. The results showed that DT with SMOTE method performed the best compared to others by achieving 99.92% accuracy. Also, SMOTE method is found highly effective in dealing with imbalance dataset. Thus, it is hoped that the finding of this research may assist the non-government or government organization to take preventive action on flood phenomenon that commonly occurs in Malaysia due to the wet climate.', NULL, 'Machine Learning Approach for Flood Risks Prediction.pdf', 2, '2', NULL, NULL, 0),
(219, 'Text to Emotion Extraction Using Supervised Machine Learning Techniques', '2018', 'TELKOMNIKA', 'Muhammad Anwarul Azim, Mahmudul Hasan Bhuiyan', 'Proliferation of internet and social media has greatly increased the popularity of text communication. People convey their sentiment and emotion through text which promotes lively communication. Consequently, a tremendous amount of emotional text is generated on different social media and blogs in every moment. This has raised the necessity of automated tool for emotion mining from text. There are various rule based approaches of emotion extraction form text based on emotion intensity lexicon. However, creating emotion intensity lexicon is a time consuming and tedious process. Moreover, there is no hard and fast rule for assigning emotion intensity to words. To solve these difficulties, we propose a machine learning based approach of emotion extraction from text which relies on annotated example rather emotion intensity lexicon. We investigated Multinomial Naïve Bayesian (MNB) Classifier, Artificial Neural Network (ANN) and Support Vector Machine (SVM) for mining emotion from text. In our setup, SVM outperformed other classifiers with promising accuracy.', NULL, 'Text to Emotion Extraction Using Supervised Machine Learning Techniques.pdf', 2, '2', NULL, NULL, 0),
(220, 'The Classification of the Modern Arabic Poetry using Machine Learning', '2019', 'TELKOMNIKA', 'Munef Abdullah Ahmed, Raed Abdulkareem Hasan, Ahmed Hussein Ali, Mostafa Abdulghafoor Mohammed', 'In recent years, working on text classification and analysis of Arabic texts using machine learning has seen some progress, but most of this research has not focused on Arabic poetry. Because of some difficulties in the analysis of Arabic poetry, it was required the use of standard Arabic language on which “Al Arud”, the science of studying poetry is based. This paper presents an approach that uses machine learning for the classification of modern Arabic poetry into four types: love poems, Islamic poems, social poems, and political poems. Each of these species usually has features that indicate the class of the poem. Despite the challenges generated by the difficulty of the rules of the Arabic language on which this classification depends, we proposed a new automatic way of modern Arabic poems classification to solve these issues. The recommended method is suitable for the above-mentioned classes of poems. This study used Naïve Bayes, Support Vector Machines, and Linear Support Vector for the classification processes. Data preprocessing was an important step of the approach in this paper, as it increased the accuracy of the classification.', NULL, 'The Classification of the Modern Arabic Poetry using Machine Learning.pdf', 2, '2', NULL, NULL, 0),
(221, 'Aplikasi Sistem Pakar Diagnosa Penyakit Pada Anak Bawah Lima Tahun Menggunakan Metode Forward Chaining', '2017', 'Journal of Information Systems Engineering and Business Intelligence', 'Bagus Fery Yanto, Indah Werdiningsih, Endah Purwanti', 'Anak-anak pada usia 2 bulan sampai 5 tahun (Balita) lebih rentan terkena penyakit. Lingkungan sangat mempengaruhi kesehatan Balita. Penelitian ini bertujuan untuk membuat sebuah aplikasi sistem pakar diagnosa penyakit pada Balita berbasis mobile. Penelitian ini terdiri dari tiga tahap. Tahap pertama adalah pengumpulan data dan informasi dari Manajemen Terpadu Balita Sakit (MTBS) dan wawancara dengan Bidan. Dari pengumpulan data dan informasi tersebut ditemukan fakta penyakit, keluhan, gejala dan saran penanganan. Tahap kedua adalah pembuatan rule dengan 18 penyakit. Tahap ketiga adalah implementasi aplikasi sistem pakar berbasis mobile dengan fitur diagnosa penyakit, riwayat diagnosa dan kumpulan penyakit. Aplikasi sistem pakar yang dibuat dapat mendiagnosa penyakit dan memberikan saran penanganan. Hasil evaluasi dari 50 data uji coba menghasilkan tingkat akurasi sebesar 82%, dimana 41 hasil diagnosa yang benar dan 9 diagnosa yang salah.', NULL, 'Aplikasi Sistem Pakar Diagnosa Penyakit Pada Anak Bawah Lima Tahun Menggunakan Metode Forward Chaining.pdf', 2, '6', NULL, NULL, 0),
(222, 'IMPLEMENTASI SISTEM PAKAR DIAGNOSA KERUSAKAN PADA CANON NP6650XX MENGGUNAKAN METODA DEMPSTER SHAFER', '2016', 'JOIN', 'Khaerul Manaf', 'Sistem pakar adalah sebuah perangkat lunak komputer yang memiliki basis pengetahuan. Dimana pengetahuan diambil dari beberapa orang pakar dengan pengalamannya bekerja selama bertahun-tahun pada sebuah bidang keahlian tertentu. Sistem pakar lebih mudah dikembangkan dan spesifikasinya juga tidak terlalu sulit, sehingga dapat digunakan oleh komputer-komputer yang ada sekarang ini.', NULL, 'IMPLEMENTASI SISTEM PAKAR DIAGNOSA KERUSAKAN PADA CANON NP6650XX MENGGUNAKAN METODA DEMPSTER SHAFER.pdf', 2, '6', NULL, NULL, 0),
(223, 'Metode Ketidakpastian dan Kesamaran dalam Sistem Pakar', '2011', 'LONTAR KOMPUTER', 'Putu Manik Prihatini', 'Kecerdasan buatan dikembangkan untuk membuat agar mesin (komputer) dapat melakukan pekerjaan seperti dan sebaik manusia. Sistem Pakar merupakan bagian dari kecerdasan buatan yang mengandung pengetahuan dan pengalaman yang dimasukkan oleh satu atau banyak pakar ke dalam satu area pengetahuan tertentu. Pengetahuan dan pengalaman yang ada dalam dunia nyata yang akan direpresentasikan kedalam sistem pakar penuh dengan unsur ketidakpastian dan kesamaran. Beberapa metode yang sering digunakan untuk menangani masalah ketidakpastian dan kesamaran adalah dengan menggunakan teknik probabilitas, faktor kepastian dan logika fuzzy. Teorema Bayes merupakan bagian dari teknik probabilitas yang menekankan pada konsep probabilitas hipotesis dan evidence, sedangkan teknik probabilitas dengan teori Dempster-Shaffer menekankan pada konsep beliefe dan plausability. Pada metode dengan faktor kepastian menekankan pada nilai kepercayaan yang diberikan oleh seorang pengguna dan pakar. Pada metode dengan logika fuzzy menekankan pada derajat keanggotaan dari suatu evidence pada suatu himpunan fuzzy sehingga mampu menangani masalah kesamaran. Untuk memberikan solusi yang lebih baik, metode-metode yang ada bisa dikombinasikan antara yang satu dengan yang lainnya.', NULL, 'Metode Ketidakpastian dan Kesamaran dalam Sistem Pakar.pdf', 2, '6', NULL, NULL, 0),
(224, 'Penerapan Metode Forward Chaining Pada Sistem Pakar Untuk Diagnosa Hama dan Penyakit Padi', '2018', 'INTENSIF', 'Khurotul Aeni', 'Agar komputer bisa bertindak seperti dan sebaik manusia, maka komputer harus diberi bekal pengetahuan yang mempunyai kemampuan untuk menalar. Salah\r\nsatunya adalah sistem pakar, merupakan sistem yang berusaha mengadopsi pengetahuan manusia ke komputer yang dirancang untuk memodelkan kemampuan menyelesaikan masalah seperti layaknya seorang pakar. Dengan sistem pakar ini, orang awampun dapat menyelesaikan masalahnya atau hanya sekedar mencari suatu informasi yang sebenarnya hanya dapat diperoleh dengan bantuan para ahli dibidangnya. Pengetahuan masyarakat di Indonesia tentang hama dan penyakit tanaman padi masih rendah, termasuk penanganannnya hanya diketahui sebatas pengetahuan sesama petani, jika ada hama dan penyakit jenis baru petani tidak mengetahuinya, disisi lain terdapat beberapa ahli atau pakar yang banyak yang mengetahui tentang hama dan penyakit tanaman padi, akan tetapi jumlahnya ahli atau pakar dengan banyaknya jumlah petani tidak seimbang. Oleh karena itu, dengan adanya penerapan metode inferensi forward chaining pada sistem pakar untuk diagnosa hama dan penyakit tanaman padi dapat menjadi informasi dan pengetahuan yang akan membantu masyarakat ataupun perorangan untuk mengetahui jenis hama dan penyakita apa yang menyerang tanaman padinya, tanpa harus menunggu dan mengharapkan jawaban langsung dari ahlinya.', NULL, 'Penerapan Metode Forward Chaining Pada Sistem Pakar Untuk Diagnosa Hama dan Penyakit Padi.pdf', 2, '6', NULL, NULL, 0),
(225, 'Prototype Sistem Pakar untuk Mendeteksi Tingkat Resiko Penyakit Jantung Koroner dengan Metode Dempster-Shafer', '2013', 'IJCCS', 'Elyza Gustri Wahyuni, Widodo Prijodiprojo', 'Sistem pakar dapat berfungsi sebagai konsultan yang memberi saran kepada pengguna sekaligus sebagai asisten bagi pakar. Salah satu cara untuk mengatasi dan membantu mendeteksi tingkat resiko penyakit JK seseorang, yaitu dengan membuat sebuah sistem pakar sebagai media konsultasi dan monitoring terhadap seseorang sehingga dapat meminimalkan terjadinya serangan jantung yang mengakibatkan kematian. Metode Dempster-Shafer merupakan metode penalaran non monotonis yang digunakan untuk mencari ketidakkonsistenan akibat adanya penambahan maupun pengurangan fakta baru yang akan merubah aturan yang ada, sehingga metode Dempster-Shafer memungkinkan seseorang aman dalam melakukan pekerjaan seorang pakar. Penelitian ini bertujuan menerapkan metode ketidakpastian Dempster-Shafer pada sistem pakar untuk mendiagnosa tingkat resiko penyakit JK seseorang berdasarkan faktor serta gejala penyakit JK. Manfaat penelitian ini adalah untuk mengetahui keakuratan mesin inferensi Dempster-Shafer.\r\nHasil diagnosa penyakit JK yang dihasilkan oleh sistem pakar sama dengan hasil perhitungan secara manual dengan menggunakan teori mesin inferensi Dempster-Shafer. Sehingga dapat disimpulkan bahwa sistem pakar yang telah dibangun dapat digunakan untuk mendiagnosa PJK.', NULL, 'Prototype Sistem Pakar untuk Mendeteksi Tingkat Resiko Penyakit Jantung Koroner dengan Metode Dempster-Shafer.pdf', 2, '6', NULL, NULL, 0),
(226, 'Purwarupa Sistem Pakar dengan Mamdani Product untuk Menentukan Menu Harian Penderita DM', '2013', 'IJCCS', 'Nur Hasanah, Retantyo Wardoyo', 'Pada 2025 diperkirakan 12,4 juta orang yang mengidap Diabetes Melitus (DM) di Indonesia. Perencanaan makan merupakan salah satu pilar dalam pengelolaan DM. Sistem pakar dapat berfungsi sebagai konsultan yang memberi saran kepada pengguna sekaligus sebagai asisten bagi pakar. Logika fuzzy fleksibel, memiliki kemampuan dalam proses penalaran secara bahasa dan memodelkan fungsi-fungsi matematika yang kompleks. Penelitian ini bertujuan menerapkan metode ketidakpastian logika fuzzy pada purwarupa sistem pakar untuk menentukan menu harian. Manfaat penelitian ini adalah untuk mengetahui keakuratan mesin inferensi Mamdani Product.\r\nPendekatan basis pengetahuan yang digunakan pada sistem pakar ini adalah dengan Rule-Based Reasoning. Proses inferensi pada sistem pakar menggunakan logika fuzzy dengan mesin inferensi Mamdani Product. Fuzzifier yang digunakan adalah Singleton sedangkan defuzzifier yang digunakan adalah Rata-Rata Terpusat.\r\nPenggunaan kombinasi Singleton fuzzifier, mesin inferensi Product dan defuzzifier Rata-Rata Terpusat yang digunakan pada sistem pakar dapat diterapkan untuk domain permasalahan yang dibahas. Meskipun demikian, terdapat kemungkinan Singleton fuzzifier tidak dapat memicu beberapa atau semua aturan. Jika semua aturan tidak dapat dipicu maka tidak dapat disimpulkan kebutuhan kalori hariannya.', NULL, 'Purwarupa Sistem Pakar dengan Mamdani Product untuk Menentukan Menu Harian Penderita DM.pdf', 2, '6', NULL, NULL, 0),
(227, 'Rancang Bangun Sistem Pakar Diagnosa tingkat Depresi Pada Mahasiswa Tingkat Akhir Menggunakan Metode Fuzzy Tsukamoto (Studi Kasus Universitas Siliwangi)', '2017', 'JOIN', 'Neng Ika Kurniati, Husni Mubarok, Angga Reinaldi', 'Depresi adalah penyakit mental yang umum tapi serius biasanya ditandai dengan perasaan sedih atau cemas. Kebanyakan mahasiswa kadang-kadang merasa sedih atau cemas, tapi emosi ini biasanya berlalu dengan cepat dalam beberapa hari. Depresi yang tidak diobati berlangsung untuk waktu yang lama, mengganggu kegiatan sehari-hari, dan jauh lebih dari sekedar \"sedikit murung\" atau \"merasa sedih\". Pada tahun 2011, Asosiasi Kesehatan American College National College Health Assessment (ACHA-NCHA) sebuah survei nasional pada mahasiswa di 2 dan 4 lembaga menemukan bahwa sekitar 30 persen dari mahasiswa melaporkan merasa \"begitu tertekan sehingga sulit untuk berfungsi\" pada beberapa waktu dalam satu tahun terakhir. Dengan dasar tersebut maka diperlukan sebuah sistem pakaruntuk membantu mahasiswa dalam mendeteksi tingkat depresi. Adapun sistem pakar yang dibuat dalam pembuatan sistem pakar ada tiga tahap utama dalam pengembangan software ini: fuzzifikasi, inferensi dan defuzzifikasi, menggunakan Tsukamoto pada tahap inference. Pada tahap defuzzifikasi, Center Average Deffuzzyfier digunakan untuk mendapatkan aturan outputcrisp.Basis Aturan yang digunakan dalam penelitian ini sebanyak 64 aturan. Adapun sistem pakar yang dibangun menggunakan metode Fuzzy Tsukamoto sebagai metode penalaran untuk menentukan hasil deteksi berdasarkan gejala yang ditunjukkan. Sistem pakar ini dibangun berbasis Desktop agar dapat digunakan oleh mahasiswa dan instansi/lembaga yang membutuhkan. Berdasarkanpengujian yang dilakukan, sistem pakar ini valid dengan tingkatakurasi sebesar 96% dalam memberikan hasil deteksi yang sesuai dengan pakar, dari hasil data sebanyak 25 percobaan. Selain itu sistem dapat beroperasi baik.\r\nKata kunci : Depresi, Sistem Pakar, Logika Fuzzy, Tsukamoto', NULL, 'Rancang Bangun Sistem Pakar Diagnosa tingkat Depresi Pada Mahasiswa Tingkat Akhir Menggunakan Metode Fuzzy Tsukamoto (Studi Kasus Universitas Siliwangi).pdf', 2, '6', NULL, NULL, 0),
(228, 'Rancang Bangun Sistem Pakar Untuk Mendiagnosis Gangguan Kepribadian Histerik Menggunakan Metode Certainty Factor', '2015', '-Jurnal Ilmiah Teknologi Sistem Informasi', 'Tri Nur Oktavia, Diema Hernyka Satyareni, Erliyah Nurul Jannah', 'Gangguan kepribadian histerik atau yang biasa dikenal dengan gangguan kepribadian histrionik merupakan gangguan kepribadian dengan karakter emosi yang meluap-luap, termasuk keinginan berlebihan untuk mendapatkan pujian. Penderita gangguan kepribadian histerik mempunyai tingkah laku yang dramatik dan bereaksi terhadap sesuatu secara berlebihan, serta selalu ingin diperhatikan. Banyak orang yang mengalami gangguan ini, terutama kalangan remaja. Namun sebagian besar dari penderita gangguan ini kurang menyadari kondisinya dan menolak untuk melakukan konsultasi ke psikolog atau psikiater. Oleh sebab itu, dibutuhkan suatu sistem pakar yang dapat membantu untuk mendiagnosis secara mandiri gangguan kepribadian histerik dan mampu memberikan solusi penanganan yang tepat. Sistem tersebut dibangun dengan menggunakan metode waterfall dan metode certainty factor sebagai metode kepakarannya. Hasil dari penelitian ini adalah sistem pakar berbasis web untuk mendiagnosis tingkat gangguan kepribadian histerik. Sistem akan menampilkan nilai kepastian dan tingkat gangguan kepribadian histerik yang dialami pengguna, serta solusi penanganannya. Uji hasil kepakaran dilakukan dengan cara membandingkan hasil diagnosis dari sistem dengan hasil diagnosis dari pakar. Hasil uji kepakaran menunjukkan bahwa hasil diagnosis sistem sudah mendekati kebenaran dari diagnosis seorang pakar. Nilai prosentase sistem sebesar 83,01% dan nilai prosentase pakar sebesar 83,3%. Dengan adanya sistem pakar ini, masyarakat umum dapat melakukan diagnosis mandiri untuk mengetahui tingkat gangguan kepribadian histerik yang dialami serta penanganannya dengan mudah tanpa harus datang ke psikolog.', NULL, 'Rancang Bangun Sistem Pakar Untuk Mendiagnosis Gangguan Kepribadian Histerik Menggunakan Metode Certainty Factor.pdf', 2, '6', NULL, NULL, 0),
(229, 'Sistem Pakar Berbasis Web dengan Shell e2gLite untuk Diagnosis Penyakit Hati', '2004', 'TELKOMNIKA', 'Lina Handayani, Tole Sutikno', 'Dari sebuah studi empiris dihasilkan bahwa para ahli medis tidak selalu menghasilkan keputusan diagnosis yang optimal. Hal ini disebabkan karena banyaknya informasi yang harus diolah untuk membuat diagnosis medis yang optimal. Otak manusia memiliki kemampuan untuk menerima informasi, menganalisis, menggambarkan, menciptakan, berkonsentrasi, dan berpikir, namun akan sangat terbatas apabila digunakan untuk menyimpan sejumlah besar\r\nfakta-fakta secara permanen, memanggil fakta-fakta tersebut kembali dengan cepat dan tepat, serta menangani variabel-variabel yang berbeda pada saat yang bersamaan. Pada penelitian ini dirancang sistem pakar berbasis web dengan shell e2gLite yang dimaksudkan untuk membantu (bukan menggantikan) tugas-tugas para dokter serta melengkapi kemampuan para dokter tersebut dalam membuat keputusan yang optimal melalui pengolahan komputer. Untuk membuat sistem pakar berbasis web dengan shell e2gLite maka harus dibuat 2 buah file. File pertama adalah file halaman web yang berisi applet e2gLite, dan file kedua adalah file basis pengetahuan. Kedua file tersebut harus ditulis dengan format yang telah ditentukan oleh pembuat e2gLite. Sistem pakar berbasis web dengan e2gLite yang telah dikembangkan mempunyai keunggulan dalam kemudahan akses dan kemudahan pemakaian. Dengan fitur yang berbasis web yang dimiliki, sistem pakar dengan shell e2gLite untuk diagnosis penyakit hati yang telah dibangun dapat digunakan sebagai alat bantu untuk diagnosis penyakit hati.', NULL, 'Sistem Pakar Berbasis Web dengan Shell e2gLite untuk Diagnosis Penyakit Hati.pdf', 2, '6', NULL, NULL, 0),
(230, 'SISTEM PAKAR DIAGNOSIS PENYAKIT UNGGAS DENGAN METODE CERTAINTY FACTOR', '2010', 'CommIT (Communication and Information Technology) Journal', 'Siti Rohajawati, Rina Supriyati', 'The development of expert systems–based applications has been very popular since 1950, with a rather wide coverage. Expert systems in organizations are aimed at adding value, increasing productivity and assisting management to take quick decisions. Similarly, organization engaging in the farming industry, while very promising, requires high awareness against diseases, such as poultry (chicken) which are very susceptible to various types of diseases caused by viruses or bacteria. Benefits of implementing the expert system are that they can diagnose the symptoms of diseases quickly and accurately and they are expected to be able to help farmers in anticipating the losses resulting from disease attack. Accurate and precise calculations are required to diagnose symptoms in order to conclude the output by means of the Certainty Factors (CFs)', NULL, 'SISTEM PAKAR DIAGNOSIS PENYAKIT UNGGAS DENGAN METODE CERTAINTY FACTOR.pdf', 2, '6', NULL, NULL, 0),
(231, 'Sistem Pakar untuk Mengidentifikasi Jenis Kulit Wajah dengan Metode Certainty Factor', '2019', 'INTENSIF', 'Indyah Hartami Santi, Bina Andari', 'Peran ahli kecantikan wajah sangat penting untuk mengidentifikasi jenis kulit wajah serta memberikan solusi perawatan yang tepat untuk setiap jenis kulit wajah. Dari ini, sistem pakar diperlukan untuk membantu memberikan solusi dengan membangun sistem pakar yang dapat mengidentifikasi jenis kulit wajah dengan memasukkan solusi perawatan. Metode Certainty Factor memilih berdasarkan pertimbangan dalam proses perhitungan, dan metode ini mencari kombinasi nilai kepercayaan tertinggi. Pada awal studi pengumpulan data dilakukan pada 40 responden wanita yang diperoleh 100% responden tidak memahami jenis kulit wajah dan 76% mengatakan mereka membutuhkan ahli, 95% membutuhkan aplikasi sistem pakar. Sementara hasil penilaian sistem aplikasi yang telah dibangun oleh responden menyatakan bahwa 88% dari desain sistem sangat baik dan sangat baik 91% dari sistem mudah digunakan, dan 98% mengatakan operasi itu dengan apa yang dibutuhkan.', NULL, 'Sistem Pakar untuk Mengidentifikasi Jenis Kulit Wajah dengan Metode Certainty Factor.pdf', 2, '6', NULL, NULL, 0),
(235, 'Implementasi Penggunaan Kecerdasan Buatan Dalam Pembentukan Peraturan Daerah', '2020', 'Jurnal Nasional Akreditasi SINTA 2 Surat Keputusan Kemenristekdikti: No: 34/E/KPT/2018', 'Eka N. A. M. Sihombing, Muhammad Yusrizal Adi S.', 'Penggunaan kecerdasan buatan dalam proses pembentukan perda di era revolusi industri 4.0\r\nseolah mendapatkan pembenaran guna meminimalisir disharmoni antara peraturan daerah dengan\r\nberbagai peraturan perundang-undangan lainnya. Namun penggunaan Kecerdasan buatan tidak\r\ndapat serta merta menggantikan kewenangan organ pembentuk perda secara menyeluruh, tentunya\r\nhal ini masih menimbulkan perdebatan. Permasalahan yang diangkat dalam tulisan ini adalah\r\nBagaimana implementasi penggunaan kecerdasan buatan dalam pembentukan Peraturan Daerah?\r\nMetode penelitian yang digunakan adalah yuridis normatif, dalam konteks penelitian ini juga akan\r\ndilihat apakah penggunaan kecerdasan buatan dalam proses pembentukan Perda memiliki\r\npijakan secara teoritis yang diutarakan para ahli, maupun basis yuridis dalam berbagai\r\nperaturan perundang-undangan. Hasil penelitian menunjukkan bahwa penggunaan kecerdasan\r\nbuatan dalam proses pembentukan perda tidak serta merta dapat menggantikan peran dan fungsi\r\norgan pembentuk perda. Penggunaan kecerdasan buatan dalam proses pembentukan perda\r\ndiposisikan hanya sebatas alat bantu yang dapat memprediksi potensi disharmoni antara perda\r\ndan berbagai peraturan perundang-undangan lainnya. Untuk mengakomodir pengunaan AI dalam\r\nProses pembentukan perda diperlukan perubahan terhadap UUP3, UU Pemda dan peraturan\r\nperundang-undangan turunannya yang berkaitan dengan pembentukan perda', NULL, 'Implementasi Penggunaan Kecerdasan Buatan Dalam Pembentukan Peraturan Daerah.pdf', 2, '12', NULL, NULL, 0),
(252, 'Implementasi Logika Fuzzy pada Sistem Kecerdasan Buatan', '2012', 'Jurnal ELKHA', 'Helfi Nasution', 'This  paper  is  an  explanation  of  fuzzy  logic. \r\nFuzzy  logic  have  knew  for  long  time  and  used  in  many \r\nfields  by  experts  and  engineers.  In  the  beginning,  fuzzy \r\nlogic was used in some fields, only, like diseases \r\ndiagnose  system  (in  madicine);  modelling  of  marketing \r\nsystem, operation riset (on economics); control of water \r\nquality, prediction of earthquake, classification and \r\npattern recognition (in enginnering). Using of fuzzy \r\nlogic  in  power  system  area  have  already  done  too,  like \r\nprobibility  analysis,  prediction  and  control  of  loads, \r\nidentification of generator faults dan schedulling of \r\ngenerator maintenance. This paper is explained the \r\napplication of fuzzy logic in the field of artificial \r\nintelligence.', NULL, 'Implementasi Logika Fuzzy pada Sistem Kecerdasan Buatan.pdf', 2, '12', NULL, NULL, 0),
(253, 'Pembuatan Sistem Informasi Sekolah Berbasis Website', '2021', 'ULM', 'Anang', 'Sistem Informasi sangat diperlukan pada zaman sekarang', NULL, 'Pembuatan Sistem Informasi Sekolah Berbasis Website.pdf', 2, '9', NULL, NULL, 0),
(254, 'Artificial Intelligence Edisi 3', '2021', 'Informatika', 'Suyanto', NULL, 'Artificial Intelligence Edisi 3.png', 'Artificial Intelligence Edisi 3.pdf', 1, '12', NULL, NULL, 0),
(255, 'Hacking The Art Of Exploitation', '2021', '2ND Edition', 'Jon Erickson', NULL, 'Hacking The Art Of Exploitation.png', 'Hacking The Art Of Exploitation.pdf', 1, '8', NULL, NULL, 0),
(256, 'Art Of Invisibility : The World\'s Most Famous Hacker Teachers How To Be Safe In The Age of Big Brother and Big Data', '2021', 'Luar Negri', 'Kevin Mtnick', NULL, 'Art Of Invisibility : The World\'s Most Famous Hacker Teachers How To Be Safe In The Age of Big Brother and Big Data.png', 'Art Of Invisibility : The World\'s Most Famous Hacker Teachers How To Be Safe In The Age of Big Brother and Big Data.pdf', 1, '12', NULL, NULL, 0),
(257, 'Computer Vision for Visual Effects', '2021', 'Luar Negri', 'Richard J.', NULL, 'Computer Vision for Visual Effects.png', 'Computer Vision for Visual Effects.pdf', 1, '3', NULL, NULL, 0),
(258, 'Data Science for Business', '2021', 'Luar Ngeri', 'Foster Provost & Tom Fawcett', NULL, 'Data Science for Business.png', 'Data Science for Business.pdf', 1, '1', NULL, NULL, 0),
(259, 'Interaction Design – Beyond Human-Computer Interaction', '2002', 'Mentari', 'Garry Perlman', NULL, 'Interaction Design – Beyond Human-Computer Interaction.png', 'Interaction Design – Beyond Human-Computer Interaction.pdf', 1, '4', NULL, NULL, 0),
(260, 'Aplikasi Internet of Things (IoT) dengan Arduino dan Android', '2019', 'Politeknik Elektronika Negeri Surabaya', 'Sigit Wasista, Setiawardhana, Delima Ayu Saraswati & Eko Susanto', NULL, 'Aplikasi Internet of Things (IoT) dengan Arduino dan Android.png', 'Aplikasi Internet of Things (IoT) dengan Arduino dan Android.pdf', 1, '7', NULL, NULL, 0),
(261, 'Introduction to Machine Learning with Python', '2021', 'A Guide For Data Scientists', 'Andreas C. Muller & Sarah Guido', NULL, 'Introduction to Machine Learning with Python.png', 'Introduction to Machine Learning with Python.pdf', 1, '2', NULL, NULL, 0),
(262, 'Sistem Informasi Berbasis Expert System', '2021', 'PT. Ganesha', 'Ganesha Gan', NULL, 'Sistem Informasi Berbasis Expert System.png', 'Sistem Informasi Berbasis Expert System.pdf', 1, '6', NULL, NULL, 0),
(263, 'Lean UX Applying lean Principles to Improve User Experience', '2021', 'Series Editor', 'Eric Ries', NULL, 'Lean UX Applying lean Principles to Improve User Experience.png', 'Lean UX Applying lean Principles to Improve User Experience.pdf', 1, '5', NULL, NULL, 0),
(306, 'ANALISIS USABILITY PADA APLIKASI PEDULI LINDUNGI SEBAGAI APLIKASI INFORMASI DAN TRACKING COVID-19 DENGAN HEURISTIC EVALUATION', '2020', 'Penerbit', 'Penulis', 'Abstrak', NULL, 'ANALISIS USABILITY PADA APLIKASI PEDULI LINDUNGI SEBAGAI APLIKASI INFORMASI DAN TRACKING COVID-19 DENGAN HEURISTIC EVALUATION.pdf', 2, '4,2', NULL, NULL, 2),
(307, 'A scientific evaluation of autonomous vechile user experience on sighted and visually impaired passengers based on FACS and a usern experience questionnaire', '2021', 'IEEE Access', 'rizka jugaa', 'rizka aja', 'A scientific evaluation of autonomous vechile user experience on sighted and visually impaired passengers based on FACS and a usern experience questionnaire.jpg', 'A scientific evaluation of autonomous vechile user experience on sighted and visually impaired passengers based on FACS and a usern experience questionnaire.pdf', 2, '12,3,8', 15, NULL, 3),
(308, 'Buku Kecerdasan buatan Saha', '2021', 'Sinar Muliaq', 'Agung Hapsah', 'wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww', NULL, 'Buku Kecerdasan buatan Saha.pdf', 2, '12,3,8', NULL, NULL, 2),
(309, 'Buku Kecerdasan buatan Saha die', '2019', 'Sinar Mulia', 'Agung Hapsah', 'qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq', NULL, 'Buku Kecerdasan buatan Saha die.pdf', 2, '12,3,8', NULL, NULL, 2),
(311, 'Data mining dan Data Dataan', '2021', 'Gramedia', 'Mutia Maulida', 'oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo', 'Data mining dan Data Dataan.jpg', 'Data mining dan Data Dataan.pdf', 1, '12', 15, NULL, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `dosen`
--

CREATE TABLE `dosen` (
  `id_dosen` int(11) NOT NULL,
  `nama_dosen` varchar(255) NOT NULL,
  `username_dosen` varchar(255) NOT NULL,
  `password_dosen` varchar(255) NOT NULL,
  `link_dosen` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `dosen`
--

INSERT INTO `dosen` (`id_dosen`, `nama_dosen`, `username_dosen`, `password_dosen`, `link_dosen`) VALUES
(3, 'Yuslena Sari', '198411202015042002', '711c57a6facb3e7a1e0e3defcf820afb', 'https://scholar.google.com/citations?user=vslOA2cAAAAJ&hl=id&oi=ao'),
(12, 'Muhammad Alkaff', '198606132015041001', '25d55ad283aa400af464c76d713c07ad', 'https://scholar.google.com/citations?user=ksexJ1YAAAAJ&hl=id&oi=ao'),
(13, 'Eka Setya Wijaya', '198205082008011010', '25d55ad283aa400af464c76d713c07ad', 'https://scholar.google.com/citations?user=PbUlyksAAAAJ&hl=id'),
(14, 'Andreyan Rizky Baskara', '199307032019031011', '25d55ad283aa400af464c76d713c07ad', 'https://scholar.google.com/citations?user=r-2_s2EAAAAJ&hl=id'),
(15, 'Mutia Maulida', '198810272019032013', '754c4d87237799c965693fea902bf32c', 'https://scholar.google.com/citations?user=udur75AAAAAJ&hl=id'),
(16, 'Nurul Fathanah Mustamin', '199110252019032018', '25d55ad283aa400af464c76d713c07ad', 'https://scholar.google.com/citations?user=4zm-am8AAAAJ&hl=id'),
(17, 'Andry Fajar Zulkarnain', '199007272019031018', '25d55ad283aa400af464c76d713c07ad', 'https://scholar.google.com/citations?user=ZZrql3kAAAAJ&hl=id');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hak_akses`
--

CREATE TABLE `hak_akses` (
  `id_akses` int(11) NOT NULL,
  `akses` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `hak_akses`
--

INSERT INTO `hak_akses` (`id_akses`, `akses`) VALUES
(1, 'Bisa Diunduh Semua Pengguna'),
(2, 'Hanya Bisa Dilihat di Website'),
(3, 'Minta Verifikasi untuk akses');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(1, 'Buku'),
(2, 'Jurnal'),
(3, 'Skripsi'),
(4, 'Laporan PKL'),
(5, 'Laporan PK');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id_mhs` int(11) NOT NULL,
  `nama_mhs` varchar(255) NOT NULL,
  `angkatan_mhs` varchar(255) NOT NULL,
  `username_mhs` varchar(255) NOT NULL,
  `password_mhs` varchar(255) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`id_mhs`, `nama_mhs`, `angkatan_mhs`, `username_mhs`, `password_mhs`, `updated_at`, `created_at`) VALUES
(1, 'Putri Ananda', '2018', '1810817220008', '25d55ad283aa400af464c76d713c07ad', NULL, NULL),
(2, 'Rizka Ardiyanti', '2018', '1810817120008', 'b3325d95c93308761eb7a33c21dbf0a4', NULL, NULL),
(7, 'Ananda', '2018', '1810817120011', 'f4e552d5eb57318e1496c172e37339e4', NULL, NULL),
(18, 'Faridah', '2018', '1810817220015', 'f41fea6b8c1ccdfd0cb91839e5ae65e7', NULL, NULL),
(22, 'Ilham Ramadhan', '2020', '2010817810002', 'f6f71071d90317af9e6d9f3c9d788a28', NULL, NULL),
(23, 'Sonia Marselina', '2020', '2010817820003', 'adb06222ac16b8eb09f4db3e5508b0db', NULL, NULL),
(24, 'Hanif Naufal', '2015', 'H1G115208', '642d88615021c3641c234b6e161957c2', NULL, NULL),
(25, 'Arbaatun Luh Noviati', '2020', '2010817820001', '7f428410443e9e9838fbe379d2db41f4', NULL, NULL),
(26, 'Muhammad Reinaldi', '2016', '1610817210010', 'e4e0a859ba84534755f35f33f83ad3e1', NULL, NULL),
(27, 'Natasha Wahyuni', '2017', '1710817320008', '3d580978290d2a644c29eee64679999c', NULL, NULL),
(28, 'Galih Al Friyo', '2018', '1810817110001', 'e2cf395a4a4718cb2640c32bcb5eb753', NULL, NULL),
(29, 'Rizki Aprido Rosga', '2018', '1810817110002', '6a1e976af7523893938633e843e5e8d5', NULL, NULL),
(30, 'Taufik Nurhidayat', '2018', '1810817110015', '0e0d6e47eaa3324cdfa5cb7aef2faa9e', NULL, NULL),
(31, 'Noval Aprianda', '2018', '1810817110017', '44a9f8cdb9e4dcb25016c8fc794278da', NULL, NULL),
(32, 'Annisa', '2018', '1810817120004', '1f9501d5e4d0a19a69e69ada8ee13b37', NULL, NULL),
(33, 'M. Basri', '2018', '1810817210012', '7cedd25a910d08c1cb177deb3eea74cf', NULL, NULL),
(34, 'Sigit Hermawan', '2018', '1810817210018', '679ff51a7e5d41b14232d2e7fd619c8c', NULL, NULL),
(35, 'Muhammad Azmi Haidar', '2018', '1810817310003', 'bb594acb1d815894cbc63c2518013104', NULL, NULL),
(36, 'Aisyah Awaliyah', '2018', '1810817310007', 'bcb282a65d5d7a1e54135de684c8414a', NULL, NULL),
(37, 'Fasak Alam', '2019', '1910817210005', '5a04e9b069260eef2374771ac8542eaa', NULL, NULL),
(38, 'Maxillianus Putra Huya Sugan', '2019', '1910817210022', 'a96932b521afe9a4a52b3f6944b0c92a', NULL, NULL),
(39, 'Nina Hafizah', '2019', '1910817220010', 'a045d5d56a8afe3f07ce41a2dd1ae28b', NULL, NULL),
(40, 'Restu Untung Berkatni', '2019', '1910817310006', '4e0b9ddb288725f46766fa4032a52a53', NULL, NULL),
(41, 'Bi\'ahlil Haq Aulia Akbar Awaludin', '2020', '2010817110011', '3b2c6d1d53dc88f0a1e387604d1f537e', NULL, NULL),
(42, 'Muhammad Hasan Adli', '2020', '2010817210015', '076ccebd5a3d7fc11cd8736239399221', NULL, NULL),
(43, 'Muhammad Aulia Akbar', '2020', '2010817210023', 'aa6b8b50df209b908a8c37103ced8b41', NULL, NULL),
(44, 'Bachrul Uluum', '2020', '2010817210025', 'd30f064f39874f3758880d6d75d08527', NULL, NULL),
(45, 'Aurelia Monica Sari', '2020', '2010817220001', '4a4ee09af8173310baceaad17f15e0ea', NULL, NULL),
(46, 'Wenny Puspita', '2014', 'H1G114033', '4883dbf4c822ebf8cad49f90aa29e653', NULL, NULL),
(47, 'Greesciano Lepong Bulan', '2014', 'H1G114082', '3f7d1082a2b219c5f603accec58c3e77', NULL, NULL),
(48, 'Rizky Rakhmadani', '2014', 'H1G114205', 'caf5a70cf7e75283a454c6084fe65541', NULL, NULL),
(49, 'Halimah', '2015', 'H1G115207', '411a0d44ee7d613c28c73fcf1868d499', NULL, NULL),
(50, 'Miftahul Huda', '2015', 'H1G115215', 'c8e4bb3b9597f53e183334778bffa4bd', NULL, NULL),
(51, 'Naomi Sekariyanti', '2015', 'H1G115225', 'ce6d5ea26e4a957315a743ff1a5ee00c', NULL, NULL),
(52, 'Sadikin Nor', '2015', 'H1G115233', 'cfaaef356bb34eeb0b5489e3f09aca2c', NULL, NULL),
(54, 'Muhammad Irfan Setiawan Radam', '2016', '1610817110005', '54b0de484a2445afb315c18f09a8b447', NULL, NULL),
(55, 'Rizal Ismayadi', '2016', '1610817110007', '978e2ad102c2736458145bdb20c870c8', NULL, NULL),
(56, 'Achmad Nordiansyah', '2016', '1610817210001', 'f08ed4914bd1222779d5cf8fbc63cef7', NULL, NULL),
(57, 'Ahmad Ramadhaniel Ihsan', '2016', '1610817210002', 'b69e9f2df59590b5c639cec563e1aee5', NULL, NULL),
(58, 'Andi Cakra Dewa Buana', '2016', '1610817210003', '441e58f6425ad051944b4aaadf901baf', NULL, NULL),
(59, 'Fatahillah Chandra', '2016', '1610817210004', '8f97db074bd0bcec263e59f585c5774d', NULL, NULL),
(60, 'Hambali', '2016', '1610817210005', 'a607c429f1a97fa6ca25128185d6e223', NULL, NULL),
(61, 'Jiwana Legawananda', '2016', '1610817210007', 'babcc95a30ccc1b153f90df1ddac87ec', NULL, NULL),
(62, 'M. Nafis Ansyari', '2016', '1610817210008', '8d3c9ac92cee504f28d3e08738d3c295', NULL, NULL),
(63, 'Mochamad Fajar Al-amin', '2016', '1610817210009', '1e42b782348a08c33543aae80164dee5', NULL, NULL),
(64, 'Muhammad Rezqi Septiawan', '2016', '1610817210011', 'd71239ce5b4b5bdb324f9dc404888e58', NULL, NULL),
(65, 'Muhammad Yazid Fakhri', '2016', '1610817210012', 'db346592b96d990a5d32be0321ca979c', NULL, NULL),
(66, 'Rizky Fatra Wijaya', '2016', '1610817210016', 'de9736b8eae3165e09d6ec1ea0890aad', NULL, NULL),
(67, 'Abdul Ghofar', '2016', '1610817310001', 'f9fd9a73c713c266dfad95751682b668', NULL, NULL),
(68, 'Akbar Reforma Eriputra', '2016', '1610817310002', 'dbaf5f415869c00b0d6fafb9069a4adf', NULL, NULL),
(69, 'Bara Nugraha Putra Suryana', '2016', '1610817310003', 'dc3ca3be6a79c4045aa6ce05a10827ce', NULL, NULL),
(70, 'Muqaddas Iskandar', '2016', '1610817310006', 'bb0db128279984f2cfc48db37419416a', NULL, NULL),
(71, 'Sugiantoro', '2016', '1610817310008', '495025745627b7685f586114212d83c8', NULL, NULL),
(72, 'Ahmad Hadi', '2017', '1710817110001', '72ef1e390170bd0e213f2393593e1b62', NULL, NULL),
(73, 'Arief Rachman Hakim', '2017', '1710817110002', '084822587b5ca37920dc1033cae28c39', NULL, NULL),
(74, 'Daffa Cae Fawwaz Aryanta', '2017', '1710817110004', '73ff834ea502899d2df869f551f05370', NULL, NULL),
(75, 'M. Ibnu Madina', '2017', '1710817110006', '8f054805d52154e8a8ded7c72fa63ded', NULL, NULL),
(76, 'Mochamad Tri Ridho Permono', '2017', '1710817110007', 'ddb5523de9f52f78891e2be3d0de87fc', NULL, NULL),
(77, 'Muhammad Ihsan', '2017', '1710817110008', 'e1d7397bdc100abcefeb4e84f2aac17e', NULL, NULL),
(78, 'Muhammad Iqbal Rizqi', '2017', '1710817110009', '4a7df775281721584955796ae5ffbb59', NULL, NULL),
(79, 'Dahliana', '2017', '1710817120005', '966cf8c3586d09aeef6a122582e1178e', NULL, NULL),
(80, 'Nor Hafija Alfiah', '2017', '1710817120010', '4385f2e45def93d5cb9d60cfb89d937a', NULL, NULL),
(81, 'Nurul Huda', '2017', '1710817120013', 'b7b2c74f4f5cdd021b532319e916f12c', NULL, NULL),
(82, 'Rahimanisa', '2017', '1710817120015', '4d39076bb879f55dc3e6a8a112c11a80', NULL, NULL),
(83, 'Ahmad Al Ghiffari', '2017', '1710817210001', '7399b726507cf854380a88549d914125', NULL, NULL),
(84, 'Ahmad Naufal', '2017', '1710817210002', '3bf388110e8d52bc358d84fbc949df1a', NULL, NULL),
(85, 'Bagus Sriyono', '2017', '1710817210003', 'b380a27a246f88467a440f843f523f79', NULL, NULL),
(86, 'Dwi Bastiyan Heriyanto', '2017', '1710817210004', '35ac22d174f3f5f1c3a2ec9cccc1f7b3', NULL, NULL),
(87, 'Jodi Lee Saputro', '2017', '1710817210005', '736bc9c990f79c2fc842e069557fc58f', NULL, NULL),
(88, 'Muhammad Ekky Subagya', '2017', '1710817210006', '8e02e3a39ad9062f4982a9805d01fcc2', NULL, NULL),
(89, 'Muhammad Fahrialdi', '2017', '1710817210007', '807a82af541df416c354b940283293a3', NULL, NULL),
(90, 'Muhammad Faisol', '2017', '1710817210008', '67b87f463ee2766d2b9826749964b0c9', NULL, NULL),
(91, 'Muhammad Fajar Maulani Noor', '2017', '1710817210009', 'ba6b6fdae389ad9f93e8ded23da3068f', NULL, NULL),
(92, 'Muhammad Rafi Briliansyah R', '2017', '1710817210010', '124f9a72d6b692410cb45d7a849dcdcc', NULL, NULL),
(93, 'Muhammad Rifky Ferdian', '2017', '1710817210011', '142c4c5c7052b7a1800ff8e4a697249e', NULL, NULL),
(94, 'Muhammad Rifqi', '2017', '1710817210012', 'bda39b981d7c0dc33bd61cbb6e49752c', NULL, NULL),
(95, 'Muhammad Sulthan Alfarisy', '2017', '1710817210013', 'b62f389d7f22296a8cc18158d2af7ee3', NULL, NULL),
(96, 'Rian Ridhani', '2017', '1710817210014', '38e5d20bf8bbdd39f9e02de25a31b334', NULL, NULL),
(97, 'Sherly Damaiyanti', '2017', '1710817220015', 'c4936904d48a8fb28b0299bf77b0e450', NULL, NULL),
(98, 'Vicka Karina', '2017', '1710817220016', '04165113e3ca05c0d83d9d4514781a4e', NULL, NULL),
(99, 'Achyar Zulfaqor Ridha', '2017', '1710817310001', 'e551fcd59cb58e6be7be761da89fb5ba', NULL, NULL),
(100, 'Muhammad Anshari', '2017', '1710817310003', 'a711b69bfcc7d6baba7530962baf6d59', NULL, NULL),
(101, 'Muhammad Dhafin Fadhillah', '2017', '1710817310004', '5a0e692780396f51da367d1210740c4d', NULL, NULL),
(102, 'Muhammad Khairul Rahman', '2017', '1710817310005', '3cabe276cf6911e3f57c708a61f01078', NULL, NULL),
(103, 'Muhammad Ridhani', '2017', '1710817310006', 'f20c318573af8fc87bc4c31cf895799a', NULL, NULL),
(104, 'Yogha Isnanto', '2017', '1710817310010', '6c4db1fb31e7130e39ee763ace5c26b5', NULL, NULL),
(105, 'Ryan Ramel', '2018', '1810817110005', '43f2ffe77f0999196ec032bbbfd30bed', NULL, NULL),
(106, 'Ferry Pratama', '2018', '1810817110018', '3012fef35c078e3b3d8447ba305fbf1c', NULL, NULL),
(107, 'Silvia Handayani', '2018', '1810817120003', 'e3002b9209bbfc6ebd12c1b03883b2be', NULL, NULL),
(108, 'Siti Rohmah', '2018', '1810817120006', '3f28f51954d30252adc2765e9f370043', NULL, NULL),
(109, 'Adita Lia Damayanti', '2018', '1810817120010', 'df2897974ee0e8a0366f23b1767d6ac0', NULL, NULL),
(110, 'Siti Mahmudah', '2018', '1810817120012', 'f4f288e0666a4eb101e58d8c9ec5230c', NULL, NULL),
(111, 'Nur Widya Anisa Muslim', '2018', '1810817120013', 'eeac30410d17f84f762b67e3011bf9ad', NULL, NULL),
(112, 'Noviani', '2018', '1810817120014', 'eb5903a3671489f5583129129cfb22d7', NULL, NULL),
(113, 'Eldy Yuda Kurniawan', '2018', '1810817210001', '32d08856c57923abbf6e2f679bb91fee', NULL, NULL),
(114, 'Muhammad Noorsalim', '2018', '1810817210004', 'b9025d44093f71087419eb8c8c9c4faf', NULL, NULL),
(115, 'Aji Sukma Ramadhan', '2018', '1810817210006', '8652376c8e31bbc6f0aa990401f52752', NULL, NULL),
(116, 'Adytia Dwi Hermawan', '2018', '1810817210007', '08886e8dc25b13e863a69d700320034e', NULL, NULL),
(117, 'Mahrudin', '2018', '1810817210010', '1296d099bcebd6d81dd8ea4611de42a1', NULL, NULL),
(118, 'Gusti Aditya Aromatica Firdaus', '2018', '1810817210013', '4f94423664638ec141ad369d02b90477', NULL, NULL),
(119, 'Muhammad Tri Madya Lestiyanto', '2018', '1810817210014', 'e6507bcae6b35d0b933c7bfbf5f9f037', NULL, NULL),
(120, 'Rezi Rahdianor', '2018', '1810817210019', 'd783af767c84f551db03e602b6aee465', NULL, NULL),
(121, 'Muhammad Rizal', '2018', '1810817210020', '7730150e8e5cf4df6206478e8c1fed5a', NULL, NULL),
(122, 'Siti Sheilawati', '2018', '1810817220009', '63709289fdc9a4065cbcda934a812724', NULL, NULL),
(123, 'Erika Maulidiya', '2018', '1810817220017', '0f257a17b164fa0d349bec8bb7d6dbcf', NULL, NULL),
(124, 'Evi', '2018', '1810817220021', '1a102f2ad5f322fe49e4a8e6e8326516', NULL, NULL),
(125, 'Nurul Hikmah', '2019', '1810817220022', '49b90068c7e8acc059e968d33826cd13', NULL, NULL),
(126, 'Muhammad Azzam Bagaswara', '2018', '1810817310002', 'b9e64774cfaddf7fc03c45d5fb37b931', NULL, NULL),
(127, 'Muhammad Dimas Prima Al Fathusshafa', '2018', '1810817310004', '789a61a0705e0abd2e42dc5b1486dcfd', NULL, NULL),
(128, 'Muhammad Zildhan Reynaldi', '2018', '1810817310006', 'f4a912811847217bf21b0441e26e5017', NULL, NULL),
(129, 'Fazrianor', '2018', '1810817310009', '0d9183d9d92ccadca108ae0935b3e25f', NULL, NULL),
(130, 'Muhammad RIfqi Hanif Fiskia Nur', '2018', '1810817310010', 'a5eed544ef6a2956a58550c27d10c5e9', NULL, NULL),
(131, 'Mochamad Aden Ardiansyah', '2018', '1810817310011', 'c31bd506383f836e8d360cd828585b87', NULL, NULL),
(132, 'Ainiyyah', '2018', '1810817320001', '7c353cff1f410cbb7eee6013b4ad023a', NULL, NULL),
(133, 'Chrisanto Puae Burongan', '2018', '1810817710001', '446da2c5b1adc8a979a454cc1d787907', NULL, NULL),
(134, 'Siti Viona Indah Swari', '2018', '1810817220011', '6fd809e6c70f699530cdad6ccb8ccdd1', NULL, NULL),
(135, 'Muhammad Rizky Maulana', '2019', '1910817210007', '94ba60a184eb13441c6e3a2b1c8c32a3', NULL, NULL),
(136, 'Akhmad Ridwan Yusuf', '2020', '2010817210020', '7a70e19efd3094cea23a0a437cebb51a', NULL, NULL),
(137, 'Fatur Rahman', '2020', '2010817310018', 'dabe2841608ab17b3976e3463700b099', NULL, NULL),
(139, 'Windi Wulandari', '2018', '1810817120009', 'bc3a0af5f430da07b9e93b0bd4b38dbd', NULL, NULL),
(140, 'ISMI VIDIYA', '2014', 'H1G114005', 'c52853de6d70e9bcd0475da7076c3835', '2021-10-09 14:23:29', '2021-10-09 14:23:29'),
(141, 'M RIKO ANSHORI PRASETYA', '2014', 'H1G114006', 'ab2dc39222656fd14ed192ea673e7ee8', '2021-10-09 14:23:29', '2021-10-09 14:23:29'),
(142, 'DEWI RIZQIA NAJIPAH', '2014', 'H1G114009', '1ef9b5543a1825eff7fe4984a973eed1', '2021-10-09 14:23:29', '2021-10-09 14:23:29'),
(143, 'M. RASYID RIDHA', '2014', 'H1G114011', '94a4d3dfb4646fa276197047e72a3d7a', '2021-10-09 14:23:29', '2021-10-09 14:23:29'),
(144, 'RYAN MAULANA', '2014', 'H1G114018', '11abfc23e7089675d496884f126c4dbd', '2021-10-09 14:23:29', '2021-10-09 14:23:29'),
(145, 'MUHAMMAD NUR RIZQAN', '2014', 'H1G114019', '9d69b44c916c2440ee0d6b0abf84ab7e', '2021-10-09 14:23:29', '2021-10-09 14:23:29'),
(146, 'EFNU SAPUTRO', '2014', 'H1G114021', 'be3ce552aaefaa5fbd279c047fd10e3e', '2021-10-09 14:23:29', '2021-10-09 14:23:29'),
(147, 'RIZKY AWLIA FAJRIN', '2014', 'H1G114022', '88364eb577a9bad710c89121c795604d', '2021-10-09 14:23:29', '2021-10-09 14:23:29'),
(148, 'AKHMAD RIVALDY', '2014', 'H1G114027', '23bf4c4e0899f6a9f04ad8cd6c1e1900', '2021-10-09 14:23:29', '2021-10-09 14:23:29'),
(149, 'RIKA NORJANAH', '2014', 'H1G114030', 'fff25e55347b3452f5bd3cf5e56e23d7', '2021-10-09 14:23:29', '2021-10-09 14:23:29'),
(150, 'NOVI RUSIANA', '2014', 'H1G114031', 'e095a900e4edaa7efd50bc30166f5858', '2021-10-09 14:23:29', '2021-10-09 14:23:29'),
(151, 'MUKARRAMAH', '2014', 'H1G114032', 'd1caa65ce3ace69595223d7614c9cf12', '2021-10-09 14:23:29', '2021-10-09 14:23:29'),
(152, 'MUHAMMAD TAMJIDI', '2014', 'H1G114036', '8a04f05cf2bedb587702553599ce10ba', '2021-10-09 14:23:29', '2021-10-09 14:23:29'),
(153, 'YANUARY YULISTIAN PUTRA', '2014', 'H1G114037', 'edef59c45c18a71f099e91dba05d6545', '2021-10-09 14:23:29', '2021-10-09 14:23:29'),
(154, 'FIRDAUS AKMAL', '2014', 'H1G114038', '7feef397882ceaab168badb3cbf28be4', '2021-10-09 14:23:29', '2021-10-09 14:23:29'),
(155, 'AKHMAD ROJALI', '2014', 'H1G114039', 'ecad4f473ec554c71817975f5444759c', '2021-10-09 14:23:29', '2021-10-09 14:23:29'),
(156, 'NUR LATHIFAH', '2014', 'H1G114040', '37f471032cf7162db170cbf336a18aa6', '2021-10-09 14:23:29', '2021-10-09 14:23:29'),
(157, 'PUJA DARMAWAN', '2014', 'H1G114043', '8a30877a4b0e0e81298b5d97fddec15d', '2021-10-09 14:23:29', '2021-10-09 14:23:29'),
(158, 'BUDI HARYADI', '2014', 'H1G114044', 'deb15f519c33bc3bba5b1d7101c94ad0', '2021-10-09 14:23:29', '2021-10-09 14:23:29'),
(159, 'FUNGKY ARYA', '2014', 'H1G114046', '055ec0db496a07ba7e396165853ac229', '2021-10-09 14:23:29', '2021-10-09 14:23:29'),
(160, 'ISMI VIDIYA', '2014', 'H1G114005', 'c52853de6d70e9bcd0475da7076c3835', '2021-10-09 14:24:36', '2021-10-09 14:24:36'),
(161, 'M RIKO ANSHORI PRASETYA', '2014', 'H1G114006', 'ab2dc39222656fd14ed192ea673e7ee8', '2021-10-09 14:24:36', '2021-10-09 14:24:36'),
(162, 'DEWI RIZQIA NAJIPAH', '2014', 'H1G114009', '1ef9b5543a1825eff7fe4984a973eed1', '2021-10-09 14:24:36', '2021-10-09 14:24:36'),
(163, 'M. RASYID RIDHA', '2014', 'H1G114011', '94a4d3dfb4646fa276197047e72a3d7a', '2021-10-09 14:24:36', '2021-10-09 14:24:36'),
(164, 'RYAN MAULANA', '2014', 'H1G114018', '11abfc23e7089675d496884f126c4dbd', '2021-10-09 14:24:36', '2021-10-09 14:24:36'),
(165, 'MUHAMMAD NUR RIZQAN', '2014', 'H1G114019', '9d69b44c916c2440ee0d6b0abf84ab7e', '2021-10-09 14:24:36', '2021-10-09 14:24:36'),
(166, 'EFNU SAPUTRO', '2014', 'H1G114021', 'be3ce552aaefaa5fbd279c047fd10e3e', '2021-10-09 14:24:36', '2021-10-09 14:24:36'),
(167, 'RIZKY AWLIA FAJRIN', '2014', 'H1G114022', '88364eb577a9bad710c89121c795604d', '2021-10-09 14:24:36', '2021-10-09 14:24:36'),
(168, 'AKHMAD RIVALDY', '2014', 'H1G114027', '23bf4c4e0899f6a9f04ad8cd6c1e1900', '2021-10-09 14:24:36', '2021-10-09 14:24:36'),
(169, 'RIKA NORJANAH', '2014', 'H1G114030', 'fff25e55347b3452f5bd3cf5e56e23d7', '2021-10-09 14:24:36', '2021-10-09 14:24:36'),
(170, 'NOVI RUSIANA', '2014', 'H1G114031', 'e095a900e4edaa7efd50bc30166f5858', '2021-10-09 14:24:36', '2021-10-09 14:24:36'),
(171, 'MUKARRAMAH', '2014', 'H1G114032', 'd1caa65ce3ace69595223d7614c9cf12', '2021-10-09 14:24:36', '2021-10-09 14:24:36'),
(172, 'MUHAMMAD TAMJIDI', '2014', 'H1G114036', '8a04f05cf2bedb587702553599ce10ba', '2021-10-09 14:24:36', '2021-10-09 14:24:36'),
(173, 'YANUARY YULISTIAN PUTRA', '2014', 'H1G114037', 'edef59c45c18a71f099e91dba05d6545', '2021-10-09 14:24:36', '2021-10-09 14:24:36'),
(174, 'FIRDAUS AKMAL', '2014', 'H1G114038', '7feef397882ceaab168badb3cbf28be4', '2021-10-09 14:24:36', '2021-10-09 14:24:36'),
(175, 'AKHMAD ROJALI', '2014', 'H1G114039', 'ecad4f473ec554c71817975f5444759c', '2021-10-09 14:24:36', '2021-10-09 14:24:36'),
(176, 'NUR LATHIFAH', '2014', 'H1G114040', '37f471032cf7162db170cbf336a18aa6', '2021-10-09 14:24:36', '2021-10-09 14:24:36'),
(177, 'PUJA DARMAWAN', '2014', 'H1G114043', '8a30877a4b0e0e81298b5d97fddec15d', '2021-10-09 14:24:36', '2021-10-09 14:24:36'),
(178, 'BUDI HARYADI', '2014', 'H1G114044', 'deb15f519c33bc3bba5b1d7101c94ad0', '2021-10-09 14:24:36', '2021-10-09 14:24:36'),
(179, 'FUNGKY ARYA', '2014', 'H1G114046', '055ec0db496a07ba7e396165853ac229', '2021-10-09 14:24:36', '2021-10-09 14:24:36'),
(182, 'ISMI VIDIYA', '2014', 'H1G114005', 'c52853de6d70e9bcd0475da7076c3835', '2021-10-12 04:59:59', '2021-10-12 04:59:59'),
(183, 'M RIKO ANSHORI PRASETYA', '2014', 'H1G114006', 'ab2dc39222656fd14ed192ea673e7ee8', '2021-10-12 04:59:59', '2021-10-12 04:59:59'),
(184, 'DEWI RIZQIA NAJIPAH', '2014', 'H1G114009', '1ef9b5543a1825eff7fe4984a973eed1', '2021-10-12 04:59:59', '2021-10-12 04:59:59'),
(185, 'M. RASYID RIDHA', '2014', 'H1G114011', '94a4d3dfb4646fa276197047e72a3d7a', '2021-10-12 04:59:59', '2021-10-12 04:59:59'),
(186, 'RYAN MAULANA', '2014', 'H1G114018', '11abfc23e7089675d496884f126c4dbd', '2021-10-12 04:59:59', '2021-10-12 04:59:59'),
(187, 'MUHAMMAD NUR RIZQAN', '2014', 'H1G114019', '9d69b44c916c2440ee0d6b0abf84ab7e', '2021-10-12 04:59:59', '2021-10-12 04:59:59'),
(188, 'EFNU SAPUTRO', '2014', 'H1G114021', 'be3ce552aaefaa5fbd279c047fd10e3e', '2021-10-12 04:59:59', '2021-10-12 04:59:59'),
(189, 'RIZKY AWLIA FAJRIN', '2014', 'H1G114022', '88364eb577a9bad710c89121c795604d', '2021-10-12 04:59:59', '2021-10-12 04:59:59'),
(190, 'AKHMAD RIVALDY', '2014', 'H1G114027', '23bf4c4e0899f6a9f04ad8cd6c1e1900', '2021-10-12 04:59:59', '2021-10-12 04:59:59'),
(191, 'RIKA NORJANAH', '2014', 'H1G114030', 'fff25e55347b3452f5bd3cf5e56e23d7', '2021-10-12 04:59:59', '2021-10-12 04:59:59'),
(192, 'NOVI RUSIANA', '2014', 'H1G114031', 'e095a900e4edaa7efd50bc30166f5858', '2021-10-12 04:59:59', '2021-10-12 04:59:59'),
(193, 'MUKARRAMAH', '2014', 'H1G114032', 'd1caa65ce3ace69595223d7614c9cf12', '2021-10-12 04:59:59', '2021-10-12 04:59:59'),
(194, 'MUHAMMAD TAMJIDI', '2014', 'H1G114036', '8a04f05cf2bedb587702553599ce10ba', '2021-10-12 04:59:59', '2021-10-12 04:59:59'),
(195, 'YANUARY YULISTIAN PUTRA', '2014', 'H1G114037', 'edef59c45c18a71f099e91dba05d6545', '2021-10-12 04:59:59', '2021-10-12 04:59:59'),
(196, 'FIRDAUS AKMAL', '2014', 'H1G114038', '7feef397882ceaab168badb3cbf28be4', '2021-10-12 04:59:59', '2021-10-12 04:59:59'),
(197, 'AKHMAD ROJALI', '2014', 'H1G114039', 'ecad4f473ec554c71817975f5444759c', '2021-10-12 04:59:59', '2021-10-12 04:59:59'),
(198, 'NUR LATHIFAH', '2014', 'H1G114040', '37f471032cf7162db170cbf336a18aa6', '2021-10-12 04:59:59', '2021-10-12 04:59:59'),
(199, 'PUJA DARMAWAN', '2014', 'H1G114043', '8a30877a4b0e0e81298b5d97fddec15d', '2021-10-12 04:59:59', '2021-10-12 04:59:59'),
(200, 'BUDI HARYADI', '2014', 'H1G114044', 'deb15f519c33bc3bba5b1d7101c94ad0', '2021-10-12 04:59:59', '2021-10-12 04:59:59'),
(201, 'FUNGKY ARYA', '2014', 'H1G114046', '055ec0db496a07ba7e396165853ac229', '2021-10-12 04:59:59', '2021-10-12 04:59:59'),
(236, 'Baco baco', '2018', '-539248398', '016719e165a2e671fdcf810b69ac30f4', '2021-11-05 04:26:20', '2021-11-05 04:26:20'),
(238, 'siti', '2019', '-1600102839', 'feb4805225778a0aa6ae3c7cb796c04f', '2021-11-09 06:33:56', '2021-11-09 06:33:56'),
(239, 'fikri', '2019', '207051531', '03d93ae237912b4b192f9afeafd3164b', '2021-11-09 06:33:56', '2021-11-09 06:33:56'),
(247, 'Nama', '2018', '123456781', 'feb8dc0697a2e0a947c6e20dc4ec3ebc', '2021-11-15 00:58:05', '2021-11-15 00:58:05'),
(248, 'Namaa', '2018', '123456782', '60ffe97e10dbeb5f03f8dfc4a53ac466', '2021-11-15 00:58:05', '2021-11-15 00:58:05'),
(249, 'Namaaa', '2018', '123456783', '5fa3efef8e662269245e95fe1886d0f2', '2021-11-15 00:58:05', '2021-11-15 00:58:05'),
(250, 'Namaaaa', '2018', '123456784', 'afc83554e5dfdd5a13727f44d6bddd5d', '2021-11-15 00:58:05', '2021-11-15 00:58:05'),
(251, 'Namaaaa', '2018', '123456785', '34ba926b359333348bb612e1c814275b', '2021-11-15 00:58:05', '2021-11-15 00:58:05'),
(252, 'Naamaa', '2018', '123456786', '84f7cde225c7613e4f6a2eeda8d6f087', '2021-11-15 00:58:05', '2021-11-15 00:58:05'),
(253, 'Naama', '2018', '123456787', '537816413185d5e09a471933aa10335c', '2021-11-15 00:58:05', '2021-11-15 00:58:05'),
(254, 'Name', '2018', '123456788', 'f5f091a697cd91c4170cda38e81f4b1a', '2021-11-15 00:58:05', '2021-11-15 00:58:05'),
(255, 'Name', '2018', '123456789', '25f9e794323b453885f5181f1b624d0b', '2021-11-15 00:58:05', '2021-11-15 00:58:05'),
(256, 'Name', '2018', '123456790', '00fb5ae2c336975f3519c9bba16ba4c8', '2021-11-15 00:58:05', '2021-11-15 00:58:05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `masukan`
--

CREATE TABLE `masukan` (
  `id_masukan` int(11) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `komentar` text NOT NULL,
  `jenis_masukan` varchar(255) NOT NULL,
  `id_dosen` int(11) DEFAULT NULL,
  `id_mhs` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `masukan`
--

INSERT INTO `masukan` (`id_masukan`, `nama`, `komentar`, `jenis_masukan`, `id_dosen`, `id_mhs`) VALUES
(6, 'windi', 'tampilannya bagus', 'Komentar untuk Tampilan', NULL, NULL),
(7, NULL, 'Mohon ditambahkan fitur penyimpanna', 'Komentar untuk Fitur pada Sistem', NULL, NULL),
(10, 'Putri', 'Mohon tambahkan untuk topik AI', 'Masukan untuk Saran Penambahan Bacaan', NULL, 1),
(12, 'rizka', 'tolong tambah logio di nav bar atas', 'Komentar untuk Tampilan', NULL, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `penulis`
--

CREATE TABLE `penulis` (
  `id_penulis` int(11) NOT NULL,
  `nama_penulis` varchar(255) NOT NULL,
  `judul_bacaan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penulis`
--

INSERT INTO `penulis` (`id_penulis`, `nama_penulis`, `judul_bacaan`) VALUES
(1, 'Putri', NULL),
(2, 'Ananda', NULL),
(3, 'Cantik', NULL),
(4, 'Putri', NULL),
(5, 'Ananda', NULL),
(6, 'Cantik', NULL),
(7, 'Penulis', NULL),
(8, 'Putri', NULL),
(9, 'Ananda', NULL),
(10, 'Windi', NULL),
(11, 'Rizka', NULL),
(12, 'Mutia Maulida', NULL),
(13, ' Yuslena Sari', NULL),
(14, ' Muhammad Alkaff', NULL),
(15, ' Andreyan Rizki Baskara', NULL),
(16, 'Muhammad Alkaff', 'Judul ai'),
(17, 'Andreyan Rizky Baskara', 'Judul ai'),
(18, 'Mutia Maulida', 'Judul ai'),
(19, 'Muhammad Alkaff', 'Analisis Sistem'),
(20, 'Andreyan Rizky Baskara', 'Analisis Sistem'),
(21, ' Mutia Maulida', 'Analisis Sistem'),
(22, 'Rahimanisa', 'cobaja ni'),
(23, 'Penulis', 'Kecerdasan Buatan'),
(24, 'Penulis', 'Kecerdasan Buatan'),
(25, 'Penulis', 'Manusia Biasa'),
(26, 'Penulis', 'Manusia Biasa'),
(27, 'Penulis', 'Manusia Biasa3'),
(28, 'Penulis', 'Manusia Biasa3'),
(29, 'Penulis', 'Manusia Biasakn'),
(30, 'Penulis', 'Manusia Biasakn'),
(31, 'Penulis', 'Manusia Biasaknvgd'),
(32, 'Penulis', 'Manusia Biasaknvgd'),
(33, 'Penulis', 'Manusia Biasaknvgdgdf'),
(34, 'Penulis', 'Manusia Biasaknvgdgdf'),
(35, 'Penulis', 'Manusia Biasaknvgdgdfdye'),
(36, 'Penulis', 'Manusia Biasaknvgdgdfdye'),
(37, 'Penulis', 'Manusia Biasaknvgdgdfdyetyedt'),
(38, 'Penulis', 'Manusia Biasaknvgdgdfdyetyedt'),
(39, 'Penulis', 'Manusia Biasaknvgdgdfdyetyedtzxz'),
(40, 'Penulis', 'Manusia Biasaknvgdgdfdyetyedtzxz'),
(41, 'Penulis', 'Manusia Biasaknvgdgdfdyetyedtzxzkjjnb'),
(42, 'Penulis', 'Manusia Biasaknvgdgdfdyetyedtzxzkjjnb'),
(43, 'Penulis', 'Amnalisis'),
(44, 'Penulis', 'Analisis'),
(45, 'Penulis', 'Analisis'),
(46, 'Penulis', 'Analisis'),
(47, 'Penulis', 'Analisiss'),
(48, 'Penulis', 'Analisissd'),
(49, 'Penulis', 'Analisissdfghfhwer'),
(50, 'Penulis', 'judul coba aja woy lagi'),
(51, 'Penulis', 'test'),
(52, 'Penulis', 'judul'),
(53, 'Penulis', 'judul ai'),
(54, 'Penulis', 'judul ai'),
(55, 'Penulis', 'ANALISIS USABILITY PADA APLIKASI PEDULI LINDUNGI SEBAGAI APLIKASI INFORMASI DAN TRACKING COVID-19 DENGAN HEURISTIC EVALUATION'),
(56, 'rizka jugaa', 'A scientific evaluation of autonomous vechile user experience on sighted and visually impaired passengers based on FACS and a usern experience questionnaire'),
(57, 'Agung Hapsah', 'Buku Kecerdasan buatan Saha'),
(58, 'Agung Hapsah', 'Buku Kecerdasan buatan Saha die'),
(59, 'rizka', 'AI'),
(60, 'Mutia Maulida', 'Data mining dan Data Dataan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `topik`
--

CREATE TABLE `topik` (
  `id_topik` int(11) NOT NULL,
  `nama_topik` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `topik`
--

INSERT INTO `topik` (`id_topik`, `nama_topik`) VALUES
(1, 'Data Mining'),
(2, 'Machine Learning'),
(3, 'Computer Vision'),
(4, 'Human and Computer Interaction'),
(5, 'UI/UX Analysis'),
(6, 'System Expert'),
(7, 'Internet of Thing'),
(8, 'Cyber Security'),
(9, 'Web Development'),
(10, 'Dekstop Development'),
(11, 'Game Development'),
(12, 'Artificial Intelligance');

-- --------------------------------------------------------

--
-- Struktur dari tabel `verifikasi`
--

CREATE TABLE `verifikasi` (
  `id_ver` int(11) NOT NULL,
  `id_bacaan` int(11) NOT NULL,
  `id_akses` int(11) DEFAULT NULL,
  `id_penulis` int(11) DEFAULT NULL,
  `id_mhs` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `verifikasi`
--

INSERT INTO `verifikasi` (`id_ver`, `id_bacaan`, `id_akses`, `id_penulis`, `id_mhs`) VALUES
(1, 62, 2, 3, 1),
(6, 281, 2, 12, 1),
(7, 281, 2, 12, 7),
(8, 281, 2, 12, 7),
(9, 281, 2, 12, 139),
(10, 281, 2, 12, 36),
(12, 311, 2, 15, 139);

-- --------------------------------------------------------

--
-- Struktur dari tabel `viewbacaan`
--

CREATE TABLE `viewbacaan` (
  `id_bacaan` int(11) NOT NULL,
  `kali` int(11) NOT NULL DEFAULT 1,
  `date` date NOT NULL,
  `id` int(11) DEFAULT NULL,
  `dsn` int(11) DEFAULT NULL,
  `mhs` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `viewbacaan`
--

INSERT INTO `viewbacaan` (`id_bacaan`, `kali`, `date`, `id`, `dsn`, `mhs`) VALUES
(5, 2, '2021-08-26', NULL, NULL, NULL),
(62, 1, '2021-08-26', NULL, NULL, NULL),
(5, 1, '2021-08-30', NULL, NULL, NULL),
(62, 4, '2021-09-06', NULL, NULL, NULL),
(5, 2, '2021-09-06', NULL, NULL, NULL),
(62, 1, '2021-09-10', NULL, NULL, NULL),
(5, 1, '2021-09-10', NULL, NULL, NULL),
(62, 1, '2021-09-11', NULL, NULL, NULL),
(5, 1, '2021-09-16', NULL, NULL, NULL),
(62, 3, '2021-09-22', 62, NULL, 1),
(5, 3, '2021-09-22', 5, NULL, 1),
(81, 5, '2021-09-22', 81, NULL, 1),
(141, 2, '2021-09-30', 141, NULL, 1),
(96, 1, '2021-09-30', 96, NULL, 1),
(194, 1, '2021-10-01', 194, NULL, 2),
(194, 1, '2021-10-03', 194, NULL, 7),
(194, 1, '2021-10-04', 194, NULL, 7),
(200, 1, '2021-10-04', 200, NULL, 7),
(132, 1, '2021-10-04', 132, NULL, 7),
(140, 1, '2021-10-04', 140, NULL, 1),
(139, 1, '2021-10-04', 139, NULL, 1),
(170, 1, '2021-10-06', 170, 15, NULL),
(185, 2, '2021-10-06', 185, NULL, 2),
(106, 1, '2021-10-06', 106, NULL, 2),
(200, 1, '2021-10-07', 200, NULL, 1),
(260, 1, '2021-10-07', 260, NULL, 1),
(194, 1, '2021-10-07', 194, NULL, 1),
(200, 1, '2021-10-08', 200, NULL, 1),
(194, 1, '2021-10-09', 194, NULL, 2),
(199, 1, '2021-10-09', 199, NULL, 1),
(235, 1, '2021-10-09', 235, NULL, 1),
(62, 2, '2021-10-09', 62, NULL, 1),
(220, 1, '2021-10-09', 220, NULL, 1),
(139, 1, '2021-10-09', 139, NULL, 1),
(115, 1, '2021-10-09', 115, NULL, 1),
(186, 1, '2021-10-09', 186, NULL, 1),
(191, 1, '2021-10-09', 191, NULL, 1),
(150, 1, '2021-10-09', 150, NULL, 1),
(228, 1, '2021-10-09', 228, NULL, 1),
(171, 1, '2021-10-09', 171, NULL, 1),
(256, 3, '2021-10-09', 256, NULL, 1),
(196, 1, '2021-10-10', 196, NULL, 1),
(194, 1, '2021-10-10', 194, NULL, 1),
(95, 1, '2021-10-10', 95, NULL, 1),
(220, 1, '2021-10-10', 220, NULL, 1),
(137, 1, '2021-10-12', 137, NULL, 1),
(200, 2, '2021-10-12', 200, NULL, 1),
(62, 37, '2021-10-12', 62, NULL, 1),
(256, 4, '2021-10-12', 256, NULL, 1),
(5, 12, '2021-10-12', 5, NULL, 1),
(81, 1, '2021-10-12', 81, NULL, 1),
(5, 1, '2021-10-13', 5, NULL, 7),
(91, 1, '2021-10-13', 91, NULL, 36),
(282, 2, '2021-10-13', 282, 15, NULL),
(169, 1, '2021-10-13', 169, 15, NULL),
(5, 1, '2021-10-26', 5, NULL, 1),
(282, 2, '2021-10-26', 282, NULL, 1),
(166, 1, '2021-10-26', 166, NULL, 1),
(132, 5, '2021-10-26', 132, NULL, 1),
(62, 1, '2021-10-27', 62, NULL, 1),
(176, 14, '2021-10-27', 176, NULL, 1),
(256, 1, '2021-10-28', 256, NULL, 2),
(263, 1, '2021-11-05', 263, 12, NULL),
(235, 1, '2021-11-05', 235, 12, NULL),
(222, 1, '2021-11-05', 222, 12, NULL),
(127, 1, '2021-11-05', 127, 12, NULL),
(132, 1, '2021-11-05', 132, 12, NULL),
(175, 1, '2021-11-05', 175, NULL, 139),
(62, 3, '2021-11-05', 62, NULL, 139),
(256, 5, '2021-11-05', 256, NULL, 139),
(186, 5, '2021-11-05', 186, NULL, 139),
(194, 4, '2021-11-05', 194, NULL, 139),
(256, 1, '2021-11-08', 256, NULL, 1),
(307, 1, '2021-11-09', 307, NULL, 1),
(306, 1, '2021-11-09', 306, NULL, 1),
(307, 1, '2021-11-15', 307, NULL, 1),
(306, 1, '2021-11-15', 306, NULL, 1),
(309, 1, '2021-11-15', 309, NULL, 1),
(256, 1, '2021-11-15', 256, NULL, 1),
(311, 3, '2021-11-15', 311, NULL, 139),
(306, 1, '2021-11-16', 306, NULL, 1),
(306, 2, '2021-11-17', 306, NULL, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `viewtopik`
--

CREATE TABLE `viewtopik` (
  `id_topik` int(11) NOT NULL,
  `kali` int(11) NOT NULL DEFAULT 1,
  `date` date NOT NULL,
  `id` int(11) DEFAULT NULL,
  `dsn` int(11) DEFAULT NULL,
  `mhs` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `viewtopik`
--

INSERT INTO `viewtopik` (`id_topik`, `kali`, `date`, `id`, `dsn`, `mhs`) VALUES
(10, 1, '2021-08-23', NULL, NULL, NULL),
(10, 1, '2021-08-23', NULL, NULL, NULL),
(3, 1, '2021-08-23', NULL, NULL, NULL),
(3, 1, '2021-08-23', NULL, NULL, NULL),
(12, 1, '2021-08-23', NULL, NULL, NULL),
(10, 1, '2021-08-23', NULL, NULL, NULL),
(9, 1, '2021-08-23', NULL, NULL, NULL),
(8, 1, '2021-08-24', NULL, NULL, NULL),
(8, 1, '2021-08-24', NULL, NULL, NULL),
(8, 1, '2021-08-24', NULL, NULL, NULL),
(9, 1, '2021-08-24', NULL, NULL, NULL),
(5, 1, '2021-08-24', NULL, NULL, NULL),
(10, 1, '2021-08-24', NULL, NULL, NULL),
(9, 1, '2021-08-24', NULL, NULL, NULL),
(8, 1, '2021-08-24', NULL, NULL, NULL),
(3, 1, '2021-08-25', NULL, NULL, NULL),
(8, 1, '2021-08-25', NULL, NULL, NULL),
(10, 2, '2021-08-25', NULL, NULL, NULL),
(6, 1, '2021-08-25', NULL, NULL, NULL),
(6, 1, '2021-08-25', NULL, NULL, NULL),
(9, 1, '2021-08-26', NULL, NULL, NULL),
(7, 1, '2021-08-30', NULL, NULL, NULL),
(10, 3, '2021-09-06', NULL, NULL, NULL),
(9, 2, '2021-09-06', NULL, NULL, NULL),
(12, 2, '2021-09-06', NULL, NULL, NULL),
(3, 2, '2021-09-06', NULL, NULL, NULL),
(4, 1, '2021-09-06', NULL, NULL, NULL),
(2, 1, '2021-09-06', NULL, NULL, NULL),
(5, 1, '2021-09-06', NULL, NULL, NULL),
(11, 1, '2021-09-06', NULL, NULL, NULL),
(6, 1, '2021-09-06', NULL, NULL, NULL),
(10, 7, '2021-09-10', NULL, NULL, NULL),
(12, 1, '2021-09-10', NULL, NULL, NULL),
(3, 1, '2021-09-10', NULL, NULL, NULL),
(8, 1, '2021-09-10', NULL, NULL, NULL),
(1, 1, '2021-09-10', NULL, NULL, NULL),
(11, 1, '2021-09-10', NULL, NULL, NULL),
(4, 1, '2021-09-10', NULL, NULL, NULL),
(7, 1, '2021-09-10', NULL, NULL, NULL),
(2, 1, '2021-09-10', NULL, NULL, NULL),
(6, 1, '2021-09-10', NULL, NULL, NULL),
(5, 1, '2021-09-10', NULL, NULL, NULL),
(9, 1, '2021-09-10', NULL, NULL, NULL),
(10, 1, '2021-09-11', NULL, NULL, NULL),
(3, 1, '2021-09-21', NULL, NULL, 1),
(10, 1, '2021-09-22', 10, NULL, 1),
(12, 1, '2021-09-22', 12, 3, NULL),
(10, 2, '2021-09-29', 10, NULL, 2),
(12, 1, '2021-09-29', 12, NULL, 1),
(10, 4, '2021-09-30', 10, NULL, 2),
(9, 14, '2021-09-30', 9, NULL, 1),
(12, 1, '2021-09-30', 12, NULL, 1),
(3, 2, '2021-09-30', 3, NULL, 2),
(11, 1, '2021-09-30', 11, NULL, 1),
(6, 1, '2021-09-30', 6, NULL, 1),
(5, 1, '2021-09-30', 5, NULL, 1),
(4, 1, '2021-09-30', 4, NULL, 1),
(8, 1, '2021-09-30', 8, NULL, 1),
(1, 4, '2021-09-30', 1, NULL, 1),
(10, 1, '2021-10-01', 10, NULL, 7),
(1, 1, '2021-10-01', 1, NULL, 7),
(12, 1, '2021-10-01', 12, NULL, 2),
(3, 1, '2021-10-01', 3, NULL, 2),
(9, 1, '2021-10-03', 9, NULL, 7),
(5, 2, '2021-10-04', 5, NULL, 7),
(8, 2, '2021-10-04', 8, NULL, 7),
(3, 2, '2021-10-04', 3, NULL, 7),
(4, 1, '2021-10-04', 4, NULL, 7),
(9, 2, '2021-10-04', 9, NULL, 7),
(6, 2, '2021-10-04', 6, NULL, 7),
(2, 1, '2021-10-04', 2, NULL, 1),
(1, 1, '2021-10-04', 1, NULL, 1),
(12, 9, '2021-10-06', 12, NULL, 1),
(3, 3, '2021-10-06', 3, NULL, 1),
(1, 3, '2021-10-06', 1, 15, NULL),
(11, 4, '2021-10-06', 11, NULL, 1),
(4, 5, '2021-10-06', 4, NULL, 2),
(5, 3, '2021-10-06', 5, NULL, 2),
(7, 4, '2021-10-06', 7, NULL, 2),
(9, 8, '2021-10-06', 9, NULL, 2),
(10, 3, '2021-10-06', 10, NULL, 2),
(6, 5, '2021-10-06', 6, NULL, 2),
(2, 1, '2021-10-06', 2, NULL, 2),
(8, 2, '2021-10-06', 8, NULL, 2),
(12, 2, '2021-10-07', 12, NULL, 139),
(3, 1, '2021-10-07', 3, NULL, 139),
(1, 1, '2021-10-07', 1, NULL, 139),
(10, 1, '2021-10-07', 10, NULL, 139),
(7, 1, '2021-10-07', 7, NULL, 139),
(12, 5, '2021-10-09', 12, NULL, 2),
(3, 6, '2021-10-09', 3, NULL, 2),
(4, 2, '2021-10-09', 4, NULL, 1),
(2, 2, '2021-10-09', 2, NULL, 1),
(5, 1, '2021-10-09', 5, NULL, 1),
(11, 1, '2021-10-09', 11, 12, NULL),
(5, 1, '2021-10-10', 5, NULL, 1),
(3, 13, '2021-10-10', 3, NULL, 1),
(11, 1, '2021-10-10', 11, NULL, 1),
(6, 2, '2021-10-10', 6, NULL, 1),
(7, 1, '2021-10-10', 7, NULL, 1),
(8, 11, '2021-10-10', 8, 12, NULL),
(9, 1, '2021-10-10', 9, 12, NULL),
(12, 12, '2021-10-10', 12, NULL, 1),
(12, 2, '2021-10-11', 12, NULL, 1),
(5, 1, '2021-10-12', 5, NULL, 1),
(4, 1, '2021-10-12', 4, NULL, 1),
(12, 1, '2021-10-13', 12, 15, NULL),
(8, 1, '2021-10-13', 8, 15, NULL),
(3, 10, '2021-10-20', 3, NULL, 1),
(1, 3, '2021-10-20', 1, NULL, 1),
(8, 1, '2021-10-20', 8, NULL, 1),
(11, 1, '2021-10-20', 11, NULL, 1),
(2, 1, '2021-10-20', 2, NULL, 1),
(8, 1, '2021-10-22', 8, NULL, 1),
(4, 1, '2021-10-26', 4, NULL, 1),
(9, 1, '2021-10-27', 9, NULL, 1),
(12, 1, '2021-10-27', 12, NULL, 1),
(12, 2, '2021-10-28', 12, NULL, 2),
(1, 2, '2021-10-28', 1, NULL, 2),
(3, 6, '2021-11-05', 3, NULL, 1),
(12, 9, '2021-11-05', 12, 12, NULL),
(6, 1, '2021-11-05', 6, 12, NULL),
(1, 3, '2021-11-05', 1, NULL, 1),
(2, 1, '2021-11-05', 2, NULL, 1),
(9, 1, '2021-11-05', 9, NULL, 1),
(8, 1, '2021-11-05', 8, NULL, 1),
(11, 5, '2021-11-05', 11, NULL, 139),
(12, 1, '2021-11-08', 12, NULL, 1),
(12, 4, '2021-11-11', 12, NULL, 139),
(1, 1, '2021-11-11', 1, NULL, 139),
(12, 2, '2021-11-12', 12, NULL, 139),
(12, 4, '2021-11-15', 12, NULL, 139),
(3, 1, '2021-11-15', 3, NULL, 139),
(8, 1, '2021-11-15', 8, NULL, 139),
(1, 1, '2021-11-15', 1, NULL, 139),
(10, 1, '2021-11-15', 10, NULL, 139),
(12, 1, '2021-11-16', 12, NULL, 139);

-- --------------------------------------------------------

--
-- Struktur dari tabel `visitor`
--

CREATE TABLE `visitor` (
  `ip` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `hits` int(11) NOT NULL,
  `online` varchar(255) NOT NULL,
  `time` datetime NOT NULL,
  `mhs` int(11) DEFAULT NULL,
  `dsn` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `visitor`
--

INSERT INTO `visitor` (`ip`, `date`, `hits`, `online`, `time`, `mhs`, `dsn`) VALUES
('127.0.0.1', '2021-08-25', 9, '1629902155', '2021-08-25 13:37:28', NULL, NULL),
('127.0.0.1', '2021-08-26', 1, '1629984506', '2021-08-26 13:28:26', NULL, NULL),
('127.0.0.1', '2021-08-30', 5, '1630326519', '2021-08-30 19:07:32', NULL, NULL),
('127.0.0.1', '2021-09-06', 13, '1630932759', '2021-09-06 08:06:07', NULL, NULL),
('127.0.0.1', '2021-09-10', 10, '1631257704', '2021-09-10 12:31:09', NULL, NULL),
('127.0.0.1', '2021-09-11', 4, '1631362059', '2021-09-11 18:32:48', NULL, NULL),
('127.0.0.1', '2021-09-13', 4, '1631514229', '2021-09-13 12:59:17', NULL, NULL),
('127.0.0.1', '2021-09-14', 2, '1631596000', '2021-09-14 11:50:18', NULL, NULL),
('127.0.0.1', '2021-09-16', 4, '1631799135', '2021-09-16 19:47:05', NULL, NULL),
('127.0.0.1', '2021-09-17', 2, '1631882536', '2021-09-17 19:33:20', NULL, NULL),
('127.0.0.1', '2021-09-20', 7, '1632143082', '2021-09-20 18:11:33', NULL, NULL),
('127.0.0.1', '2021-09-21', 5, '1632226730', '2021-09-21 19:00:19', NULL, NULL),
('127.0.0.1', '2021-09-22', 4, '1632310842', '2021-09-22 18:33:45', 1, NULL),
('127.0.0.1', '2021-09-22', 1, '1632311354', '2021-09-22 18:49:14', NULL, 3),
('127.0.0.1', '2021-09-24', 1, '1632485811', '2021-09-24 19:16:51', 1, NULL),
('127.0.0.1', '2021-09-24', 1, '1632486238', '2021-09-24 19:23:58', NULL, 3),
('127.0.0.1', '2021-09-28', 4, '1632816639', '2021-09-28 15:01:34', 1, NULL),
('182.1.203.10', '2021-09-29', 12, '1632898613', '2021-09-29 13:44:06', 1, NULL),
('125.160.106.198', '2021-09-29', 3, '1632897906', '2021-09-29 13:44:27', 2, NULL),
('182.1.207.102', '2021-09-30', 72, '1632982018', '2021-09-30 10:04:04', 2, NULL),
('182.1.207.102', '2021-09-30', 72, '1632982018', '2021-09-30 10:24:31', 1, NULL),
('182.1.207.102', '2021-09-30', 70, '1632982018', '2021-09-30 10:30:56', NULL, 12),
('180.246.151.90', '2021-09-30', 1, '1632999610', '2021-09-30 18:00:10', 2, NULL),
('182.1.168.26', '2021-09-30', 6, '1633005471', '2021-09-30 18:42:23', 1, NULL),
('182.1.168.26', '2021-09-30', 2, '1633005471', '2021-09-30 19:34:46', NULL, 12),
('114.5.220.72', '2021-10-01', 1, '1633056593', '2021-10-01 09:49:53', 7, NULL),
('180.246.149.142', '2021-10-01', 3, '1633094454', '2021-10-01 20:20:14', 2, NULL),
('180.246.149.200', '2021-10-03', 1, '1633206622', '2021-10-03 03:30:22', 7, NULL),
('180.246.149.200', '2021-10-04', 2, '1633316068', '2021-10-04 09:52:51', 7, NULL),
('182.1.212.188', '2021-10-04', 1, '1633344757', '2021-10-04 17:52:37', 1, NULL),
('182.1.205.253', '2021-10-05', 1, '1633451379', '2021-10-05 23:29:39', 1, NULL),
('182.1.205.253', '2021-10-06', 2, '1633454879', '2021-10-06 00:27:21', NULL, 15),
('182.1.192.159', '2021-10-06', 7, '1633523639', '2021-10-06 17:40:17', 2, NULL),
('182.1.192.159', '2021-10-06', 7, '1633523639', '2021-10-06 17:42:04', 1, NULL),
('182.1.192.159', '2021-10-06', 6, '1633523639', '2021-10-06 17:44:39', NULL, 12),
('114.122.197.23', '2021-10-06', 2, '1633518904', '2021-10-06 18:05:24', 2, NULL),
('180.246.151.53', '2021-10-06', 2, '1633518823', '2021-10-06 18:07:28', 2, NULL),
('180.246.149.200', '2021-10-06', 1, '1633520197', '2021-10-06 18:36:37', 2, NULL),
('140.213.66.241', '2021-10-06', 1, '1633522704', '2021-10-06 19:18:24', 2, NULL),
('180.246.149.233', '2021-10-06', 3, '1633538688', '2021-10-06 23:02:35', 2, NULL),
('114.122.201.51', '2021-10-07', 4, '1633560389', '2021-10-07 05:43:50', 7, NULL),
('120.188.76.180', '2021-10-07', 2, '1633561753', '2021-10-07 06:07:24', 139, NULL),
('103.23.233.105', '2021-10-07', 3, '1633581550', '2021-10-07 10:54:45', 1, NULL),
('103.23.233.105', '2021-10-07', 1, '1633581740', '2021-10-07 11:42:20', NULL, 15),
('182.1.215.173', '2021-10-08', 1, '1633707428', '2021-10-08 22:37:08', 1, NULL),
('180.246.149.213', '2021-10-09', 2, '1633778242', '2021-10-09 18:14:59', 2, NULL),
('182.1.165.140', '2021-10-09', 3, '1633793699', '2021-10-09 21:42:54', 1, NULL),
('182.1.165.140', '2021-10-09', 3, '1633793699', '2021-10-09 22:29:18', NULL, 12),
('182.1.219.177', '2021-10-10', 2, '1633870575', '2021-10-10 17:56:20', 1, NULL),
('182.1.219.177', '2021-10-10', 2, '1633870575', '2021-10-10 18:26:50', NULL, 12),
('114.125.171.163', '2021-10-11', 4, '1633957054', '2021-10-11 18:23:39', 1, NULL),
('114.125.171.163', '2021-10-11', 2, '1633957054', '2021-10-11 19:24:21', NULL, 12),
('114.125.171.163', '2021-10-11', 2, '1633957054', '2021-10-11 19:56:29', NULL, 15),
('182.1.192.107', '2021-10-12', 3, '1634016676', '2021-10-12 12:28:13', 1, NULL),
('182.1.194.147', '2021-10-12', 1, '1634045198', '2021-10-12 20:26:38', 1, NULL),
('182.1.181.58', '2021-10-12', 8, '1634053303', '2021-10-12 21:28:23', NULL, 3),
('182.1.181.58', '2021-10-12', 2, '1634053303', '2021-10-12 22:03:40', 1, NULL),
('182.1.181.58', '2021-10-12', 2, '1634053303', '2021-10-12 22:38:12', NULL, 15),
('103.23.233.105', '2021-10-13', 18, '1634105380', '2021-10-13 08:48:41', NULL, 12),
('103.23.233.105', '2021-10-13', 18, '1634105380', '2021-10-13 09:00:00', 1, NULL),
('103.23.233.105', '2021-10-13', 15, '1634105380', '2021-10-13 09:18:51', 7, NULL),
('103.23.233.105', '2021-10-13', 8, '1634105380', '2021-10-13 11:49:23', 139, NULL),
('103.23.233.105', '2021-10-13', 6, '1634105380', '2021-10-13 11:52:58', 36, NULL),
('103.23.233.105', '2021-10-13', 2, '1634105380', '2021-10-13 13:08:16', NULL, 15),
('182.1.215.39', '2021-10-20', 1, '1634740139', '2021-10-20 21:28:59', 1, NULL),
('114.125.221.137', '2021-10-22', 1, '1634909917', '2021-10-22 20:38:37', 1, NULL),
('180.241.178.97', '2021-10-26', 19, '1635223431', '2021-10-26 09:48:45', 1, NULL),
('180.241.178.97', '2021-10-27', 8, '1635317750', '2021-10-27 12:25:34', 1, NULL),
('125.161.213.119', '2021-10-28', 3, '1635391987', '2021-10-28 10:30:19', 2, NULL),
('103.23.233.105', '2021-11-05', 8, '1636081605', '2021-11-05 09:04:40', 1, NULL),
('103.23.233.105', '2021-11-05', 7, '1636081605', '2021-11-05 09:07:43', NULL, 12),
('120.188.86.201', '2021-11-05', 10, '1636091136', '2021-11-05 10:28:00', 1, NULL),
('120.188.86.201', '2021-11-05', 10, '1636091136', '2021-11-05 10:50:02', 139, NULL),
('120.188.86.201', '2021-11-05', 8, '1636091136', '2021-11-05 11:32:22', NULL, 3),
('114.122.205.90', '2021-11-08', 3, '1636352623', '2021-11-08 13:02:48', NULL, 15),
('114.122.205.90', '2021-11-08', 2, '1636352623', '2021-11-08 13:23:05', 1, NULL),
('114.122.206.36', '2021-11-08', 1, '1636356381', '2021-11-08 14:26:21', 1, NULL),
('103.23.233.105', '2021-11-09', 1, '1636435271', '2021-11-09 12:21:11', NULL, 15),
('103.23.233.105', '2021-11-09', 1, '1636441248', '2021-11-09 14:00:48', 1, NULL),
('114.5.108.154', '2021-11-09', 1, '1636442052', '2021-11-09 14:14:12', 1, NULL),
('114.4.222.149', '2021-11-11', 2, '1636586948', '2021-11-11 06:28:32', 139, NULL),
('120.188.86.3', '2021-11-12', 2, '1636685000', '2021-11-12 09:03:11', 139, NULL),
('103.23.233.116', '2021-11-15', 3, '1636945617', '2021-11-15 09:16:44', 1, NULL),
('114.5.109.3', '2021-11-15', 6, '1636949336', '2021-11-15 10:01:57', 139, NULL),
('125.161.213.8', '2021-11-15', 1, '1636945652', '2021-11-15 10:07:32', 2, NULL),
('114.5.109.3', '2021-11-15', 5, '1636949336', '2021-11-15 10:24:36', NULL, 15),
('114.5.109.3', '2021-11-16', 3, '1637036591', '2021-11-16 09:31:10', 139, NULL),
('103.23.233.105', '2021-11-16', 1, '1637031213', '2021-11-16 09:53:33', 1, NULL),
('114.5.109.3', '2021-11-16', 2, '1637036591', '2021-11-16 10:57:39', NULL, 15),
('103.23.233.105', '2021-11-17', 2, '1637128334', '2021-11-17 08:43:04', 1, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `bacaan`
--
ALTER TABLE `bacaan`
  ADD PRIMARY KEY (`id_bacaan`),
  ADD KEY `fk_kategori` (`kategori_id`),
  ADD KEY `fk_upload` (`upload_by`),
  ADD KEY `fk_upload2` (`upload_admin`);

--
-- Indeks untuk tabel `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`id_dosen`);

--
-- Indeks untuk tabel `hak_akses`
--
ALTER TABLE `hak_akses`
  ADD PRIMARY KEY (`id_akses`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id_mhs`);

--
-- Indeks untuk tabel `masukan`
--
ALTER TABLE `masukan`
  ADD PRIMARY KEY (`id_masukan`),
  ADD KEY `fk_mhs` (`id_mhs`),
  ADD KEY `fk_dosen` (`id_dosen`);

--
-- Indeks untuk tabel `penulis`
--
ALTER TABLE `penulis`
  ADD PRIMARY KEY (`id_penulis`);

--
-- Indeks untuk tabel `topik`
--
ALTER TABLE `topik`
  ADD PRIMARY KEY (`id_topik`);

--
-- Indeks untuk tabel `verifikasi`
--
ALTER TABLE `verifikasi`
  ADD PRIMARY KEY (`id_ver`),
  ADD KEY `fk_penulis` (`id_penulis`),
  ADD KEY `fk_akses` (`id_akses`),
  ADD KEY `fkmhsver` (`id_mhs`),
  ADD KEY `fkbacaanver` (`id_bacaan`);

--
-- Indeks untuk tabel `viewbacaan`
--
ALTER TABLE `viewbacaan`
  ADD KEY `fk_viewbacaan` (`id`),
  ADD KEY `fk_dosen1` (`dsn`),
  ADD KEY `fk_mhs1` (`mhs`);

--
-- Indeks untuk tabel `viewtopik`
--
ALTER TABLE `viewtopik`
  ADD KEY `fk_viewtopik1` (`id`),
  ADD KEY `fk_dosen2` (`dsn`),
  ADD KEY `fk_mhs2` (`mhs`);

--
-- Indeks untuk tabel `visitor`
--
ALTER TABLE `visitor`
  ADD KEY `fk_mhs3` (`mhs`),
  ADD KEY `fk_dosen3` (`dsn`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `bacaan`
--
ALTER TABLE `bacaan`
  MODIFY `id_bacaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=312;

--
-- AUTO_INCREMENT untuk tabel `dosen`
--
ALTER TABLE `dosen`
  MODIFY `id_dosen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `hak_akses`
--
ALTER TABLE `hak_akses`
  MODIFY `id_akses` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id_mhs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=304;

--
-- AUTO_INCREMENT untuk tabel `masukan`
--
ALTER TABLE `masukan`
  MODIFY `id_masukan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `penulis`
--
ALTER TABLE `penulis`
  MODIFY `id_penulis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT untuk tabel `topik`
--
ALTER TABLE `topik`
  MODIFY `id_topik` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `verifikasi`
--
ALTER TABLE `verifikasi`
  MODIFY `id_ver` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `bacaan`
--
ALTER TABLE `bacaan`
  ADD CONSTRAINT `fk_kategori` FOREIGN KEY (`kategori_id`) REFERENCES `kategori` (`id_kategori`),
  ADD CONSTRAINT `fk_upload` FOREIGN KEY (`upload_by`) REFERENCES `dosen` (`id_dosen`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_upload2` FOREIGN KEY (`upload_admin`) REFERENCES `admin` (`id_admin`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `masukan`
--
ALTER TABLE `masukan`
  ADD CONSTRAINT `fk_dosen` FOREIGN KEY (`id_dosen`) REFERENCES `dosen` (`id_dosen`),
  ADD CONSTRAINT `fk_mhs` FOREIGN KEY (`id_mhs`) REFERENCES `mahasiswa` (`id_mhs`);

--
-- Ketidakleluasaan untuk tabel `verifikasi`
--
ALTER TABLE `verifikasi`
  ADD CONSTRAINT `fk_akses` FOREIGN KEY (`id_akses`) REFERENCES `hak_akses` (`id_akses`),
  ADD CONSTRAINT `fk_penulis` FOREIGN KEY (`id_penulis`) REFERENCES `dosen` (`id_dosen`),
  ADD CONSTRAINT `fkbacaanver` FOREIGN KEY (`id_bacaan`) REFERENCES `bacaan` (`id_bacaan`),
  ADD CONSTRAINT `fkmhsver` FOREIGN KEY (`id_mhs`) REFERENCES `mahasiswa` (`id_mhs`);

--
-- Ketidakleluasaan untuk tabel `viewbacaan`
--
ALTER TABLE `viewbacaan`
  ADD CONSTRAINT `fk_dosen1` FOREIGN KEY (`dsn`) REFERENCES `dosen` (`id_dosen`),
  ADD CONSTRAINT `fk_mhs1` FOREIGN KEY (`mhs`) REFERENCES `mahasiswa` (`id_mhs`),
  ADD CONSTRAINT `fk_viewbacaan` FOREIGN KEY (`id`) REFERENCES `bacaan` (`id_bacaan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `viewtopik`
--
ALTER TABLE `viewtopik`
  ADD CONSTRAINT `fk_dosen2` FOREIGN KEY (`dsn`) REFERENCES `dosen` (`id_dosen`),
  ADD CONSTRAINT `fk_mhs2` FOREIGN KEY (`mhs`) REFERENCES `mahasiswa` (`id_mhs`),
  ADD CONSTRAINT `fk_viewtopik1` FOREIGN KEY (`id`) REFERENCES `topik` (`id_topik`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `visitor`
--
ALTER TABLE `visitor`
  ADD CONSTRAINT `fk_dosen3` FOREIGN KEY (`dsn`) REFERENCES `dosen` (`id_dosen`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_mhs3` FOREIGN KEY (`mhs`) REFERENCES `mahasiswa` (`id_mhs`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
