<?php 
require 'functions.php';
session_start();

if(connecter())
{
	spl_autoload_register('chargerClasse'); // On enregistre la fonction en autoload pour qu'elle soit appelée dès qu'on instanciera une classe non déclarée.
	//connection a la bdd
	$bdd = connexionBdd();
	$articleManager = new articleManager($bdd);
	$imageDescriptionManager = new imageDescriptionManager($bdd);
	$videoManager = new videoManager($bdd);
	$reussiteUploadImage = false;
	
	// si le formulaire de creation d'article à été envoyé...
	if(isset($_POST['ecrireArticle']))
	{
		//...on verifie que le titre de l'article n'existe pas deja dans la base de données...
		if($articleManager->titreExiste($_POST['TITRE']) == false)
		{
	
			 if(empty($_POST['id_video']))
			 {
			 	$idVideo = NULL;
			 }
			 // si il y a une vidéo liée à l'article alors on creer un objet video
			 else
			 {
			 	$idVideo = $_POST['id_video'];
			 }
			
				
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
			$articleManager->add($article);
			//on creer les pages php et css de l'article
			creationPagesArticle($article);
			if(!empty($_POST['messageFB']))
			{
				autoPostArticlesToFB($article,$_POST['messageFB']);
			}
			
			if(!empty($_POST['messageTwitter']))
			{
				//autoPostArticlesToTwitter($article,$_POST['messageTwitter']);
			}
			
			//redirectionVers('index.php');

			

		}
	}
	
	
	// MODIFICATION ----------------------------------------------------------------------------------------------------------------------------------------------------
	if(isset($_POST['modifierArticle']))
	{		
		 if(empty($_POST['id_video']))
		 {
		 	$idVideo = NULL;
		 }
		 // si il y a une vidéo liée à l'article alors on creer un objet video
		 else
		 {
		 	$idVideo = $_POST['id_video'] ;
		 }
		
		$article = new article(array('ID_ARTICLE' => $_POST['id_article'],
									 'CONTENU' => $_POST['CONTENU'],
									 'TITRE' => $_POST['TITRE'],
									 'ID_CATEGORIE' => $_POST['CATEGORI'],
									 'ID_VIDEO' => $idVideo,
									 'ID_IMAGE_1' => $_POST['id_image'],
									 'INTRODUCTION' => $_POST['INTRODUCTION'],
									 'LAST_UPDATE' =>  date('Y-m-d H:i:s'),
									 'Publier' => $_POST['publier']	
									
									)
							   );
		echo $article->TITRE();
		// on modifie l'article dans la base de données		   
		$articleManager->update($article);
		
		//on creer les pages php et css de l'article
		creationPagesArticle($articleManager->get($_POST['id_article']));
		redirectionVers('index.php');
			
		
	}
	
	if(isset($_POST['file']))
	{
		foreach($_POST['file'] as $fichier)
		{
			unlink($fichier);
		}
		
		redirectionVers('ecrireArticle.php');

	}
			
	if(isset($_POST['articles']))
	{
		foreach($_POST['articles'] as $article)
		{
			$articleManager->delete($article);
		}
		redirectionVers('ecrireArticle.php');
	}


	
}
else
{
redirectionVers('index.php');
} 
?>	

