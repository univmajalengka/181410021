<?php 

	session_start();
	if(!$_SESSION['username']){
		header("Location:form_login.php");
	}

 ?>




<!DOCTYPE html>
<html>
<head>
	<title>KOPERASI SEJAHTERA</title>
</head>
<body bgcolor="#F4F0EC">
	<center><h2>KOPERASI SEJAHTERA</h2></center>
	<br/>
	<a href="tambah.php">Tambah Anggota</a>
	<br/>
	<br/>
	<table cellpadding="10" cellspacing="0" border="1">
		<tr bgcolor="#DA614E">
			<th>No</th>
			<th>No Anggota</th>
			<th>Nama</th>
			<th>Tempat Lahir</th>
			<th>Tanggal Lahir</th>
			<th>Jenis Kelamin</th>
			<th>Alamat</th>
			<th>No Telepon</th>
			<th>Status</th>
			<th>Total Simpanan</th>
			<th>Tabungan</th>
			<th>Penarikan</th>
			<th>OPSI</th>
		</tr>
		<?php 
		include 'koneksi.php';
		$no = 1;
		$data = mysqli_query($koneksi,"SELECT * FROM data_anggota");
		while($d = mysqli_fetch_array($data)){
			?>
			<tr>
				<td><?php echo $no++; ?></td>
				<td><?php echo $d['no_anggota']; ?></td>
				<td><?php echo $d['nama_anggota']; ?></td>
				<td><?php echo $d['tempat_lahir']; ?></td>
				<td><?php echo $d['tanggal_lahir']; ?></td>
				<td><?php echo $d['jenis_kelamin']; ?></td>
				<td><?php echo $d['alamat']; ?></td>
				<td><?php echo $d['no_telepon']; ?></td>
				<td><?php echo $d['status']; ?></td>
				<td><?php echo $d['total_simpanan']; ?></td>
				<td><a href="tabungan.php?id=<?= $d['nama_anggota']; ?>">Tabungan</a></td>
				<td><a href="penarikan.php?id=<?= $d['nama_anggota']; ?>">Penarikan</a></td>
				<td>
					<a href="hapus.php?id=<?php echo $d['nama_anggota']; ?>">Hapus</a>
				</td>
			</tr>
			<?php 
		}
		?>
	</table>
	<br>
	<br>
	<a href="logout.php">Logout</a>
	</br>
	</br>
</body>
</html>