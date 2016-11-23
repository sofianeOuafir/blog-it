<?php
require 'functions.php';
session_start();
spl_autoload_register('chargerClasse'); // On enregistre la fonction en autoload pour qu'elle soit appelée dès qu'on instanciera une classe non déclarée.


//connection a la bdd
$bdd = connexionBdd();


// instanciation des gestionnaires de classe

$categorieManager = new categorieManager($bdd);
$articleManager = new articleManager($bdd);
$categories = $categorieManager->getList();
$imageDescriptionManager = new imageDescriptionManager($bdd);
$utilisateurManager = new utilisateurManager($bdd);
// si une categorie à été selectionné, on recupere une liste d'article correspondant à la categorie.


if(isset($_GET['idCategorie']))
{
	// je calcule le nombre d'article de cette catégorie
	
	$nombreArticle = $articleManager->getNombreArticleByCategorie($_GET['idCategorie']);
	
	// je calcule le nombre de page necessaire par rapport au nombre d'article récupéré dans la liste.
	//sachant qu'il y a 5 articles par page
	$nombrePage = nombrePage($nombreArticle);

	

	
	// la variable min correspond a la premiere valeur dans la requete LIMIT, max correspond a la deuxieme
	$min = 0;
	
	//si une page à été selectionné, on multiplie min par la page pour avoir les articles de cette page tout en faisant des vérification 
	if(isset($_GET['page']) and $_GET['page'] >= 1 and $_GET['page'] <= $nombrePage)
	{
		$page = $_GET['page'] - 1;
		$min = $page * 6;
		
	}
	

	$max = 6;

	$articles = $articleManager->getListByCategorie($_GET['idCategorie'],$min,$max);
	$articlesLesPlusVues = $articleManager->articleLesPlusVuesParCategorie($_GET['idCategorie']);
	
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

}
//si aucune categorie à été selectionné, on recupère toutes les articles confondues.
else
{
	// je calcule le nombre d'article
	
	$nombreArticle = $articleManager->getNombreArticle() - 6;
		
	// je calcule le nombre de page necessaire par rapport au nombre d'article récupéré dans la liste.
	//sachant qu'il y a 6 articles par page
	$nombrePage = nombrePage($nombreArticle);


	$min = 6;
	
	if(isset($_GET['page']) and $_GET['page'] >= 1 and $_GET['page'] <= $nombrePage)
	{
		$page = $_GET['page'];
		$min = $page * 6;
	}
	

	$max = 6;
	
	$articles = $articleManager->getListWithLimit($min,$max);
	$articlesLesPlusVues = $articleManager->articleLesPlusVues();
	
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

}



?>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" /> 
<link href="css/articles.css" rel="stylesheet" type="text/css">
<title>Articles - Sofiane Chronicles</title>
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
	<p id="categories">Categories<!-- <span class="glyphicon glyphicon-plus" aria-hidden="true"></span> --></p>
	<!-- NE MANQUEZ PAS -->
		<?php if($categories){ ?>
				<?php foreach($categories as $categorie)				
				{
				?>		
				<p><a href="<?php echo 'articles.php?idCategorie='.$categorie->ID_CATEGORIE()?>"><?php echo $categorie->NOM_CATEGORIE()?> <span class="badge"> <?php echo $articleManager->getNombreArticleByCategorie($categorie->ID_CATEGORIE()); ?></span></a></p>			
				<?php			
				}	
				?>
		<?php }?>
	</div>
	<div class="col-md-12" id="pagination">
		<nav aria-label="Page navigation">
		  <ul class="pagination">
		    
		    <?php
		    if(isset($_GET['page'])) {
		    	$previousPage = $_GET['page'] - 1;
		    	if($previousPage >= 1 and $previousPage <= $nombrePage)
		    	{
		    		if(isset($_GET['idCategorie']))
		    		{
		    			$previousLink = 'articles.php?idCategorie='.$_GET['idCategorie'].'&page='.$previousPage;
		    		}else {
		    			$previousLink = 'articles.php?page='.$previousPage;
		    		}
		    	}
		    }
		    else {
		    	$previousPage = 0;
		    }
		    ?>
		    <li class="<?php if(!$previousPage >= 1 and $previousPage <= $nombrePage){echo 'disabled';} ?>">
		      <a href="<?php if(isset($previousLink)){ echo $previousLink;} ?>" aria-label="Previous">
		        <span aria-hidden="true">&laquo;</span>
		      </a>
		    </li>
		    <?php
		    $i = 1;
		    
		    while($i <= $nombrePage)
		    {
		    	if(isset($_GET['idCategorie']))
		    	{
			 ?>
			   <li class="<?php if(isset($_GET['page'])){if($_GET['page'] >= 1 and $_GET['page'] <= $nombrePage){if($i == $_GET['page']){ echo 'active'; }}else{if($i == 1){ echo 'active'; }}}else{if($i == 1){ echo 'active'; }}?>"><a href="<?php echo 'articles.php?idCategorie='.$_GET['idCategorie'].'&page='.$i;?>"><?php echo $i; ?></a></li>
			 <?php
			    	
			  	}
			   else {
			   	
			 ?>
			 	<li class="<?php if(isset($_GET['page'])){if($_GET['page'] >= 1 and $_GET['page'] <= $nombrePage){if($i == $_GET['page']){ echo 'active';}}else{if($i == 1){ echo 'active'; }}}else{if($i == 1){ echo 'active'; }} ?>"><a href="<?php echo 'articles.php?page='.$i ?>"><?php echo $i; ?></a></li>
			 <?php   
			    }
			    $i += 1;
		    }
		    
		    if(isset($_GET['page'])) {
		    	$nextPage = $_GET['page'] + 1;
		    	if($nextPage >= 1 and $nextPage <= $nombrePage)
		    	{
		    		if(isset($_GET['idCategorie']))
		    		{
		    			$nextLink = 'articles.php?idCategorie='.$_GET['idCategorie'].'&page='.$nextPage;
		    		}else {
		    			$nextLink = 'articles.php?page='.$nextPage;
		    		}
		    	}
		    }
		    else {
		    $nextPage = 2;
		    	if($nextPage <= $nombrePage)
		    	{
		    		if(isset($_GET['idCategorie']))
		    		{
		    			$nextLink = 'articles.php?idCategorie='.$_GET['idCategorie'].'&page='.$nextPage;
		    		}else {
		    			$nextLink = 'articles.php?page='.$nextPage;
		    		}
		    	}
		    }
		    ?>
		    
		    <li class="<?php if($nextPage > $nombrePage){echo 'disabled';} ?>">
		      <a href="<?php if(isset($nextLink)){ echo $nextLink;} ?>" aria-label="Next">
		        <span aria-hidden="true">&raquo;</span>
		      </a>
		    </li>
		  </ul>
		</nav>
	</div>	
</div>

	<!--
<p id="lienPage">	
	<?php
		
		$numeroPage = 0;

		//affichage des liens vers les pages.
		while($numeroPage < $nombrePage)
		{
			if(isset($_GET['idCategorie']))
			{
				$lien = 'articles.php?idCategorie='.$_GET['idCategorie'].'&page='.$numeroPage;
			}
			else
			{
				$lien = 'articles.php?page='.$numeroPage;
			}
			
			
	?>
			<a href="<?php echo $lien ?>"> <?php echo $numeroPage ?></a>
	<?php 
			$numeroPage +=1;
		}
	?>	
	
</p>
		
<div id="lesPlusVues">
<?php if(isset($_GET['idCategorie'])){
$categorie = $categorieManager->get($_GET['idCategorie']);
 ?>
	
	
	<h1>The most viewed in the <?php echo $categorie->NOM_CATEGORIE(); ?> category</h1>
<?php
}

else
{
?>
<h1>The most viewed</h1>

<?php 

}

?>
	<?php 
	if($articlesLesPlusVues)
	{
		
		foreach($articlesLesPlusVues as $article) 
		{
		$image = $imageDescriptionManager->get($article->ID_IMAGE_1());
		$lien = creationLien($article->TITRE(),1);

		?>
		
		<div id="unArticle">
			
			<a href="<?php echo $lien ?>"><img src="<?php echo $image->SOURCE() ?>" alt="<?php echo $image->ALT() ?>"/></a>
			<a href="<?php echo $lien ?>"><h2> <?php echo $article->TITRE() ?></h2></a>
		</div>
	
	<?php 
		}
	}
	?>

</div>

-->

<script> 
	$('.nav li:nth-child(2)').addClass('active');

</script>
<script src="jquery.js"></script>
</body>

</html>
















