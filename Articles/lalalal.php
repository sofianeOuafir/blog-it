<?php 
require '../functions.php';
spl_autoload_register('chargerClasse');
$bdd = connexionBdd();
session_start();
//recuperation des manager
$articleManager = new articleManager($bdd);
$categorieManager = new categorieManager($bdd);
$utilisateurManager = new utilisateurManager($bdd);
$imageDescriptionManager = new imageDescriptionManager($bdd);
$videoManager = new videoManager($bdd);
//récupération de la catégorie de l'article
$article = $articleManager->get( 1 );
$categorie = $categorieManager->get(  );
$utilisateur = $utilisateurManager->get( 1 );
$image = $imageDescriptionManager->get( 331 );
$existeVideo = false;
if($article->ID_VIDEO() != NULL)
{
	$video = $videoManager->get( 10 );
	$existeVideo = true;
}
$date_Consultation = date('Y-m-d');
$articleManager->ajouteUneVueParDate($article,$date_Consultation);
$dateRealisationArticle = new datetime($article->DATE_REALISATION());
$contactManager = new contactManager($bdd);
$commentaires = $contactManager->GetContact($article->ID_ARTICLE());
$nbCommentaires = $contactManager->getNumberOfComment($article->ID_ARTICLE());
?>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" /> 
<link href="../CSS/Articles/lalalal.css" rel="stylesheet" type="text/css">
<link href="../CSS/CSSIMPORTANT/menuJs.css" rel="stylesheet" type="text/css">
<meta name="viewport" content="width=680" />

<title><?php echo $article->TITRE(); ?></title>
</head>
<body>

	<?php 
	include_once('../googleAnalytics.php');
	$notSameDirectory = 1;
	include('../header.php');
	?>	
	<section>
		<div id="partage">
			<!-- SHARE ON FACEBOOK -->
			<?php
			$url = $_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI'];
			?>
			<div>
				<a id="share" name="fb_share" type="button" share_url="<?php $url ?>"></a>
			</div>
			<!-- end FACEBOOK -->
			
			<!-- TWITTER -->
			<div>
				<a href="https://twitter.com/share" class="twitter-share-button" data-via="so_chronicle" data-count="none">Tweet</a>
			</div>
			<!-- END TWITTER -->
			<div>
				<a id="faireUnCommentaire" href="#form_container">Comment</a>
			</div>

		</div>
		<article>
			<h2 id="categorie"><?php echo $categorie->NOM_CATEGORIE()?></h2>
			<p id="dateArticle"><a href="<?php echo '../'.$utilisateur->PSEUDONYME().'.php' ?>"><?php echo $utilisateur->PSEUDONYME().'</a> | '. $dateRealisationArticle->format('l, F jS Y')?></p>
			<?php if($commentaires != 0){ ?>
			<div id="bulleCommentaire"><p id="nbCommentaire"><?php echo $nbCommentaires ?></p> <span id="iconCommentaire"><a href="#commentaires"><img src="../imageReseauSociaux/comment.png" /></a></span></div>
			<?php }?>
			<p id="vues"><?php echo $article->VUES().' vues' ?></p>
			<h1 id="titreArticle"><?php echo $article->TITRE() ?></h1>
			<p id="introduction"><?php echo $article->INTRODUCTION() ?></p>
			<img id="imageArticle" src="<?php echo '../'.$image->SOURCE() ?>" alt="" />
			<p id="contenu"><?php echo $article->CONTENU() ?></p>
			<?php if($existeVideo){?>
			<div id="video">
				<iframe  src="<?php echo $video->SOURCE() ?>" frameborder="0" allowfullscreen></iframe>
			</div>
			<?php } ?>
			
		</article>
		
	
	</section>
	
	
	<script src="../javaScript/headerArticle.js">
	
	
	</script>
	
<?php
//function formulaireContact($action,$method,$fichierActuel,$titleForm,$objet,$idarticle)
formulaireContact("../traitementContact.php","post",creationLien($article->TITRE(),1),"Let me know what you think about this article !",$article->TITRE(),$article->ID_ARTICLE());
$contactManager = new contactManager($bdd);
$commentaires = $contactManager->GetContact($article->ID_ARTICLE());
if($commentaires)
{
?>
	<div id="commentaires">
	<?php
	foreach($commentaires as $commentaire)
	{
		$dateCommentaire = new datetime($commentaire->DATE());
	?>
		<div id="unCommentaire">
			<p id="auteurCommentaire"><strong>Posted by : <?php echo $commentaire->PRENOM() ?></strong> - (<?php echo $dateCommentaire->format('l d F Y');  ?>)</p>
			<p id="messageCommentaire"><?php echo $commentaire->MESSAGE(); ?></p>
		</div>
	<?php
		
	}


	?>
	</div>

<?php
}
backToTop();

?>

<script src="../javaScript/menuJs.js">

</script>
<!-- TWITTER- FACEBOOK YOUTUBE -->
<script src="http://static.ak.fbcdn.net/connect.php/js/FB.Share" type="text/javascript"></script>
<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document, 'script', 'twitter-wjs');</script>


<!-- END TWITTER-FACEBOOK-YOUTUBE-->

<script> 
	var articles = document.getElementById('articles');
	articles.className = "current";

</script>
<script src="../jquery.js"></script>
<script src="../javaScript/bloqueMenu.js"></script>


</body>
</html>
