
<!DOCTYPE html>
<html>
<head>
	<title>KOPERASI SEJAHTERA</title>
</head>
<body bgcolor="#F4F0EC">

	<center><h2>KOPERASI SEJAHTERA</h2></center>
	<br/>
	<a href="index.php">KEMBALI</a>
	<br/>
	<br/>
	<h3>TABUNGAN</h3>
	<form method="post" action="tabungan_aksi.php">
		<?php
			include 'koneksi.php';
			$nama_anggota = $_GET['id'];
			$query = mysqli_query($koneksi, "SELECT * FROM data_anggota WHERE nama_anggota='$nama_anggota'");
		while ($data=mysqli_fetch_array($query))
			{
		?>
		<label for="no_anggota">No. Anggota : </label>
		<input type="nubmer" name="no_anggota" id="no_anggota" value="<?= $data['no_anggota'];?>"><br><br>
		<label for="nama_anggota">Nama Anggota : </label>
		<input type="nubmer" name="nama_anggota" id="nama_anggota" value="<?= $data['nama_anggota'];?>"><br><br>
		<label for="total_simpanan">Jumlah yang akan ditabung : </label>
		<input type="nubmer" name="total_simpanan" id="total_simpanan">
		<?php
	}
	?>
		<br><br>
			<button type="submit">Tambah</button>
	</form>
</body>
</html>