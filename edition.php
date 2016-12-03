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
				<input type="file" id="myImage" name="image" class="filestyle" data-buttonBefore="true" data-placeholder="This image will be the front cover of your article, please choose well" data-iconName="glyphicon glyphicon-picture" data-buttonText="Find an image" data-buttonName="btn-primary" >
			</div>
			
			<div class="alert alert-danger col-xs-5" role="alert" id="alert-image">
				<strong>	Oh snap! </strong> You got an error. Upload an image and try again! 					
			</div>
			<div id="titre">
				<input maxlength="100" type="text" class="form-control" placeholder="Title (max 100 characters)" name="TITRE" id="title">
			</div>
			<div class="alert alert-danger" role="alert" id="alert-titre">
				<strong>	Oh snap! </strong> You got an error. write at least 10 characters and try again! 					
			</div>
			<div id="category">
			<select id="selectpicker" class="selectpicker" data-live-search="true" data-header="Select a category" name="ID_CATEGORIE">			  
			  <?php foreach($categories as $categorie){ ?>
			    <option value="<?php echo $categorie->ID_CATEGORIE(); ?>"><?php echo $categorie->NOM_CATEGORIE(); ?></option>
			  <?php } ?>
			</select>
			</div>

			<textarea maxlength="100" name="CONTENU" id="CONTENU">
	      </textarea>
	      
	      <div class="alert alert-danger" role="alert" id="alert-contenu">
				<strong>	Oh snap! </strong> You got an error. write at least 20 words (200 characters) and try again!
			</div>

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
       
       //change the submit button value if the publish checkbox is checked
       $("#publish").click(function () {
			if(document.getElementById('publish').checked)
			{
				$("#submit").val("Save & Publish");
			}
			else {
				$("#submit").val("Save");
			}
       })
       
		//before submission, I do checking on input controls
       $('form').submit(function() {
       	var isConsistent = true;
       	
			//checking if no image is uploaded
       	if ($('.filestyle').get(0).files.length === 0) 
       	{
    			$('#alert-image').show();
    			isConsistent = false;
		 	}
		 	else {
		 		$('#alert-image').hide();
		 	}

		 	if($("#title").val().length < 10)
		 	{
		 		$('#alert-titre').show();
    			isConsistent = false;
		 	}
		 	else {
		 		$('#alert-titre').hide();
		 	}
		 	
		 	//check that the user wrote at list 200 words
		 	if (getClearText(CKEDITOR.instances.CONTENU.getData()).length -1 < 200) {
		 		$('#alert-contenu').show();
		 		isConsistent = false;
		 	}
		 	else {
		 		$('#alert-contenu').hide();
		 	}
		 	
   	 	if (isConsistent) {
				var data = new FormData($('form')[0]);
				jQuery.each(jQuery('#myImage')[0].files, function(i, file) {
				    data.append('image', file);
				    data.append('INTRODUCTION',getClearText(CKEDITOR.instances.CONTENU.getData()))
				    data.append('CONTENU',CKEDITOR.instances.CONTENU.getData())
				});
				
				jQuery.ajax({
				    url: 'controller/edition.controller.php',
				    data: data,
				    cache: false,
				    contentType: false,
				    processData: false,
				    type: 'POST',
				    success: function(data){
				        alert(data);
				    }
				});

   	 		return false;
   	 	}
   	 	else {

   	 		return false;
   	 	}
		});

		document.getElementById('publish').checked = true;
		$('#alert-image').hide();
		$('#alert-contenu').hide();
		$('#alert-titre').hide();

		//this function allow to have editor plain text
		function getClearText(strSrc) {
			return  strSrc.replace( /<[^<|>]+?>/gi,'' );
		}


 	

   </script>
   
   <script src="js/library.js"></script>
	      
</body>

</html>
