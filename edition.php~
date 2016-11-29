<?php
require('functions.php');
session_start();
spl_autoload_register('chargerClasse');

//connection a la bdd
$bdd = connexionBdd();

//instanciation des gestionnaire de classe
$articleManager = new articleManager($bdd);
$utilisateurManager = new utilisateurManager($bdd);
$categorieManager = new categorieManager($bdd);
$imageDescriptionManager = new imageDescriptionManager($bdd);
$categories = $categorieManager->getList();
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

	<div class="container-fluid" id="container-index" >

		<form>
			<input type="file" class="filestyle" data-icon="false">
			<input type="text" class="form-control" placeholder="Title">
			<select class="selectpicker" data-live-search="true" title="Choose one of the following...">			  
			  <?php foreach($categories as $categorie){ ?>
			    <option value="<?php echo $categorie->ID_CATEGORIE(); ?>"><?php echo $categorie->NOM_CATEGORIE(); ?></option>
			  <?php } ?>
			</select>

			<textarea name="editor1" id="editor1">
	      </textarea>

	      <p>Do you wish to publish this article now ? (if not, this article will be saved and you will be able to publish it later)</p>
	      <label for="publish">Yes, let's do it! </label><input type="checkbox" aria-label="publish" id="publish">
	      <div>
	      	<input class="btn btn-primary" id="submit" type="submit" value="Save & Publish">
	      </div>
		</form>
		
	</div>

   <script>
       // Replace the <textarea id="editor1"> with a CKEditor
       // instance, using default configuration.
       CKEDITOR.replace( 'editor1' );
       $("#publish").click(function () {
			if(document.getElementById('publish').checked)
			{
				$("#submit").val("Save & Publish");
			}
			else {
				$("#submit").val("Save");
			}
       })
       document.getElementById('publish').checked = true;
   </script>
	      
</body>

</html>
