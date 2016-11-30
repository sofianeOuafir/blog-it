<?php
require '../functions.php';
session_start();
spl_autoload_register('chargerClasse');
$bdd = connexionBdd();
$articleManager = new articleManager($bdd);
$imageDescriptionManager = new imageDescriptionManager($bdd);
$article = new article($_POST);
//on enlève toutes les balises <img/> de la variable CONTENU
$tmp = preg_replace("/<img[^>]+\>/i", "", $article->CONTENU());
//on enleve les balise et garde seulement le contenu pour l'introduction
$article->setINTRODUCTION(strip_tags(substr($tmp, 0, 200)));

if($article->PUBLIER() == "on") {
$article->setPUBLIER(1);
}
else {
$article->setPUBLIER(0);
}

if(isset($_FILES['image']))
{
echo "Yes";
	if($_FILES['image']['error'] > 0)
	{
		//erreur lors du chargement
		$erreur = 0;
	}
	else
	{
		$extention_upload = strtolower(substr(strrchr($_FILES['image']['name'],'.'),1));
		$extentions_autorisees = array('jpg','png','jpeg','gif');
		if(in_array($extention_upload,$extentions_autorisees))
		{
				$idImageDescription = $imageDescriptionManager->getNextId();
				$nom = 'image/'.$idImageDescription.'-'.$extention_upload;
				$resultat = move_uploaded_file($_FILES['image']['tmp_name'],'../'.$nom);
				if($resultat)
				{						
					$imageDescriptionManager->add($idImageDescription,$nom,$nom,$_SESSION['UTILISATEUR']->ID_UTILISATEUR());
					$article->setID_ARTICLE($articleManager->getNextID());
					$article->setID_UTILISATEUR($_SESSION['UTILISATEUR']->ID_UTILISATEUR());
					$article->setID_IMAGE_1($idImageDescription);
					$article->setDATE_REALISATION(date('Y-m-d H:i:s'));	   
					$articleManager->add($article);
				}
		}
		else
		{
			$erreur = 2;
			// "format de fichier non accepté";
		}
	}
}

/*$imageDescriptionManager = new imageDescriptionManager($bdd);
$article = new article(array('ID_ARTICLE' => $articleManager->getNextID(),
							 'CONTENU' => $_POST['CONTENU'],
							 'TITRE' => $_POST['TITRE'],
							 'ID_UTILISATEUR' => $_SESSION['UTILISATEUR']->ID_UTILISATEUR(),
							 'ID_CATEGORIE' => $_POST['CATEGORI'],
							 'ID_VIDEO' => $idVideo,
							 'ID_IMAGE_1' => $_POST['id_image'],
							 'INTRODUCTION' => $_POST['INTRODUCTION'],
							 'DATE_REALISATION' =>  date('Y-m-d H:i:s'),
							 'Publier' => $_POST['publier']	
							
							)
					   );
// on ajoute larticle à la base de données		   
$articleManager->add($article);*/



?>