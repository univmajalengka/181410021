<body bgcolor="#EEF2F7">
<?php
	include "koneksi.php";
	$username	= $_POST['username'];
	$nama		= $_POST['nama'];
	$tgl_ambil	= $_POST['thn_ambil']."-".$_POST['bln_ambil']."-".$_POST['tgl_ambil'];
	$jml_ambil	= $_POST['jml_ambil'];
	//validasi data jika data kosong
	if (empty($_POST['jml_ambil'])) {
	?>
		<script language="JavaScript">
			alert('Masukan Jumlah Pengambilan!');
			document.location='home-admin.php?page=list-tabungan';
		</script>
	<?php
	}
	else {
	//Masukan data ke Table
	$input	="INSERT INTO data_penarikan (username, nama, tgl_ambil, jml_ambil) VALUES ('$username','$nama','$tgl_ambil','$jml_ambil')";
	$query_input =mysqli_query($koneksi, $input);
	//Update tabungan di tabel member
	$update="UPDATE data_anggota SET tabungan=tabungan - $jml_ambil WHERE username='$username'";
	$query_update =mysqli_query($koneksi, $update);
		if ($query_update) {
		//Jika Sukses
	?>
		<script language="JavaScript">
		alert('Data Pengambilan Tabungan Berhasil Diinput!');
		document.location='home-admin.php?page=list-tabungan';
		</script>
	<?php
	}
	else {
	//Jika Gagal
	echo "Pengambilan Gagal Diinput, Silahkan diulangi!";
	}
	}
	//Tutup koneksi engine MySQL
	mysqli_close($Open);
?>
</body>