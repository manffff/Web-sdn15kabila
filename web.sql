-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Des 2024 pada 16.18
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sdn1_websekolah`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_berita`
--

CREATE TABLE `tbl_berita` (
  `id_berita` int(11) NOT NULL,
  `judul_berita` varchar(256) DEFAULT NULL,
  `slug_berita` varchar(255) DEFAULT NULL,
  `isi_berita` text DEFAULT NULL,
  `foto_berita` varchar(50) DEFAULT NULL,
  `tgl_berita` date NOT NULL,
  `id_user` int(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_berita`
--

INSERT INTO `tbl_berita` (`id_berita`, `judul_berita`, `slug_berita`, `isi_berita`, `foto_berita`, `tgl_berita`, `id_user`) VALUES
(33, 'GOTONG ROYONG', 'gotong-royong', '<p>Gotong royong di sekolah adalah suatu bentuk nyata dari semangat kebersamaan dan kepedulian yang menjadi landasan dalam membentuk lingkungan pendidikan yang inklusif dan berkelanjutan.&nbsp;Dalam bergotong royong, biasanya terdapat serangkaian kegiatan yang melibatkan siswa, guru, dan staf sekolah dalam upaya untuk memelihara kebersihan, merawat fasilitas, serta memperindah lingkungan belajar.&nbsp;</p>\r\n', 'OIP_(8).jpg', '2024-11-24', 1),
(34, 'KEGIATAN PRAMUKA ', 'kegiatan-pramuka', '<p>Pentingnya pengajaran Pramuka di SD juga terlihat dari pengembangan skill baru, seperti Pertolongan Pertama Pada Kecelakaan (P3K). Para siswa diajarkan cara merespons kecelakaan baik secara individu maupun kelompok. Tidak ketinggalan juga diajarkan cara mendirikan tenda melalui kegiatan Persami.</p>\r\n', 'gambar1.jpg', '2024-11-14', 1),
(35, 'KERJA BAKTI ', 'kerja-bakti', '<p>Kerja bakti adalah kegiatan kerja bergotong-royong tanpa upah untuk kepentingan bersama. Kerja bakti biasanya dilakukan bersama-sama semua warga sekolah dengan tujuan agar lingkungan sekolah menjadi bersih dan nyaman. Kerja bakti di lingkungan sekolah seperti membersihkan halaman sekolah, mengepel ruang kelas, membersihkan aula sekolah, dan masih banyak yang lainnya. Dengan lingkungan sekolah yang bersih dan nyaman diharapkan semangat belajar siswa juga meningkat.</p>\r\n', 'OIP_(7).jpg', '2024-11-24', 1),
(37, 'Jokowi Berkunjung ke Solo, Nostalgia di Sekolahnya dari SD hingga SMA', 'jokowi-berkunjung-ke-solo-nostalgia-di-sekolahnya-dari-sd-hingga-sma', '<p>Para siswa itu pun menyanyikan lagu mengantarkan Jokowi yang akan bertolak dari sekolah itu. Sementara itu segenap warga juga tampak berkumpul di luar sekolah tersebut untuk melihat kedatangan Presiden tersebut.&nbsp;</p>\r\n\r\n<p>Sebelum meninggalkan lokasi, Jokowi terlihat membagikan bingkisan kepada sejumlah warga dan memberikan amplop kepada tukang becak.&nbsp;</p>\r\n\r\n<p>Kepala SDN Tirtoyoso, Leliy Maria mengungkapkan informasi tentang rencana kunjungan Jokowi ke sekolah itu telah diterimanya pada Kamis, 10 Oktober 2024. Adapun kepastian kedatangan Jokowi diterimanya Jumat, 11 Oktober 2024.&nbsp;</p>\r\n', '1344313_720.jpg', '2024-11-28', 1),
(38, 'Belajar di Perpustakaan', 'belajar-di-perpustakaan', '<p>Hari ini adalah rutinitas anak anak untuk belajar bersama di perpustakaan sekolah</p>\r\n', 'OIP_(9).jpg', '2024-12-01', 1),
(39, 'Belajar sambil bermain', 'belajar-sambil-bermain', '<p>Pendidikan merupakan salah satu pilar utama dalam perkembangan anak-anak, tetapi seringkali belajar dianggap sebagai kegiatan yang membosankan dan tak menarik bagi mereka. Namun, tahukah Anda bahwa ada metode pembelajaran yang dapat membuat anak-anak senang belajar sambil bermain? Ini bukan lagi sekadar mimpi, tetapi sebuah konsep revolusioner dalam dunia pendidikan.</p>\r\n', 'photo_2019-03-15_11-08-55.jpg', '2024-12-01', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_foto`
--

CREATE TABLE `tbl_foto` (
  `id_foto` int(11) NOT NULL,
  `id_gallery` int(11) NOT NULL,
  `ket_foto` text NOT NULL,
  `foto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_foto`
--

INSERT INTO `tbl_foto` (`id_foto`, `id_gallery`, `ket_foto`, `foto`) VALUES
(1, 1, 'a', ''),
(20, 7, 'Gambar 1', 'img_20151007_115203-1024x576.jpg'),
(21, 7, 'Gambar 2', 'anak-anak-membaca-di-perpustakaan-bale-tau-desa-batukaras-kecamatan-_160125173524-605.jpg'),
(22, 7, 'Gambar 3', 'OIP_(9).jpg'),
(24, 8, 'Gambar 1', 'DSC07991.JPG'),
(25, 6, 'Gambar 1', 'DSC079911.JPG');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_gallery`
--

CREATE TABLE `tbl_gallery` (
  `id_gallery` int(11) NOT NULL,
  `nama_gallery` text NOT NULL,
  `sampul` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_gallery`
--

INSERT INTO `tbl_gallery` (`id_gallery`, `nama_gallery`, `sampul`) VALUES
(6, 'Kerja Bakti Untuk Siswa', 'OIP_(8).jpg'),
(7, 'Mengerjakan Tugas Kelompok Bersama', 'photo_2019-03-15_11-08-55.jpg'),
(8, 'Kerja Bakti Bersama', 'OIP_(7)1.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_guru`
--

CREATE TABLE `tbl_guru` (
  `id_guru` int(11) NOT NULL,
  `nip` varchar(20) DEFAULT NULL,
  `nama_guru` varchar(100) DEFAULT NULL,
  `tempat_lahir` varchar(15) DEFAULT NULL,
  `foto_guru` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_guru`
--

INSERT INTO `tbl_guru` (`id_guru`, `nip`, `nama_guru`, `tempat_lahir`, `foto_guru`) VALUES
(15, '197202082009012001', 'Rifat Machmud, S.Ag', 'Gorontalo', 'foto1.jpeg'),
(16, '19710208 2006042 022', 'Serly Buntina, S.Pd.I', 'Gorontalo', 'WhatsApp_Image_2024-11-22_at_20_19_25.jpeg'),
(17, '19791020 202221 2015', 'Sry Susanty N. Sumaga, S.Pd', 'Gorontalo', 'WhatsApp_Image_2024-11-22_at_20_19_261.jpeg'),
(18, '19870303 201903 1002', 'Marten Moko, S.Pd', 'Gorontalo', 'e69da9ca-6d99-48cd-9bee-2f11e78bd061.jpg'),
(19, '19980329 2022212 004', 'Silvianingsih Abdulrahman', 'Gorontalo', 'WhatsApp_Image_2024-11-22_at_20_19_26_(1).jpeg'),
(20, '197705111998082001', 'Santy I. Masulili, S.Pd ', 'Gorontalo', 'WhatsApp_Image_2024-11-22_at_20_19_221.jpeg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_setting`
--

CREATE TABLE `tbl_setting` (
  `id` int(1) NOT NULL,
  `nama_sekolah` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `no_telpon` varchar(15) DEFAULT NULL,
  `kepala_sekolah` varchar(25) DEFAULT NULL,
  `nip` varchar(20) DEFAULT NULL,
  `foto_kepsek` varchar(255) DEFAULT NULL,
  `visi` text DEFAULT NULL,
  `misi` text DEFAULT NULL,
  `sejarah` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_setting`
--

INSERT INTO `tbl_setting` (`id`, `nama_sekolah`, `alamat`, `no_telpon`, `kepala_sekolah`, `nip`, `foto_kepsek`, `visi`, `misi`, `sejarah`) VALUES
(1, 'SD 15 Kabila', 'Kabila', '0897879897768', 'Rifat Machmud, S.Ag', '197202082009012001', 'foto.jpeg', '” MEWUJUDKAN SISWA – SISWI YANG BERPRESTASI, BERIMAN DAN BERTAQWA KEPADA TUHAN YANG MAHA ESA SERTA CINTA TERHADAP LINGKUNGAN. ”', 'Untuk mewujudkan Visi tersebut, Sekolah menentukan langkah – langkah strategis yang dinyatakan dalam Misi berikut :\r\n\r\nMewujudkan/menciptakan siswa yang taat beribadah\r\nMembentuk sikap dan prilaku yang baik, santun, sopan dan berkarakter.\r\nMewujudkan siswa/i yang disiplin\r\nMenciptakan suasana Pembelajaran yang aktif, inovatif, kreatif, efektif, menyenangkan, gembira dan berbobot\r\nMewujudkan siswa yang berprestasi\r\nMewujudkan suasana kekeluargaan antar warga sekolah\r\nMewujudkan sekolah hijau ( Gereen School ).', 'SD Negeri 15 Kabila, yang terletak di Jl. Ratuwangi, Desa Poowo, Kecamatan Kabila, Kabupaten Bone Bolango, Provinsi Gorontalo, merupakan lembaga pendidikan dasar negeri yang telah berdiri sejak tahun 1958. Dengan NPSN 40500899, sekolah ini menaungi anak-anak usia dini dalam menimba ilmu pengetahuan dan membangun karakter.\r\n\r\nSD Negeri 15 Kabila memiliki luas tanah seluas 1.944 m² yang memadai untuk menunjang kegiatan belajar mengajar. Fasilitas sekolah dilengkapi dengan akses internet dan sumber listrik dari PLN. Sekolah ini menjalankan sistem pembelajaran sehari penuh selama lima hari dalam seminggu.\r\n\r\n\r\n\r\nSebagai lembaga pendidikan di bawah naungan pemerintah daerah, SD Negeri 15 Kabila memiliki peran penting dalam mencerdaskan kehidupan bangsa di wilayah Kabupaten Bone Bolango. Sekolah ini senantiasa berkomitmen untuk memberikan layanan pendidikan berkualitas dan mencetak generasi penerus bangsa yang berakhlak mulia dan cerdas.\r\n\r\nTerakreditasi B berdasarkan SK No. 967/BAN-SM/SK/2019, sekolah ini menunjukkan dedikasi dalam meningkatkan mutu pendidikan. Tim pengajar yang profesional dan fasilitas yang memadai menjadikan SD Negeri 15 Kabila sebagai pilihan tepat bagi orang tua yang ingin memberikan pendidikan terbaik bagi putra-putrinya.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(2) NOT NULL,
  `nama_user` varchar(25) DEFAULT NULL,
  `username` varchar(25) DEFAULT NULL,
  `password` varchar(25) DEFAULT NULL,
  `level` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `nama_user`, `username`, `password`, `level`) VALUES
(1, 'SDN 15 KABILA', 'admin', 'admin', 1),
(3, 'SDN 15 KABILA', 'user', 'user', 2);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_berita`
--
ALTER TABLE `tbl_berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indeks untuk tabel `tbl_foto`
--
ALTER TABLE `tbl_foto`
  ADD PRIMARY KEY (`id_foto`);

--
-- Indeks untuk tabel `tbl_gallery`
--
ALTER TABLE `tbl_gallery`
  ADD PRIMARY KEY (`id_gallery`);

--
-- Indeks untuk tabel `tbl_guru`
--
ALTER TABLE `tbl_guru`
  ADD PRIMARY KEY (`id_guru`);

--
-- Indeks untuk tabel `tbl_setting`
--
ALTER TABLE `tbl_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_berita`
--
ALTER TABLE `tbl_berita`
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT untuk tabel `tbl_foto`
--
ALTER TABLE `tbl_foto`
  MODIFY `id_foto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `tbl_gallery`
--
ALTER TABLE `tbl_gallery`
  MODIFY `id_gallery` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tbl_guru`
--
ALTER TABLE `tbl_guru`
  MODIFY `id_guru` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `tbl_setting`
--
ALTER TABLE `tbl_setting`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
