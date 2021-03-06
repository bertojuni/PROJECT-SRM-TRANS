<?php
//sumber w3schools.com
include("includes/config.php");
$target_dir = "gallery/";
$target_file = $target_dir . basename($_FILES["foto"]["name"]);
$uploadOk = 1;
$imageFileType = pathinfo($target_file,PATHINFO_EXTENSION);
// Check if image file is a actual image or fake image
if(isset($_POST["submit"])) {

	// Check if file already exists
	if (file_exists($target_file)) {
		echo "<script>alert('Maaf, File sudah pernah di upload! Harap upload file yang berbeda');history.go(-1);</script>";
		$uploadOk = 0;
	}
	// Check file size
	if ($_FILES["foto"]["size"] > 2097152) {
		echo "<script>alert('Maaf, ukuran file anda terlalu besar');history.go(-1);</script)";
		$uploadOk = 0;
	}
	// Allow certain file formats
	if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
	&& $imageFileType != "gif" && $imageFileType != "mp4" ) {
		echo "<script>alert('Maaf, file hanya bisa JPG, JPEG, PNG & GIF');history.go(-1);</script>";
		$uploadOk = 0;
	}
	// Check if $uploadOk is set to 0 by an error
	if ($uploadOk == 0) {
		echo "<script>alert('Maaf, file anda tidak bisa terupload');history.go(-1);</script>";
	// if everything is ok, try to upload file
	} else {
		if (move_uploaded_file($_FILES["foto"]["tmp_name"], $target_file)) {
			$nama = basename( $_FILES["foto"]["name"]);
			$tgl = date("Y-m-d");
			$query = $koneksi->query("INSERT INTO galeri(tgl_upload, nama) VALUES('$tgl','$nama')") or die($koneksi->error);
			if($query){
				$i = $koneksi->insert_id;
				header("Location: foto.php?id=".$i);
			}else{
				echo '<script>alert("Maaf Gagal!"); document.location="upload.php?menu=upload";</script>';
			}
		} else {
			echo "Sorry, there was an error uploading your file.";
		}
	}
}
?>