<?php
require('functions.php');
spl_autoload_register('chargerClasse'); // On enregistre la fonction en autoload pour qu'elle soit appelée dès qu'on instanciera une classe non déclarée.
session_start();
if(connecter())
{
	$bdd = connexionBdd();
	//instanciation du manager utilisateur 
	$utilisateurManager = new utilisateurManager($bdd);
	$videoManager = new videoManager($bdd);
	if(isset($_POST['informationsPersonnelles']))
	{
		$id_video = NULL;
		if($_POST['id_video'] != "")
		{
			$id_video = $_POST['id_video'];			
		}
		
		
		
		$utilisateur = new utilisateur(array(
							'PSEUDONYME' => $_POST['PSEUDONYME'],
							'PASSWORD' => $_POST['PASSWORD'],
							'DATE_NAISSANCE' => $_POST['DATE_NAISSANCE'],
							'VILLE' => $_POST['VILLE'],
							'PAYS' => $_POST['PAYS'],
							'ID_UTILISATEUR' => $_SESSION['UTILISATEUR']->ID_UTILISATEUR(),
							'INTRODUCTION' => $_POST['INTRODUCTION'],
							'CONTENU' => $_POST['CONTENU'],
							'ID_IMAGE' => $_POST['id_image'],
							'ID_VIDEO' => $id_video
							));
							
		$utilisateurManager->update($utilisateur);
		redirectionVers('utilisateur.page.php');
		
	}
}
else
{
	redirectionVers('utilisateur.page.php');
}
?>

