<?php
require('functions.php');
session_start();
spl_autoload_register('chargerClasse');

//connection a la bdd
$bdd = connexionBdd();

//instanciation des gestionnaire de classe
$articleManager = new articleManager($bdd);
$videoManager = new videoManager($bdd);
$utilisateurManager = new utilisateurManager($bdd);
$categorieManager = new categorieManager($bdd);
$imageManager = new imageManager($bdd);
$imageDescriptionManager = new imageDescriptionManager($bdd);

?>
<!DOCTYPE html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" /> 
	<link href="css/library.css" rel="stylesheet" type="text/css">
	<title>Edition - Sofiane's Chronicle</title>
	<?php 
	include('header.php'); 
	?>

	<div class="container-fluid" id="container-index">
		<form>
		 	<textarea name="editor1" id="editor1" rows="10" cols="80">
	          This is my textarea to be replaced with CKEditor.
	      </textarea>
	      <script>
	          // Replace the <textarea id="editor1"> with a CKEditor
	          // instance, using default configuration.
	          CKEDITOR.replace( 'editor1' );
	      </script>
		</form>
	</div>


</body>

</html>
