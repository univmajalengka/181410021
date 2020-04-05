<?php 

	include 'koneksi.php';
	$no_anggota = $_POST['no_anggota'];
	$nama = $_POST['nama'];
	$tempat_lahir = $_POST['tempat_lahir'];
	$tanggal_lahir = $_POST['tanggal_lahir'];
	$jk = $_POST['jk'];
	$alamat = $_POST['alamat'];
	$tlp = $_POST['tlp'];
	$status = $_POST['status'];

	$query = mysqli_query($koneksi, "INSERT INTO data_anggota VALUES('$no_anggota', '$nama', '$tempat_lahir', '$tanggal_lahir', '$jk', '$alamat', '$tlp', '$status', '')");

	header("Location:index.php");

 ?>