<?php 

	include("includes/config.php");

	$id = $_GET['id'];

	$query = "DELETE FROM galeri WHERE id = '$id'";

	mysqli_query($koneksi, $query);

	if($query){
		
		echo "<br>Data Berhasil di Hapus<br>";
		echo '<a href="index.php">Lihat Data</a>';
		
	}else{
		
		echo "<br>Gagal Menghapus Data!<br>";		
		echo '<a href="index.php">Kembali</a>';	
}

?>