<?php

	$filepath = realpath(dirname(__FILE__));
	include_once ($filepath.'/../lib/Session.php');
	Session::init();
	include_once ($filepath.'/../lib/Database.php');
	include_once ($filepath.'/../helpers/Format.php');
	spl_autoload_register(function($class){
		include_once "classes/".$class.".php";

	});
	$db = new Database();
	$fm = new Format();
	$usr = new User();
	$exm = new Quiz();
	$pro = new Proses();

header("Cache-Control: no-store, no-cache, must-revalidate"); 
header("Cache-Control: pre-check=0, post-check=0, max-age=0"); 
header("Pragma: no-cache"); 
header("Expires: Mon, 31 Dec 2020 00:00:00 GMT"); 
header("Last-Modified: " . gmdate("D, d M Y H:i:s") . " GMT");
?>
<!doctype html>
<html>
<head>
	<title>Kuis Online</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="Pragma" content="no-cache">
	<meta http-equiv="no-cache">
	<meta http-equiv="Expires" content="-1">
	<meta http-equiv="Cache-Control" content="no-cache">
	<link rel="stylesheet" href="css/main.css">
	<script src="js/jquery.js"></script>
	<script>
      $(document).ready(function() {
         function disablePrev() { window.history.forward() }
         window.onload = disablePrev();
         window.onpageshow = function(evt) { if (evt.persisted) disableBack() }
      });

      function remove_hash_from_url() { 
            var uri = window.location.toString(); 
  
            if (uri.indexOf("?") > 0) { 
                var clean_uri = uri.substring(0,  
                                uri.indexOf("?")); 
  
                window.history.replaceState({},  
                        document.title, clean_uri); 
            } 
     }  

     

   </script>
</head>
<body>


	<?php 
	if (isset($_GET['action']) && $_GET['action'] == 'logout') {
		Session::destroy();
		header("Location:quiz.php");
		exit();
	}
	 ?>

<div class="phpcoding">
	<section class="headeroption"><h2><?php echo "PT.Astar Edu Utama"; ?></h2></section>
		<section class="maincontent">
		
	