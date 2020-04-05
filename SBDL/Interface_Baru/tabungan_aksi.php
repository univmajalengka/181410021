<?php 

	include 'koneksi.php';
	$no_anggota = $_POST['no_anggota'];
	$nama_anggota = $_POST['nama_anggota'];
	$total_simpanan = $_POST['total_simpanan'];
$query = mysqli_query($koneksi, "UPDATE data_anggota SET total_simpanan=total_simpanan + $total_simpanan WHERE no_anggota='$no_anggota'");

	header("Location:index.php");

 ?>