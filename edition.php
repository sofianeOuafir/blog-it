<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" /> 
<link href="CSS/CSSIMPORTANT/ecrireArticle.css" rel="stylesheet" type="text/css">
<title>Ecrire un article</title>
</head>

<?php
require('functions.php');
// connexion à la BDD
$bdd = connexionBdd();

session_start();
include('header.php'); 

if(connecter())
{


spl_autoload_register('chargerClasse'); // On enregistre la fonction en autoload pour qu'elle soit appelée dès qu'on instanciera une classe non déclarée.


//récupération de la liste des catégories.
$categorieManager = new categorieManager($bdd);
$articleManager = new articleManager($bdd);
$imageDescriptionManager = new imageDescriptionManager($bdd);
$videoManager = new videoManager($bdd);



$categories = $categorieManager->getList();
$articles = $articleManager->getList();
$images = $imageDescriptionManager->getList();
$videos = $videoManager->getList();


if(isset($_POST['id_Article_Recup']))
{
	$videoManager = new videoManager($bdd);
	$articleRecupere = $articleManager->get($_POST['id_Article_Recup']);
	if($articleRecupere->ID_VIDEO() != NULL)
	{
		$videoRecupere = $videoManager->get($articleRecupere->ID_VIDEO());
	}
}

?>
<body>
	<!-- formulaire pour créer un article-->
	<div id="conteneur">
		<form method="post" action="ecrireArticle.php">
			<select name="id_Article_Recup">
				<?php foreach($articles as $article){ ?>
				<option value="<?php echo $article->ID_ARTICLE()?>"><?php echo $article->TITRE() ?></option>
				<?php } ?>
			</select>
			<input type="submit" value="recuperer l'article" id="boutonRecupererArticle"/>
		</form>
		
		
		
		
		<form method="post" action="traitementArticle.php" >
			<input type="hidden" id="id_article" name="id_article" value="<?php if(isset($articleRecupere)){echo $articleRecupere->ID_ARTICLE();} ?>" />
			<div id="premierePartieFormulaire">
				<label for="TITRE" id="descriptionTITRE">Titre de l'article</label>
				<textarea id="TITRE" name="TITRE"><?php if(isset($articleRecupere)){ echo $articleRecupere->TITRE();} ?></textarea>
			
			
			
				<label for="INTRODUCTION" id="descriptionINTRODUCTION">Introduction de l'article</label>
				<textarea name="INTRODUCTION" id="INTRODUCTION" maxlength="150"><?php if(isset($articleRecupere)){ echo $articleRecupere->INTRODUCTION();} ?></textarea>
			
		
		
			
				<label for="CONTENU" id="descriptionCONTENU">Contenu de l'article</label>
				<textarea name="CONTENU" id="CONTENU" ><?php if(isset($articleRecupere)){ echo $articleRecupere->CONTENU();} ?></textarea>
			</div>		
				
											
				
				
			
			<div id="deuxiemePartieFormulaire">	
						
				 <label id="descriptionCATEGORI">Selectionner une Catégorie :</label>
									
						
				<select id="CATEGORI" name="CATEGORI">
						<?php
						
						foreach($categories as $categorie)
						{
						
							$selected = false;
							if(isset($articleRecupere))
							{
								if($articleRecupere->ID_CATEGORIE() == $categorie->ID_CATEGORIE())
								{
									$selected = true;
	
								}
							} 
						?>
							<option value="<?php echo $categorie->ID_CATEGORIE()?>" <?php if($selected){ ?> selected="selected" <?php } ?>> <?php echo $categorie->NOM_CATEGORIE() ?> </option>
						
						<?php
						
						}
						
						?>
				</select>
												
					
				<!-- videos -->
				<label id="descriptionVideo">Choisir une video: </label>		
				
				<select id="video" name="id_video" >
				<option value=""></option>
				<?php
				foreach($videos as $video)
				{
				?>
					<option value="<?php echo $video->ID_VIDEO() ?>" <?php if(isset($videoRecupere)){ if($video->ID_VIDEO() == $videoRecupere->ID_VIDEO()){ ?> selected="selected" <?php }} ?> > <?php echo $video->DESCRIPTION() ?></option>
				<?php
				}
				?>
				</select>

				
				<!-- fin videos -->
					
					
				
				<label id="descriptionImage">Choisir une image : </label>		
				
				<select name="id_image">
				<?php
				foreach($images as $image)
				{
				?>
					<option  value="<?php echo $image->ID_IMAGE() ?>" <?php if(isset($articleRecupere)){ if($image->ID_IMAGE() == $articleRecupere->ID_IMAGE_1()){ ?> selected="selected" <?php }} ?> > <?php echo $image->ALT() ?></option>
				<?php
				}
				?>
				</select>
				<label id="descriptionPostFacebook">Message sur facebook ?</label>
				<input id="messageFB" type="text" name="messageFB" />
				
				<label id="descriptionPostTwitter">Message sur Twitter ?</label>
				<input id="messageTwitter" type="text" name="messageTwitter" />
				
				
				<label id="descriptionPublier">Publier l'article ?</label>
					
						
						
				<fieldset>
					Oui <input type="radio" name="publier" value="1" required="required" <?php if(isset($articleRecupere)){ if($articleRecupere->PUBLIER() == 1){ ?> checked="checked" <?php };} ?> />
					Non <input type="radio" name="publier" value="0" required="required" <?php if(isset($articleRecupere)){ if($articleRecupere->PUBLIER() == 0){ ?> checked="checked" <?php };} ?> />
				</fieldset>
						
			
			
				<input type="submit" value="Publier" name="ecrireArticle" id="ecrireArticle" />
			</div>
				
			
				
		</form>
		
		<div id="articlesPhp">
		<h2>Fichiers .php</h2>
		<?php 
		parcourirDossier('Articles','traitementArticle.php');
		?>
		
		</div>
		
		<div id="articlesCSS">
		<h2>Fichiers .css</h2>
		<?php 
		parcourirDossier('CSS/Articles','traitementArticle.php');
		?>
		
		</div>
		
		<div id="articles">
		<h2>Les articles</h2>
			<form method="post" action="traitementArticle.php">
	
				<?php
				if($articleManager->getList())
				{
					foreach($articleManager->getList() as $article)
					{
					?>
					<div>
						<input type="checkbox" name="articles[]" value="<?php echo $article->ID_ARTICLE() ?>"/> <?php echo $article->TITRE(); ?>	
					</div>
					<?php
					}
				}
				?>
				<input type="submit" value="Supprimer"/>

			</form>
		</div>

	</div>
	
	<script src="javaScript/recuperationArticle.js"></script>
	<?php include('footer.php');?>
</body>

</html>

<?php 
}
else{
redirectionVers('index.php');

}
?>
