<?php
require('../functions.php');
session_start();
spl_autoload_register('chargerClasse');
$bdd = connexionBdd();
$workshopManager = new workshopManager($bdd);
$imageDescriptionManager = new imageDescriptionManager($bdd);
$videoManager = new videoManager($bdd);
$workshop = $workshopManager->get(1);
$image = $imageDescriptionManager->get($workshop->ID_IMAGE());
$video = $videoManager->get($workshop->ID_VIDEO());
$dateDebut = new datetime($workshop->DATEDEBUT());
$dateFin = new datetime($workshop->DATEFIN());
$workshops = $workshopManager->getAllWorkshops();


?>
<!DOCTYPE html>
<html>

<head>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
<link href="CSS/CSSIMPORTANT/modeleWorkshop.css" rel="stylesheet" type="text/css">
<meta name="viewport" content="width=680" />
<title><?php echo $workshop->TITRE(); ?></title>
</head>

<body>
<?php 
	include_once('../googleAnalytics.php');
	$notSameDirectory = 1;
	include('../header.php');
?>

	<div id="container">
		<div id="workshopContainer">
			<!-- SHARE ON FACEBOOK -->

		
			<p id="titreWorkshop"><?php echo $workshop->TITRE(); ?></p>
			<p id="location"><span class="RedColour">Location :</span> <?php echo $workshop->VILLE().' - '.$workshop->PAYS(); ?></p>
			<p id="dateDebut"><span class="RedColour">From: </span><?php echo $dateDebut->format('l, F dS Y'); ?></p>
			<p id="dateFin"><span class="RedColour">To: </span><?php echo $dateFin->format('l, F dS Y'); ?></p>
			<p id="introduction"><?php echo $workshop->INTRODUCTION(); ?></p>
			<img id="image" src="<?php echo '../'.$image->SOURCE() ?>" alt="<?php echo $image->ALT(); ?>" />
			<p id="contenu"><?php echo $workshop->CONTENU(); ?></p>
			<div id="video">
				<iframe width="700" height="415" src="<?php echo $video->SOURCE() ?>" frameborder="0" allowfullscreen></iframe>
			</div>
			<!-- <p id="price"><span class="RedColour">Price :</span> <?php echo $workshop->COUT(); ?> </p> -->
			<!-- <p id="deposit"><span class="RedColour">Deposit </span>: <?php echo $workshop->DEPOSIT(); ?> </p> -->
		</div>
	
	
	</div>

<?php
backToTop();
//function formulaireContact($action,$method,$fichierActuel,$titleForm,$objet,$idarticle)
formulaireContact("../traitementContact.php","post",'Workshops/'.creationLien($workshop->TITRE(),3),"More informations about this workshop ? Send me a message !","Workshop :".$workshop->TITRE(),0);


?>

<script src="../javaScript/menuJs.js">

</script>
<!-- TWITTER- FACEBOOK YOUTUBE -->
<script src="http://static.ak.fbcdn.net/connect.php/js/FB.Share" type="text/javascript"></script>
<script type="text/javascript" src="http://platform.twitter.com/widgets.js"></script>
<script src="https://apis.google.com/js/platform.js"></script>
<!-- END TWITTER-FACEBOOK-YOUTUBE-->

<script> 
	var aboutme = document.getElementById('aboutme');
	aboutme.className = "current";

</script>
<script src="../jquery.js"></script>
<script src="../javaScript/bloqueMenu.js"></script>


</body>

</html>
