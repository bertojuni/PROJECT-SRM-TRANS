<?php include("includes/config.php"); ?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<title>SRM Trans | Gallery</title>
	
	<link href="css/bootstrap.css" rel="stylesheet">
	<link href="css/custom.css" rel="stylesheet">

	<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
	</head>
<body>

	<?php include("includes/navbar.php"); ?>
	
	<div class="container body">
		<h1>Recent pictures</h1>
		<div class="gal">
			<?php
			$id = $_GET['id'];
	$query = "DELETE FROM galeri WHERE id = '$id'";

	mysqli_query($koneksi, $query);

	if($query){
		
		echo "";
		
	}else{
		
		echo "<br>Gagal Menghapus Data!<br>";		
		echo '<a href="index.php">Kembali</a>';	
}


			$query = $koneksi->query("SELECT * FROM galeri ORDER BY id DESC") or die($koneksi->error);
			if($query->num_rows){
				while($row = $query->fetch_assoc()){
					echo '
					<table>
					<tr>
					<td><a width="300px" height="300px" href="foto.php?id='.$row['id'].'"></td>
					</tr>
					<tr>
					<td><img width="300px" height="300px" src="gallery/'.$row['nama'].'" alt=""></a></td>
					</tr>
					<td><a width="300px" height="300px" href="index.php?id='.$row['id'].'"class="btn btn-primary btn-block">Hapus</a></td>
					</tr>
					</table>'
					;
				}
			}
			?>
		</div>
	</div>
	
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	
</body>
</html>