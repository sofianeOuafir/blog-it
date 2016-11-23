<?php 
session_start();
require 'functions.php';
spl_autoload_register('chargerClasse');
$bdd = connexionBdd();
$utilisateurManager = new utilisateurManager($bdd);
$imageDescriptionManager = new imageDescriptionManager($bdd);
$utilisateurs = $utilisateurManager->getAll();
//$image = $imageDescriptionManager->get($utilisateur->ID_IMAGE());
?>
<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" /> 
<link href="css/about.css" rel="stylesheet" type="text/css">

<title>About - Sofiane's Chronicle</title>
<?php 
include('header.php'); 
?>	


	
<script> 
$('.nav li:nth-child(3)').addClass('active');

</script>
<script src="jquery.js"></script>



</body>

</html>