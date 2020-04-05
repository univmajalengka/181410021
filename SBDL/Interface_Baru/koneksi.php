<?php 
	$koneksi = mysqli_connect('localhost','root','','koperasi');
	if(!$koneksi){
		echo "GAGAL TERHUBUNG KE DATABASE" . mysqli_error();
} 
?>