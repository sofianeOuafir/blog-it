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
	<link href="css/edition.css" rel="stylesheet" type="text/css">
	<title>Edition - Golbit</title>
	<?php 
	include('header.php'); 
	?>

	<div class="container-fluid" id="container-index" >

		<form method="post" action="controller/edition.controller.php" enctype="multipart/form-data">
			<div class="col-xs-5" id="image">
			<input type="file" name="image" class="filestyle" data-buttonBefore="true" data-placeholder="This image will be the front cover of your article, please choose well" data-iconName="glyphicon glyphicon-picture" data-buttonText="Find an image" data-buttonName="btn-primary" >
			</div>
			<input type="text" class="form-control" placeholder="Title (max 100 characters)" name="TITRE" id="titre">
			<div id="category">
			<select class="selectpicker" data-live-search="true" title="Choose one of the following..." name="ID_CATEGORIE">			  
			  <?php foreach($categories as $categorie){ ?>
			    <option value="<?php echo $categorie->ID_CATEGORIE(); ?>"><?php echo $categorie->NOM_CATEGORIE(); ?></option>
			  <?php } ?>
			</select>
			</div>

			<textarea name="CONTENU" id="CONTENU">
	      </textarea>

	      <p id="question-publish">Do you wish to publish this article now ? (if not, this article will be saved and you will be able to publish it later)</p>
	      <label for="publish">Yes, let's do it! </label><input type="checkbox" id="publish" name="PUBLIER">

	      <div id="submit-container">
	      	<input class="btn btn-primary" type="submit" id="submit" value="Save & Publish">
	      </div>
		</form>
		
	</div>

   <script>
       // Replace the <textarea id="editor1"> with a CKEditor
       // instance, using default configuration.
       CKEDITOR.replace( 'CONTENU' );
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
