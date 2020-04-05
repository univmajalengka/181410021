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
	<h3>TAMBAH DATA MAHASISWA</h3>
	<form method="POST" action="tambah_aksi.php">
		<label for="no_anggota">No Anggota</label>
		<input type="number" name="no_anggota" id="no_anggota">
		<br><br>
		<label for="nama">Nama Anggota</label>
		<input type="text" name="nama" id="nama">
		<br><br>
		<label for="tempat_lahir">Tempat Lahir</label>
		<input type="text" name="tempat_lahir" id="tempat_lahir">
		<br><br>
		<label for="tanggal_lahir">Tanggal Lahir</label>
		<input type="date" name="tanggal_lahir" id="tanggal_lahir">
		<br><br>
		<label for="jk">Jenis Kelamin</label>
		<input type="text" name="jk" id="jk">
		<br><br>
		<label for="alamat">Alamat</label>
		<input type="text" name="alamat" id="alamat">
		<br><br>
		<label for="tlp">No. Telepon</label>
		<input type="number" name="tlp" id="tlp">
		<br><br>
		<label for="status">Status</label>
		<input type="text" name="status" id="status">
		<br><br>
			<button type="submit">Tambah</button>
	</form>
</body>
</html>