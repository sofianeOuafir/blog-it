<?php
require('functions.php');
session_start();
spl_autoload_register('chargerClasse');

//connection a la bdd
$bdd = connexionBdd();

//instanciation des gestionnaire de classe
$articleManager = new articleManager($bdd);
$videoManager = new videoManager($bdd);
$utilisateurManager = new utilisateurManager($bdd);
$categorieManager = new categorieManager($bdd);
$imageManager = new imageManager($bdd);
$imageDescriptionManager = new imageDescriptionManager($bdd);

//I get articles to publish (6)
$articles = $articleManager->getLesArticlesAPublier();

$authors = array();
$images = array();
if($articles)
{
	foreach($articles as $article)
	{
		$authors[] = $utilisateurManager->get($article->ID_UTILISATEUR());
		$images[] = $imageDescriptionManager->get($article->ID_IMAGE_1());
	}

}

//recuperation de la liste des 10 derniers articles
$lastArticles = $articleManager->getTenLast();

?>
<!DOCTYPE html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" /> 
	<link href="css/index.css" rel="stylesheet" type="text/css">
	<!--<link href="css/CSSIMPORTANT/index2.css" rel="stylesheet" type="text/css">-->
	<title>Home - Sofiane's Chronicle</title>
	<?php 
	include('header.php'); 
	?>

	<div class="container-fluid" id="container-index">
		<div class="col-md-10">
			<div class="col-md-12">
				<div class="col-md-6">
					<?php 
					if(isset($articles[0])){
					$lien = creationLien($articles[0]->TITRE(),1);
				 	?>
					<a class="title" href="<?php echo $lien ?>" ><?php echo  $articles[0]->TITRE()?></a>
					<a href="<?php echo $lien; ?>"><img class="img-rounded" src="<?php echo $images[0]->SOURCE()?>" alt="<?php echo $images[0]->ALT()?>" /></a>
					<p class="author">by <a href="<?php echo $authors[0]->PSEUDONYME().'.php'; ?>"><?php echo $authors[0]->PSEUDONYME() ?></a></p>	
					<p class="introduction"><?php echo $articles[0]->INTRODUCTION() ?></p>				
					<?php } ?>
				</div>
				<div class="col-md-6">
					<?php 
					if(isset($articles[1])){
					$lien = creationLien($articles[1]->TITRE(),1);
				 	?>
					<a class="title" href="<?php echo $lien ?>" ><?php echo  $articles[1]->TITRE()?></a>	
					<a href="<?php echo $lien; ?>"><img class="img-rounded" src="<?php echo $images[1]->SOURCE()?>" alt="<?php echo $images[1]->ALT()?>" /></a>
					<p class="author">by <a href="<?php echo $authors[1]->PSEUDONYME().'.php'; ?>"><?php echo $authors[1]->PSEUDONYME() ?></a></p>	
					<p class="introduction"><?php echo $articles[1]->INTRODUCTION() ?></p>				
					<?php } ?>
				</div>
	
			</div>
			
				
			<div class="col-md-12">
				<div class="col-md-6">
					<?php 
					if(isset($articles[2])){
					$lien = creationLien($articles[2]->TITRE(),1);
				 	?>
					<a class="title" href="<?php echo $lien ?>" ><?php echo  $articles[2]->TITRE()?></a>	
					<a href="<?php echo $lien; ?>"><img class="img-rounded" src="<?php echo $images[2]->SOURCE()?>" alt="<?php echo $images[2]->ALT()?>" /></a>
					<p class="author">by <a href="<?php echo $authors[2]->PSEUDONYME().'.php'; ?>"><?php echo $authors[2]->PSEUDONYME() ?></a></p>	
					
					<p class="introduction"><?php echo $articles[2]->INTRODUCTION() ?></p>				
					<?php } ?>
				</div>
				
				<div class="col-md-6">
					<?php 
					if(isset($articles[3])){
					$lien = creationLien($articles[3]->TITRE(),1);
				 	?>
					<a class="title" href="<?php echo $lien ?>"><?php echo  $articles[3]->TITRE()?></a>	
					<a href="<?php echo $lien; ?>"><img class="img-rounded" src="<?php echo $images[3]->SOURCE()?>" alt="<?php echo $images[3]->ALT()?>" /></a>
					<p class="author">by <a href="<?php echo $authors[3]->PSEUDONYME().'.php'; ?>"><?php echo $authors[3]->PSEUDONYME() ?></a></p>	
					<p class="introduction"><?php echo $articles[3]->INTRODUCTION() ?></p>				
					<?php } ?>
				</div>
			</div>
			
			<div class="col-md-12">
				<div class="col-md-6">
					<?php 
					if(isset($articles[4])){
					$lien = creationLien($articles[4]->TITRE(),1);
				 	?>
					<a class="title" href="<?php echo $lien ?>" ><?php echo  $articles[4]->TITRE()?></a>	
					<a href="<?php echo $lien; ?>"><img class="img-rounded" src="<?php echo $images[4]->SOURCE()?>" alt="<?php echo $images[4]->ALT()?>" /></a>
					<p class="author">by <a href="<?php echo $authors[4]->PSEUDONYME().'.php'; ?>"><?php echo $authors[4]->PSEUDONYME() ?></a></p>	
					
					<p class="introduction"><?php echo $articles[4]->INTRODUCTION() ?></p>				
					<?php } ?>
				</div>
				
				<div class="col-md-6">
					<?php 
					if(isset($articles[5])){
					$lien = creationLien($articles[5]->TITRE(),1);
				 	?>
					<a class="title" href="<?php echo $lien ?>"><?php echo  $articles[5]->TITRE()?></a>	
					<a href="<?php echo $lien; ?>"><img class="img-rounded" src="<?php echo $images[5]->SOURCE()?>" alt="<?php echo $images[5]->ALT()?>" /></a>
					<p class="author">by <a href="<?php echo $authors[5]->PSEUDONYME().'.php'; ?>"><?php echo $authors[5]->PSEUDONYME() ?></a></p>	
					<p class="introduction"><?php echo $articles[5]->INTRODUCTION()?></p>				
					<?php } ?>
				</div>
			</div>
		</div>
		<div class="col-md-2">	
		<p id="seeAlso">See also<!-- <span class="glyphicon glyphicon-plus" aria-hidden="true"></span> --></p>
		<!-- NE MANQUEZ PAS -->
			<?php if($lastArticles){ ?>
					<?php foreach($lastArticles as $article)
					
					{
					$lien = creationLien($article->TITRE(),1);

					?>
					
					
					<p><a href="<?php echo $lien ?>"><?php echo $article->TITRE()?></a></p>
					
					<?php
					
					}
					
					?>
			<?php }?>
		</div>	
	</div>

<script> 
	$('.nav li').first().addClass('active');
</script>
<script src="jquery.js"></script>


</body>

</html>
