
<?php include("includes/config.php"); ?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<title>Gallery</title>
	
	<link href="css/bootstrap.css" rel="stylesheet">
	<link href="css/custom.css" rel="stylesheet">

	<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
	</head>
<body>
	
	<?php include("includes/navbar1.php"); ?>
	<div class="container body">
		<h1>My Gallery</h1><br>
		<div class="gal">
			<?php
			$query = $koneksi->query("SELECT * FROM galeri ORDER BY id DESC") or die($koneksi->error);
			if($query->num_rows){
				while($row = $query->fetch_assoc()){
					echo '<a width="300px" height="300px" href="foto.php?id='.$row['id'].'"><img width="300px" height="300px" src="gallery/'.$row['nama'].'" alt=""></a>';
				}
			}
			?>
		</div>
	</div>
	
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>

	
</body>
</html>


<div align="left">
	<style type="text/css">
		@import url('https://fonts.googleapis.com/css?family=Ruluko');
body {
  background-color: #ffffff;
  font-family: 'Ruluko', sans-serif;
}

#watch {
  color: rgb(252, 150, 65); 
  z-index: 1;
  height: 1.4em;
  width: 1.8em;
  overflow: show;
  margin: right;
  top: 0;
  left: 0;
  bottom: 0;
  right: 0;
  font-size: 5vw;
  -webkit-text-stroke: 3px rgb(210, 65, 36);
  text-shadow: 4px 4px 10px rgba(210, 65, 36, 0.4),
               4px 4px 20px rgba(210, 45, 26, 0.4),
               4px 4px 30px rgba(210, 25, 16, 0.4),
               4px 4px 40px rgba(210, 15, 06, 0.4);
}
	</style>
	<body>
   
<div style="background-color: #191970">
<!DOCTYPE html>
<html>
<div align="center">
  <head>
    <title>Vibro</title>
    <link href="https://fonts.googleapis.com/css?family=Roboto+Condensed" rel="stylesheet">
    <link rel="stylesheet" href="css/demo.css"/>
    <link rel="stylesheet" href="css/theme1.css"/>
  </head>
  <body>
    <div id="caleandar">

    </div>

    <script type="text/javascript" src="js/caleandar.js"></script>
    <script type="text/javascript" src="js/demo.js"></script>
    </div>
  </body>
</html>
		<br>
	
<div align="center">
<table style="color: #ffffff;">
	<th><strong><u>SUPPORT</u></strong></tr></th>
</table>
	<a href="alatberat.php" style="color: #ffffff;">Excavator</a>
	<a href="selflouder.php" style="color: #ffffff;">Self Louder</a>
	<a href="truk.php" style="color: #ffffff;">Dump Truck</a>
	<a href="doser.php" style="color: #ffffff;">Doser</a>
	<a href="vibro.php" style="color: #ffffff;">Vibro</a>

	<br>
<table style="color: #ffffff;">
	<th><strong><u>KETERANGAN</u></strong></th>
</table>
	<a href="#" style="color: #ffffff;">contack</a>
	<a href="#" style="color: #ffffff;">syarat & ketentuan</a>
</div>

	<div class="footer-wrapper" style="background-color: #191970">
		<strong><span style="text-align: center; display: block; color: #ffffff;" >Copyright ©2019 SRM Trans</span></strong>

	</div>


</div>