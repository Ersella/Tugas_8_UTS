-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 04, 2022 at 03:52 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `utsdpw2`
--

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `penulis` varchar(255) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`id`, `id_user`, `judul`, `penulis`, `deskripsi`, `created_at`, `updated_at`) VALUES
(12, 1, 'Trip ke Karimunjawa, Melihat Pesona Keindahan Pulau yang Tersamar', 'Sitimaryani', 'Aktivitas wisata di Karimunjawa\r\nAda beberapa aktivitas seru yang bisa kamu lakukan saat wisata di Karimunjawa.\r\n1. Island Hopping\r\nMenikmati Karimunjawa rasanya kurang lengkap bila hanya menikmati daratan dan sekitarnya saja. Maka dengan menyewa perahu nelayan kita bisa menikmati pulau-pulau kecil di sekitar pulau karimunjawa ini dan island hoping adalah agenda yang tidak boleh dilewatkan jika mengunjungi Kepulauan Karimun ini.\r\nSemula tujuan kapal diarahkan ke pulau Sintok, namun karena pesona pulau Tengah yang saya lewati seakan memanggil-manggil akhirnya kapal pun berlabuh di pulau Tengah ini. Pulaunya sepi dan indah, namun menurut keterangan beberapa teman saya, pulau ini sudah dikelola oleh perorangan.\r\nPantainya yang putih bersih dengan sesekali ombak kecil datang menghipnotis teman-teman saya untuk segera menceburkan diri ke laut, dan saya pun tidak kuasa untuk menahan terlalu lama tidak menceburkan diri.\r\nSaking serunya, island hoping bahkan masih menjadi agenda saya di hari ketiga. Kali ini tujuan saya adalah Pulau Cemara Besar, Tanjung Gelam dan Pulau Menjangan.\r\n\r\n2. Snorkeling\r\nTentu, dengan lansekap Kepulauan Karimun yang terdiri dari banyak pulau, aktivitas ber-snorkeling ria tak boleh dilewatkan sembari island hopping. Untuk itu jangan lupa untuk selalu membawa peralatan snorkeling.\r\nJangan tercekat kala hamparan karang serta ikan warna-warni menyambut kedatanganmu, dan puaskan diri menikmati panorama bawah laut yang indah. Seperti kami yang baru saja merapat di sebuah pulau kecil dengan pantai yang indah sudah disambut dengan banyak ikan warna-warni. Terlihat sekeluarga Nemo pun dengan lincahnya menyambut kami.\r\n\r\n3. Berenang bersama Hiu\r\nJangan lupa untuk menyempatkan diri melihat penangkaran ikan hiu. Beberapa teman saya bahkan menikmati sensasi berenang bersama ikan yang terkenal ganas di sebuh kolam kecil yang terbuat dari susunan batu karang sehingga air laut masih bisa masuk dari celah-celah karang tersebut.', '2022-08-28 21:53:10', '2022-08-31 07:27:24'),
(13, 1, 'Pink Beach, Pantai Wajib Kunjung di Pulau Komodo', 'Sitimaryani', 'Sebagai negara kepulauan, Indonesia kaya sekali dengan objek wisata pantai. Dari Sabang di ujung barat hingga Merauke di posisi ujung timur bentangan pantai nya tidak terukur. Pasir putih dan hitam menghiasi sepanjang pantai yang membentang luas. Namun ada satu lagi yang menarik dari pantai-pantai di negeri ini, sebuah pantai dengan pasirnya yang berwarna pink (merah muda) dengan pesona underwater yang memukau, inilah Pink Beach di Pulau Komodo. Karena Pulau Komodo masuk dalam kawasan Taman nasional, maka untuk memasukinya juga harus mendapatkan surat ijin terlebih dahulu. Mengurus perijinan bisa dilakukan di Loh Liang. Tidak susah kok mengurus perijinannya, tinggal isi formulir data pribadi terus ditanda-tangani dan ijin memasuki kawasan taman nasional sudah ditangan.\r\nPantai Pink bisa di tempuh dengan jalur darat dan laut. Jika menggunakan kapal nelayan kita membutuhkan waktu sekitar 30 menit dari Loh Liang. Namun jika ingin menguji nyali bisa juga melalui jalur darat, namun karena harus melewati tebing-tebing terjal selama perjalanan, tak heran jika waktu tempuh yang dibutuhkan juga lebih lama, yakni 4,5 jam perjalanan.\r\nOh ya, pastikan kalau mau menuju pantai menggunakan kapal nelayan yang kecil, soalnya kalau kapal besar akan susah merapat ke pantai, karena memang sudah di sediakan tambatan khusus buat kapal-kapal besar yang hendak mengunjungi pantai pink.\r\nHal ini di lakukan supaya karang-karang yang beraneka ragam di perairan pantai pink tidak rusak terkena jangkar kapal yang di tambatkan.\r\nWarna pink dari pasir pantainya sendiri berasal dari sebuah proses alami. Serpihan karang merah, cangkang kerang, kalsium karbonat invertebrate laut kecil, porifera atau spons laut yang bercampur dan membentuk komposisi warna unik yang kalau di lihat warna pink menonjol di sepanjang pantai ini.\r\nAda banyak sekali aktifitas yang bisa di lakukan di pantai indah ini. Mulai dari duduk manis memandangi indahnya pantai dari salah satu ujung bukitnya, berenang dan snorkeling maupun diving.', '2022-08-28 22:00:36', '2022-08-31 07:28:47'),
(14, 2, 'Lamping Cirorek Alternatif Camping Ground Bernuansa Panorama Alam Garut', 'Maryani siti', 'Menghabiskan akhir pekan dengan berkemah di alam terbuka, bisa menjadi salah satu liburan alternatif. Terutama buat kamu yang ingin healing sejenak dari hiruk pikuk dunia.\r\nNah, buat kamu yang mau camping di Garut, Lamping Cirorek bisa menjadi destinasi pilihan yang recommended.\r\nBerlokasi di kawasan perhutani, tepatnya di Desa Cirorek, Kec. Cilawu, Kabupaten Garut, Lamping Cirorek menyuguhkan panorama alam Garut dengan keindahannya yang memesona. Meski terbilang baru, destinasi wisata ini telah menarik banyak perhatian dari berbagai kalangan.\r\nMengangkat konsep spot tourism atau wisata olahraga, Lamping Cirorek juga menyediakan area camping ground yang luas, dilengkapi dengan fasilitas trek speda gunung downhill. Di sana kamu juga bisa menikmati serunya hiking, fun offroad, dan ATV.\r\n\r\nHingga saat ini, Lamping Cirorek telah menjadi destinasi favorit keluarga di Garut. Mulai dari arisan, reuni, hingga tempat nongki anak muda setiap weekend. Meski berada di dataran tinggi, Lamping Cirorek dapat ditempuh kurang dari 30 menit dari pusat Kota Garut.\r\n\r\nKapan lagi bisa healing sambil menikmati udara sejuk dengan rimbun pohon pinus? Yuk, ke Lamping Cerorek aja!', '2022-08-31 07:45:19', '2022-08-31 07:45:19');

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE `komentar` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `isi` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `komentar`
--

INSERT INTO `komentar` (`id`, `nama`, `isi`, `created_at`, `updated_at`) VALUES
(1, 'rini', 'baik', '2022-08-31 06:29:25', '2022-08-31 06:29:25'),
(2, 'rina', 'sangat bagus', '2022-08-31 06:33:41', '2022-08-31 06:33:41'),
(3, 'Siti Maryani', 'Terimakasih', '2022-08-31 06:48:57', '2022-08-31 06:48:57');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `nama`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'siti', 'sitimaryani290304@gmail.com', 'Siti Maryani', '$2y$10$od./9bT1OTRVtzGnMw6ZHOVthZYIV.SJfRV.jfGf92ew3kIeB421a', NULL, '2022-08-28 09:41:15', '2022-08-28 10:52:44'),
(2, 'sitii', 'maryani100504@gmail.com', 'Maryani siti', '$2y$10$Oux9bcVf6a0lc4Z5gs.ZH.tvdvlwvZzStnnTtM9Jhy7ivx1HCn.IW', NULL, '2022-08-28 10:52:30', '2022-08-28 10:52:30');

-- --------------------------------------------------------

--
-- Table structure for table `user_detail`
--

CREATE TABLE `user_detail` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `no_handphone` varchar(15) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_detail`
--

INSERT INTO `user_detail` (`id`, `id_user`, `no_handphone`, `created_at`, `updated_at`) VALUES
(1, 1, '+6285845208005', '2022-08-28 09:41:15', '2022-08-28 09:41:15'),
(2, 2, '+6281256260274', '2022-08-28 10:52:30', '2022-08-28 10:52:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_detail`
--
ALTER TABLE `user_detail`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_detail`
--
ALTER TABLE `user_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
