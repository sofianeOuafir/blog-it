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
	<link href="css/library.css" rel="stylesheet" type="text/css">
	<!--<link href="css/CSSIMPORTANT/index2.css" rel="stylesheet" type="text/css">-->
	<title>Home - Sofiane's Chronicle</title>
	<?php 
	include('header.php'); 
	?>

	<div class="container-fluid" id="container-index">
		<div class="col-md-10">
		<?php
		$j = 0;
		 while($j < 6)
		 {
		?>
			<div class="col-md-12">
				<?php
				$k = $j;
				while($k < $j + 2) {
				?>
				<div class="col-md-6">
					<?php 
					if(isset($articles[$k])){
					$lien = creationLien($articles[$k]->TITRE(),1);
				 	?>
					<a class="title" href="<?php echo $lien ?>" ><?php echo  $articles[$k]->TITRE()?></a>
					<a href="<?php echo $lien; ?>"><img class="img-rounded" src="<?php echo $images[$k]->SOURCE()?>" alt="<?php echo $images[$k]->ALT()?>" /></a>
					<p class="author">by <a href="<?php echo $authors[$k]->PSEUDONYME().'.php'; ?>"><?php echo $authors[$k]->PSEUDONYME() ?></a></p>	
					<a class="preambleLink" data-toggle="collapse" href="#collapseExample<?php echo $k ?>" aria-expanded="false" aria-controls="collapseExample">
  						<span class="glyphicon glyphicon glyphicon-hand-down" aria-hidden="true"></span> See more
					</a>
					<div class="collapse" id="collapseExample<?php echo $k ?>">
  						<div class="well">
    						<p class="introduction"><?php echo $articles[$k]->INTRODUCTION() ?></p>	
  						</div>
					</div>
					<?php } ?>			
				</div>
				<?php
				$k = $k + 1;
				}
				
				?>
	
			</div>
			
		<?php
		$j = $j + 2;
		}
		?>
	
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
	$( ".preambleLink" ).click(function() {
		if ($(this).children("span").hasClass('glyphicon-hand-down')) {
			$(this).text("");
			$(this).append("<span class=\"glyphicon glyphicon glyphicon-hand-up\" aria-hidden=\"true\"></span> See less");
		}
		else {
			$(this).text("");
			$(this).append("<span class=\"glyphicon glyphicon glyphicon-hand-down\" aria-hidden=\"true\"></span> See more");
		}		
});
</script>
<script src="jquery.js"></script>


</body>

</html>
