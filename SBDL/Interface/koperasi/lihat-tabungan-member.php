<div style="border:0; padding:10px; width:924px; height:auto;">
<center><font color="indianred" size="2"><b>Tabungan Anda</b></font></center><br />
<table width="860" border="0" align="center" cellpadding="0" cellspacing="0">
<tr bgcolor="#CD5C5C">
	<th width="5%">No</td>&nbsp;
	<th width="15%" height="42">USERNAME</td>&nbsp;
	<th width="50%">NAMA</td>&nbsp;
	<th width="30%">TOTAL Tabungan</td>&nbsp;    
</tr>
<?php
	include "koneksi.php";
	if (isset($_GET['username'])) {
		$username = $_GET['username'];
	}
	else {
	die ("Error. No ID Selected! ");	
	}
	$Cari="SELECT * FROM data_anggota WHERE username='$username'";
	$Tampil = mysqli_query($koneksi, $Cari);
	$nomer=0;
    while (	$hasil = mysqli_fetch_array ($Tampil)) {
			$username= stripslashes ($hasil['username']);
			$nama 	= stripslashes ($hasil['nama']);
			$tabungan 	= stripslashes ($hasil['tabungan']);
		{
	$nomer++;
?>
	<tr align="center" bgcolor="#DFE6EF">
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr align="center">
		<td height="32"><?=$nomer?><div align="center"></div></td>
		<td><?=$username?><div align="center"></div></td>
		<td><?=$nama?><div align="center"></div></td>
		<td><?=$tabungan?><div align="center"></div></td>
	</tr>
	<tr align="center" bgcolor="#DFE6EF">
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
<?php  
		}
	}
?>
</table>
</div>