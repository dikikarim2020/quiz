<?php include 'inc/header.php'; ?>
<?php
Session::checkSession();
$question = $exm->getQuestion();
$total = $exm->getTotalRows();
?>
<div class="main">
<h1>Kuis Online</h1>
	<div class="startsoal">
		<h2>Uji Pengetahuan Anda</h2>
		<p>Ini adalah kuis pilihan ganda untuk menguji pengetahuan Anda</p>

		<ul>
			<li><strong>Jumlah Pertanyaan:</strong> <?php echo $total; ?></li>
			<li><strong>Tipe Pertanyaan:</strong> Pilihan ganda</li>
		</ul>

		<a href="soal.php?q=<?php echo $question['quesNo']; ?>">Mulai Tes</a>

	</div>

  </div>
<?php include 'inc/footer.php'; ?>