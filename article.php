<?php
require('functions.php');
session_start();
spl_autoload_register('chargerClasse');

//connection a la bdd
$bdd = connexionBdd();
$articleManager = new articleManager($bdd);
$utilisateurManager = new utilisateurManager($bdd);
$article = $articleManager->get($_GET['idArticle']);
$isEnabled = false;
if($article)
{
	if($article->PUBLIER() == 1)
	{
		$isEnabled = true;
	}
	else {
		if(isset($_SESSION['UTILISATEUR']))
		{
			$rights = $utilisateurManager->getRights($_SESSION['UTILISATEUR']->ID_TYPE());
			if(in_array(2,$rights) || $article->ID_UTILISATEUR() == $_SESSION['UTILISATEUR']->ID_UTILISATEUR())
			{
				$isEnabled = true;
			}
		}
	}
}
if($isEnabled) {
	$imageDescriptionManager = new imageDescriptionManager($bdd);
	$categorieManager = new categorieManager($bdd);
	$articles = $articleManager->getTenLastFromCategory($article->ID_CATEGORIE(), $article->ID_ARTICLE());
	$categorie = $categorieManager->get($article->ID_CATEGORIE());
	$utilisateur = $utilisateurManager->get($article->ID_UTILISATEUR());
	$image = $imageDescriptionManager->get($article->ID_IMAGE_1());
	$imageAuthor = $imageDescriptionManager->get($utilisateur->ID_IMAGE());
	$dateCreation = new DateTime($article->DATE_REALISATION());
}
else {
?>
	<script>window.location.replace("index.php");</script>
<?php
}


?>
<!DOCTYPE html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" /> 
	<meta property="og:url" content="http://www.your-domain.com/your-page.html" />
	<meta property="og:type" content="website" />
	<meta property="og:title" content="Your Website Title" />
	<meta property="og:description" content="Your description" />
	<meta property="og:image" content="http://www.your-domain.com/path/image.jpg" />
	<link href="css/article.css" rel="stylesheet" type="text/css">
	<link href="css/library.css" rel="stylesheet" type="text/css">
	<title>Article - Golbit</title>

	<?php 
	include('header.php'); 
	?>
	<div id="fb-root"></div>
	<script>(function(d, s, id) {
	  var js, fjs = d.getElementsByTagName(s)[0];
	  if (d.getElementById(id)) return;
	  js = d.createElement(s); js.id = id;
	  js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.8";
	  fjs.parentNode.insertBefore(js, fjs);
	}(document, 'script', 'facebook-jssdk'));
	</script>

    <div class="container" id="container-index">
    <?php
    if($article->PUBLIER() == 0) 
    {
    ?>
    <div class="alert alert-warning alert-dismissible fade in" role="alert">
	  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	  <strong>Reminder!</strong> This is only a preview. Your article is visible only by you for now. Would you want to make it visible ? Please go to <a href="myArticles.php">my articles</a> to publish it once it is ready!
	</div>
    <?php
    }
    ?>
      <div class="row">
  			<div class="col-sm-3 blog-sidebar">
          <div class="sidebar-module sidebar-module-inset">
          	<img id="imageAuthor" class="img-circle" src="<?php echo $imageAuthor->SOURCE() ?>" alt="<?php echo $imageAuthor->ALT() ?>">
            <h4><strong><a href="<?php echo 'profile.php?idUtilisateur='.$utilisateur->ID_UTILISATEUR(); ?>"><?php echo $utilisateur->PSEUDONYME() ?></a></strong></h4>
            <p id="introduction-author"><?php echo $utilisateur->INTRODUCTION() ?></p>
          </div>
          <div class="sidebar-module see-also">
            <h4 class="title_subnavigation"><strong>See also</strong></h4>
            <ul class="nav nav-pills nav-stacked">
            <?php 
            foreach($articles as $currentArticle)
            {
            ?>
              <li><a  href="article.php?idArticle=<?php echo $currentArticle->ID_ARTICLE(); ?>"><?php echo $currentArticle->TITRE(); ?></a></li>
           <?php 
           }
           ?>
            </ul>
          </div>
          <?php
		    if($article->PUBLIER() == 1) 
		    {
		    ?>
          <div class="sidebar-module social-media">
            <h4><strong>Social media</strong></h4>
            <ul class="share">
              <li><div class="fb-share-button" data-href="<?php echo 'http://www.golbit.com'.$_SERVER['REQUEST_URI']; ?>" data-layout="button" data-size="large" data-mobile-iframe="false"><a class="fb-xfbml-parse-ignore" target="_blank" href="https://www.facebook.com/sharer/sharer.php?u=https%3A%2F%2Fdevelopers.facebook.com%2Fdocs%2Fplugins%2F&amp;src=sdkpreparse">Share</a></div></li>
            </ul>
          </div>
          <?php
       	 }
       	 ?> 
        </div><!-- /.blog-sidebar -->

        <div class="col-sm-8 blog-main">
          <div class="blog-post" style="word-wrap: break-word;">
            <h2 class="blog-post-title"><?php echo $article->TITRE(); ?></h2>
            <p class="blog-post-meta"><?php echo $dateCreation->format('l, jS F Y'); ?></p>
            <p ><img  id="image" src="<?php echo $image->SOURCE(); ?>" alt="<?php ?>"></p>
            <p><?php echo $article->CONTENU(); ?></p>
          </div><!-- /.blog-post -->
        </div><!-- /.blog-main -->

      </div><!-- /.row -->
    </div><!-- /.container -->
</body>

</html>