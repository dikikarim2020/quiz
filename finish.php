<?php include 'inc/header.php'; ?>
<?php
Session::checkSession();
?>
<div class="main">
<h1>Kuis Selesai!</h1>

<div class="startsoal">
	<p>Selamat! Anda baru saja menyelesaikan ujian.</p>
	<p>Hasil akhir: 

		<?php 
		if (isset($_SESSION['score'])) {
			echo $_SESSION['score'];
			unset($_SESSION['score']);
		}
		 ?>

	</p>

	<a href="viewjawaban.php">Lihat Kunci Jawaban</a>
	<a href="startsoal.php">Mulai lagi</a>
</div>
	
  </div>
<?php include 'inc/footer.php'; ?>