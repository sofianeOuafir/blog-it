<?php
require '../functions.php';
session_start();
spl_autoload_register('chargerClasse');
$bdd = connexionBdd();
$articleManager = new articleManager($bdd);
$imageDescriptionManager = new imageDescriptionManager($bdd);
$article = new article($_POST);

$article->setINTRODUCTION(substr($article->INTRODUCTION(), 0, 200).'...');

if($article->PUBLIER() == "on") {
$article->setPUBLIER(1);
}
else {
$article->setPUBLIER(0);
}

if(isset($_FILES['image']))
{
	$isUpdate = false;
	if(isset($_POST['updateMode'])) {
		$isUpdate = true;
	}
	
	$isUpdateWithoutImage = false;
	if($_FILES['image']['error'] == 4)
	{
		if($isUpdate){
			$isUpdateWithoutImage = true;
		}
	}
	
	if($_FILES['image']['error'] > 0 && !$isUpdateWithoutImage)
	{
			echo $_FILES['image']['error'];
		//erreur lors du chargement (upload error)
	}
	else
	{
		$extention_upload = strtolower(substr(strrchr($_FILES['image']['name'],'.'),1));
		$extentions_autorisees = array('jpg','png','jpeg','gif');
		if(in_array($extention_upload,$extentions_autorisees) || $isUpdateWithoutImage)
		{
			$idImageDescription = $imageDescriptionManager->getNextId();
			$nom = 'image/'.$idImageDescription.'-'.$extention_upload;
			$resultat = move_uploaded_file($_FILES['image']['tmp_name'],'../'.$nom);
			if($resultat || $isUpdateWithoutImage)
			{		
				//on verifie la longueur du titre
				if(strlen($article->TITRE()) >= 10 && strlen($article->TITRE()) <= 100)
				{
					//on verifie la longueur du contenu
					if(strlen($article->CONTENU()) >= 200 && strlen($article->CONTENU()) <= 10000)
					{
						if(!$isUpdateWithoutImage)
						{
							$imageDescriptionManager->add($idImageDescription,$nom,$nom,$_SESSION['UTILISATEUR']->ID_UTILISATEUR());
							$article->setID_IMAGE_1($idImageDescription);
						}
						if(!$isUpdate) {
							$article->setID_ARTICLE($articleManager->getNextID());
							$article->setID_UTILISATEUR($_SESSION['UTILISATEUR']->ID_UTILISATEUR());
							$article->setDATE_REALISATION(date('Y-m-d H:i:s'));
							$articleManager->add($article);
							$erreur = 5;
							echo $erreur;
						}
						else {
							$article->setLAST_UPDATE(date('Y-m-d H:i:s'));
							if($isUpdateWithoutImage)
							{
								$articleManager->updateWithoutImage($article);
							}
							else {
								$articleManager->update($article);
							}
							echo 11;
						}
						
					}	
					else {
						echo 12;
					}		
				}
				else {	
				}
			}
			else {
			//erreur lors du deplacement du fichier (upload error)
				$erreur = 13;
				echo $erreur;	
			}
		}
		else
		{
			// "format de fichier non accepté";
			$erreur = 10;
			echo $erreur;
		}
	}
}
else {
	//aucun fichier transmis
	$erreur = 3;
	echo $erreur;
}




?>