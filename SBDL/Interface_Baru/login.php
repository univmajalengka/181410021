<?php 
session_start();

include 'koneksi.php';

$username = $_POST['username'];
$password = $_POST['password'];

$cekadmin = mysqli_query($koneksi, "SELECT * FROM admin WHERE username='$username'");
$jumlah = mysqli_num_rows($cekadmin);
$hasil = mysqli_fetch_array($cekadmin);
if($jumlah == 0){
	echo "username belum terdaftar!";
	echo '<a href = "form_login.php">Back</a>';
}else{
	$_SESSION['username'] = $username;
	header('location:index.php');
}
?>