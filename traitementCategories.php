<?php
require('functions.php');
spl_autoload_register('chargerClasse'); // On enregistre la fonction en autoload pour qu'elle soit appelée dès qu'on instanciera une classe non déclarée.

// connexion à la BDD
$bdd = connexionBdd();
$categorieManager = new categorieManager($bdd);
if(isset($_POST['add']))
{
	$categorie = new categorie($_POST);
	$categorieManager->add($categorie);
}

if(isset($_POST['update']))
{
	$categorie = new categorie($_POST);
	$categorieManager->update($categorie);
}


if(isset($_POST['categories']))
{
	foreach($_POST['categories'] as $categorie)
	{
		$categorieManager->delete($categorie);
	}
}

redirectionVers('gestionCategories.php');


?>
