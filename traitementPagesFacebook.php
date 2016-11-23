<?php
require('functions.php');
session_start();

if(connecter())
{
spl_autoload_register('chargerClasse');
$bdd = connexionBdd();
$pageFacebookManager = new pageFacebookManager($bdd);

if(isset($_POST['createFBPage']))
{
	$pageFacebook = new pageFacebook($_POST);
	echo $pageFacebook->ID_PAGE();
	echo $pageFacebook->NOM_PAGE();
	echo $pageFacebook->ID_CATEGORIE();
	$pageFacebookManager->add($pageFacebook);
}


if(isset($_POST['pages']))
{
	foreach($_POST['pages'] as $page)
	{
		$pageFacebookManager->Delete($page);
	}
	

}

redirectionVers('pagesFacebook.php');







}


?>
