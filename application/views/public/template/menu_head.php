<head>
	<style type="text/css">
		/* css dropdown */
		html,
		body {
			padding: 0;
			margin: 0;
			font-family: sans-serif;
		}

		.menu-malasngoding {
			background-color: #3141ff;
		}

		.menu-malasngoding ul {
			list-style-type: none;
			margin: 0;
			padding: 0;
			overflow: hidden;
		}

		.menu-malasngoding>ul>li {
			float: left;
		}


		.menu-malasngoding li a {
			display: inline-block;
			color: blue;
			text-align: center;
			padding: 14px 16px;
			text-decoration: none;
		}

		.menu-malasngoding li a:hover {
			background-color: #2525ff;
		}

		li.dropdown {
			display: inline-block;
		}

		.dropdown:hover .isi-dropdown {
			display: block;
		}

		.isi-dropdown a:hover {
			color: blue !important;

		}

		.isi-dropdown {
			position: absolute;
			display: none;
			box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
			width: 130px;
			z-index: 1;
			background-color: #f9f9f9;

		}

		.isi-dropdown a {
			color: #3c3c3c !important;

		}

		.isi-dropdown a:hover {
			color: #00CED1 !important;
			background: #f3f3f3 !important;
		}

		/* end css dropdown */
	</style>
</head>
<div style="background-color: white" id="menu-head-wrapper" href="<?php echo base_url(); ?>">

	<!-- icon logo -->
	<a href="<?php echo base_url(); ?>">

		<strong>
			<div class="logo" style="color: #000000;" href="<?php echo base_url(); ?>">
				<?php echo title_web(); ?>
		</strong>
		<!-- end icon logo -->
</div>
</a>

<div class="menu">
	<nav>
		<ul>
			<li>
				<a style="color: black" href="<?php echo base_url(); ?>kendaraan">
					Beranda
				</a>
			</li>
			<li>
				<a style="color: black" href="http://srmtrans.com/kendaraan/bus-pariwisata">
					Pemesanan
				</a>
			</li>
			<li>
				<a style="color: black" href="<?php echo base_url(); ?>ordercheck">
					Cek Pemesanan
				</a>
			</li>
			<li class="dropdown">
				<a style="color: black" href="<?php echo base_url(); ?>">
					Layanan
					<i class="fas fa-angle-down"></i>
				</a>
				<ul class="isi-dropdown">
					<li><a href="#">SELF LOUDER</a></li>
					<li><a href="http://doser.srmtrans.com/">DOSER</a></li>
					<li><a href="#">EXCAVATOR</a></li>
					<li><a href="#">DUMP TRUCK</a></li>
					<li><a href="#">VIBRO</a></li>
				</ul>
			</li>
			<li>
				<a style="color: black" href="<?php echo base_url(); ?>gallery/tampilanUser.php">
					Gallery
				</a>
			</li>
			</a>
			</li>
			<?php foreach ($menu as $md) : ?>
				<?php if (count($menu) > 0) : ?>
					<!-- navigator yang mengisi nya dari admin -->
					<li>
						<a style="color: black" href="<?php echo base_url() . '/page/' . url_title($md->name_page, '-', TRUE); ?>">
							<?php echo $md->name_page; ?>
						</a>
					</li>
					<!-- end navigator -->
				<?php else : ?>
				<?php endif; ?>
			<?php endforeach; ?>

		</ul>
	</nav>
</div>

</div>