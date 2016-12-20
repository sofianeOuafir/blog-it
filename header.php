<?php

$headerCss = 'css/header-travelTheme.css';
$lnGestionArticle = 'edition.php';
$lnGestionWorkshop = "formulaireWorkshop/workshop.php";
$lnHome = "index.php";
$lnLesArticles = "articles.php";
$lnSofiane = "about.php";
$lnUtilisateurPage = "utilisateur.page.php";
$lnGestionImage = "formulaireImage/gestionImage.php";
$lnGestionVideo	 = "formulaireVideo/gestionVideo.php";
$lnPageFacebook = "pagesFacebook.php";
$lnGestionCategories = "gestionCategories.php";
$lnGestionCitations = "GestionCitations.php";
$lnJquery = "jquery.js";
$lnCampagne = "campagne.php";
$lnBootstrapCss = "css/bootstrap/css/bootstrap.min.css";
$lnBoostrapJs = "css/bootstrap/js/bootstrap.min.js";
$submenuCss = "css/submenu.css";
$lnConnexion = "connexion.php";
$lnMyArticles = "myArticles.php";
if(isset($notSameDirectory))
{
$headerCss = '../css/header-travelTheme.css';
$lnGestionArticle = '../edition.php';
$lnGestionWorkshop = "../formulaireWorkshop/workshop.php";
$lnHome = "../index.php";
$lnLesArticles = "../articles.php";
$lnSofiane = "../about.php";
$lnUtilisateurPage = "../utilisateur.page.php";
$lnGestionImage = "../formulaireImage/gestionImage.php";
$lnGestionVideo	 = "../formulaireVideo/gestionVideo.php";
$lnPageFacebook = "../pagesFacebook.php";
$lnGestionCategories = "../gestionCategories.php";
$lnGestionCitations = "../GestionCitations.php";
$lnJquery = "../jquery.js";
$lnCampagne = "../campagne.php";
$lnBootstrapCss = "../css/bootstrap/css/bootstrap.min.css";
$lnBoostrapJs = "../css/bootstrap/js/bootstrap.min.js";
$submenuCss = "../css/submenu.css";
$lnConnexion = "../connexion.php";
$lnMyArticles = "../myArticles.php";
}
$bdd = connexionBdd();
if(connecter())
{
	$utilisateurManager = new utilisateurManager($bdd);
	$rights = $utilisateurManager->getRights($_SESSION['UTILISATEUR']->ID_TYPE());
	//if the user has rights
	if($rights != 0)
	{
		// if the current user is at least an author
		if(in_array(1,$rights))
		{
			$isManagerEnabled = true;
		}
		else {
			$isManagerEnabled = false;
		}
	}
	else {
		$isManagerEnabled = false;	
	}
}
$articleManager = new articleManager($bdd);
$numberOfArticles = $articleManager->getNombreArticle();
?>
	<link href="<?php echo $headerCss ?>" rel="stylesheet" type="text/css">
   <link href="<?php echo $lnBootstrapCss ?>" rel="stylesheet"/>
	<link href="<?php echo $submenuCss ?>" rel="stylesheet"/>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.1/css/bootstrap-select.min.css">
</head>
<body>
<header>
 <nav class="navbar navbar-default navbar-fixed-top main-nav"> <!--  navbar-fixed-top -->
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="#">Golbit</a>
		</div>
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav" >
				 <li role="presentation"><a href="<?php echo $lnHome ?>"><span class="glyphicon glyphicon-home" aria-hidden="true"></span> Home</a></li>
				 <li role="presentation"><a href="<?php echo $lnLesArticles ?>"><span class="glyphicon glyphicon-text-background" aria-hidden="true"></span> Articles <span class="badge"> <?php echo $numberOfArticles ?></span></a></li>
				 <li role="presentation"><a href="<?php echo $lnSofiane ?>"><span class="glyphicon glyphicon-hand-right" aria-hidden="true"></span> About us</a></li>
				 <?php 
				 if(connecter()){ 
					if($isManagerEnabled) {				 
				 ?>
				 <li role="presentation" class="dropdown">
				 <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
				 <span class="glyphicon glyphicon-cog" aria-hidden="true"></span> Manager<span class="caret"></span>
				 </a>
				 <ul class="dropdown-menu">
				    <li class="dropdown-submenu"><a href="<?php echo $lnGestionArticle ?>">Articles</a>
				    	<ul class="dropdown-menu">
				    		<li><a href="<?php echo $lnGestionArticle ?>">New article</a></li>
				    		<li><a href="<?php echo $lnMyArticles ?>">My articles</a></li>
				    	</ul>
				    </li>
				    <li role="presentation"><a href="<?php echo $lnGestionImage ?>">Images</a></li>
				    <li role="presentation"><a href="<?php echo $lnGestionVideo ?>">Videos</a></li>
				    <li role="presentation"><a href="<?php echo $lnGestionCategories ?>">Categories</a></li>
				    <li role="presentation"><a href="<?php echo $lnGestionCitations ?>">Quotations</a></li>
				    <li role="presentation"><a href="<?php echo $lnCampagne ?>">Campaign</a></li>
				    <li role="presentation"><a href="<?php echo $lnPageFacebook ?>">Facebook</a></li>
				    <li role="presentation"><a href="<?php echo $lnGestionWorkshop ?>">Events</a></li>
				 </ul>
				 </li>
				 <?php } ?>
				 <li role="presentation"><a href="controller/deconnexion.controller.php"><span class="glyphicon glyphicon-off" aria-hidden="true"> </span> Log off</a></li>
				 <?php }?>
			 </ul>
			 <?php if(connecter()){ ?>
			 <p class="navbar-text navbar-right"><span class="glyphicon glyphicon-user" aria-hidden="true"> </span> Signed in as <a href="<?php echo $lnUtilisateurPage ?>" class="navbar-link"><?php echo $_SESSION['UTILISATEUR']->PSEUDONYME(); ?></a></p>
			 <?php }else{ ?>
			 <p class="navbar-text navbar-right"><span class="glyphicon glyphicon-user" aria-hidden="true"> </span><a href="<?php echo $lnConnexion ?>" class="navbar-link"> Log in</a></p>
			 <?php } ?>
		</div>
	 </div>
 </nav>	


	<script src="jquery.js"></script>
	<script src="<?php echo $lnBoostrapJs ?>"></script>		
	<script src="ckeditor/ckeditor.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.1/js/bootstrap-select.min.js"></script>
	<script type="text/javascript" src="css/bootstrap-filestyle-1.2.1/src/bootstrap-filestyle.min.js"> </script>

</header>
	


