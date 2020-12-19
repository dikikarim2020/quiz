 </section>
<section class="footeroption">
		<h2><?php echo "PT.Astar Edu Utama"; ?></h2>
	</section>
</div>
</body>
<script type="text/javascript">
	function getURLParameter(name) {
		return decodeURI((RegExp(name + '=' + '(.+?)(&|$)').exec(location.search)||[,null])[1]);
	 }
	 
	 function hideURLParams() {
	 	//Parameters to hide (ie ?success=value, ?error=value, etc)
	 	var hide = ['success','error'];
	 	for(var h in hide) {
			if(getURLParameter(h)) {
				history.replaceState(null, document.getElementsByTagName("title")[0].innerHTML, window.location.pathname);
			}
	 	}
	 }
	//setTimeout(function(){
 	//	hideURLParams();
	//}, 700);
	
</script>
</html>