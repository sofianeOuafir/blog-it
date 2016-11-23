<?php
require('../functions.php');
session_start();
if(connecter())
{
$bdd = connexionBdd();

$imageDescriptionManager = new imageDescriptionManager($bdd);
$images = $imageDescriptionManager->getList();

?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Gestion des images</title>
<link rel="stylesheet" type="text/css" href="view.css" media="all"/>
<script type="text/javascript" src="view.js"></script>

</head>
<body id="main_body" >
	<?php
	$notSameDirectory = 1;
	include('../header.php');
	?>
	<div id="form_container">
	
		<form id="form_975666" class="appnitro"  method="post" action="traitementImage.php" enctype="multipart/form-data">
		<div class="form_description">
			<h2>Gestion des images</h2>
		</div>						
			<ul >
			
				<li>
					<label id="descriptionImage">Ajouter une image</label>	
					<input type="file" name="image"/>
				</li>
			
				<li id="li_1" >
					<label class="description" for="element_1">Description : </label>
					<div>
						<input id="element_1" name="ALT" class="element text medium" type="text" maxlength="255" value=""/> 
					</div> 
				</li>
			
				<li class="buttons">
				    <input type="hidden" name="form_id" value="975666" />
				    
					<input id="saveForm" class="button_text" type="submit" name="submit" value="Submit" />
				</li>
			</ul>
		</form>	
	</div>
	
	
	<div id="images">
		<h2>Les images</h2>
			<form method="post" action="traitementImage.php">
	
				<?php
				if($images)
				{
					foreach($images as $image)
					{
					?>
					<div>
						<input type="checkbox" name="images[]" value="<?php echo $image->ID_IMAGE() ?>"/> <?php echo $image->ALT(); ?>	
					</div>
					<?php
					}
				}
				?>
				<input type="submit" value="Supprimer"/>

			</form>
		</div>


	<div id="parcourirImage">
		<h2>Les fichiers</h2>
		<?php
		parcourirDossier('../image','traitementImage.php');
		?>
	</div>
	</body>
</html>
<?php
}
else
{
redirectionVers('../index.php');
}
?>