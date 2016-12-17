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
	  <strong>Reminder!</strong> This article is not published yes. Please go to <a href="myArticles.php">My articles</a> to publish it once you are ready.
	</div>
    <?php
    }
    ?>
     	<div class="blog-header">
        <h1 class="blog-category"><?php echo $categorie->NOM_CATEGORIE(); ?></h1>
      </div>

      <div class="row">

        <div class="col-sm-8 blog-main">

          <div class="blog-post" style="word-wrap: break-word;">
            <h2 class="blog-post-title"><?php echo $article->TITRE(); ?></h2>
            <p class="blog-post-meta"><?php echo $dateCreation->format('l, jS F Y'); ?> by <a href="#"><?php echo $utilisateur->PSEUDONYME(); ?></a></p>
            <p ><img  id="image" src="<?php echo $image->SOURCE(); ?>" alt="<?php ?>"></p>
            <p><?php echo $article->CONTENU(); ?></p>
          </div><!-- /.blog-post -->
        </div><!-- /.blog-main -->

        <div class="col-sm-3 col-sm-offset-1 blog-sidebar">
          <div class="sidebar-module sidebar-module-inset">
            <h4>About the author</h4>
            <p><?php echo $utilisateur->INTRODUCTION() ?></p>
          </div>
          <div class="sidebar-module see-also">
            <h4 class="title_subnavigation">See also</h4>
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
          <div class="sidebar-module">
            <h4>Share me!</h4>
            <ul class="share">
              <li><div class="fb-share-button" data-href="<?php echo 'http://www.golbit.com'.$_SERVER['REQUEST_URI']; ?>" data-layout="button" data-size="large" data-mobile-iframe="false"><a class="fb-xfbml-parse-ignore" target="_blank" href="https://www.facebook.com/sharer/sharer.php?u=https%3A%2F%2Fdevelopers.facebook.com%2Fdocs%2Fplugins%2F&amp;src=sdkpreparse">Share</a></div></li>
            </ul>
          </div>
          <?php
       	 }
       	 ?> 
        </div><!-- /.blog-sidebar -->

      </div><!-- /.row -->
    </div><!-- /.container -->
    
    <script type="text/javascript">
    	
    </script>
</body>

</html>