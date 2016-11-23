<?php 
require 'functions.php';
spl_autoload_register('chargerClasse');
$bdd = connexionBdd();
session_start();
$utilisateurManager = new utilisateurManager($bdd);
$imageDescriptionManager = new imageDescriptionManager($bdd);
$videoManager = new videoManager($bdd);
$utilisateur = $utilisateurManager->get(1);
$image = $imageDescriptionManager->get($utilisateur->ID_IMAGE());
$workshopManager = new workshopManager($bdd);
$workshops = $workshopManager->getWorkshops($utilisateur->ID_UTILISATEUR());
$existeVideo = false;
if($utilisateur->ID_VIDEO() != NULL)
{
	$video = $videoManager->get($utilisateur->ID_VIDEO());
	$existeVideo = true;
}

?>
<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" /> 
<meta name="viewport" content="width=680" />
<link href="CSS/CSSIMPORTANT/sofiane.css" rel="stylesheet" type="text/css">

<title>Sofiane</title>
</head>

<body>
	<?php 
	include_once('googleAnalytics.php');
	include('header.php'); 
	?>	
	<section id="container">
		<article>
			<h1 id="titreArticle"><?php echo $utilisateur->PSEUDONYME() ?></h1>
			<p id="introduction"><?php echo $utilisateur->INTRODUCTION() ?></p>
			<img id="image" src="<?php echo $image->SOURCE() ?>" alt="<?php echo $image->ALT() ?>" />
			<p id="contenu"><?php echo $utilisateur->CONTENU() ?> </p>
			<?php if($existeVideo){?>
			<div id="videoYoutube">
				<iframe  src="<?php echo $video->SOURCE() ?>" frameborder="0" allowfullscreen></iframe>
			</div>
			<?php } ?>

		</article>
		
		<div id="workshops">
			<h3 id="upcomingEvents">Upcoming events</h3>
			
			<?php
			if($workshops)
			{
			
				foreach($workshops as $workshop)
				{
					$coaches = $workshopManager->getCoaches($workshop);
					if($coaches)
					{
						$lesCoaches = "";
						$lengthCoaches = count($coaches);
						$i = 0;
						foreach($coaches as $coach)
						{
							$lesCoaches = $lesCoaches.' '.$coach->PSEUDONYME();
							$i +=1;
							if($i != $lengthCoaches)
							{
								$lesCoaches = $lesCoaches.' / ';
							}
						}
					} 
				
				$dateDebut = new DateTime($workshop->DATEDEBUT());
				$dateFin = new DateTime($workshop->DATEFIN());
				$lienPageWorkshop = creationLien($workshop->TITRE(),3);

				
				?>
				<div id="workshop">
				<h4><?php echo $workshop->VILLE().', '.$workshop->PAYS().' - '. $lesCoaches?></h4>
					<p id="dateWorkshop"><?php echo $dateDebut->format('d M').' - '. $dateFin->format('d M'); ?></p> <p> <a id="lienWorkshop" href="<?php echo 'Workshops/'.$lienPageWorkshop ?>">More Informations</a></p>
				</div>
				<?php
				}
			}
				?>
			
		</div>
		
	<?php 
	//function formulaireContact($action,$method,$fichierActuel,$titleForm,$objet,$idarticle)
	formulaireContact("traitementContact.php","post","sofiane.php","Drop me a message !","Demande de Contact sur la page de presentation",0); 
	?>
	</section>
	
	
	<script src="../javaScript/headerArticle.js">
	
	
	</script>

<?php
backToTop();
include('footer.php');
?>
	
<script> 
$('.nav li:nth-child(3)').addClass('active');

</script>
<script src="jquery.js"></script>
<script src="javaScript/bloqueMenu.js"></script>


</body>

</html>
