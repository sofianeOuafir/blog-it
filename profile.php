<?php
require('functions.php');
session_start();
spl_autoload_register('chargerClasse');
$bdd = connexionBdd();
$utilisateurManager = new utilisateurManager($bdd);
$imageDescriptionManager = new imageDescriptionManager($bdd);
$utilisateur = $utilisateurManager->get($_GET['idUtilisateur']);
$image = $imageDescriptionManager->get($utilisateur->ID_IMAGE());
?>
<!DOCTYPE html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" /> 
	<link href="css/profile.css" rel="stylesheet" type="text/css">
	<link href="css/library.css" rel="stylesheet" type="text/css">
	<title>Profile - Golbit</title>
	<?php 
	include('header.php'); 
	?>
	<div class="container-fluid" id="container-index" >
		<div class="row">
			<div class="col-md-offset-5 col-md-2 col-md-offset-5 presentation">
				<img class="img-circle" src="<?php echo $image->SOURCE(); ?>" alt="echo $image->ALT();">
			</div>
		</div>
	</div>
</body>
</html>