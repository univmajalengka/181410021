<?php 
// koneksi database
include 'koneksi.php';

// menangkap data id yang di kirim dari url
$nama = $_GET['id'];


// menghapus data dari database
mysqli_query($koneksi,"DELETE FROM data_anggota WHERE nama_anggota='$nama'");

// mengalihkan halaman kembali ke index.php
header("location:index.php");

?>