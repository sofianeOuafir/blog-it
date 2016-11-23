<?php
require('../functions.php');
$bdd = connexionBdd();
spl_autoload_register('chargerClasse'); // On enregistre la fonction en autoload pour qu'elle soit appelée dès qu'on instanciera une classe non déclarée.
$workshopManager = new workshopManager($bdd);

//Ajouter un Workshop dans la base de données
if(isset($_POST['Add']))
{
	$_POST['DATEDEBUT'] = $_POST['DDYEAR'].'/'.$_POST['DDMONTH'].'/'.$_POST['DDDAY'];
	$_POST['DATEFIN'] = $_POST['DFYEAR'].'/'.$_POST['DFMONTH'].'/'.$_POST['DFDAY'];
	$workshop = new workshop($_POST);
	$workshopManager->add($workshop, $_POST['coaches']);
	creationPagesWorkshop($workshop);

?>
<script> window.location.href = "workshop.php"; </script>
<?php
}

//Supprimer un workshop dans la base de données
if(isset($_POST['workshops']))
{
	foreach($_POST['workshops'] as $workshop)
	{
		$workshopManager->Delete($workshop);
	}

?>
<script> window.location.href = "workshop.php"; </script>
<?php
}


//Modifier un workshop dans la base de données
if(isset($_POST['Update']))
{
	$_POST['DATEDEBUT'] = $_POST['DDYEAR'].'/'.$_POST['DDMONTH'].'/'.$_POST['DDDAY'];
	$_POST['DATEFIN'] = $_POST['DFYEAR'].'/'.$_POST['DFMONTH'].'/'.$_POST['DFDAY'];
	$workshop = new workshop($_POST);
	
	$workshopManager->DeleteCoachesOfWorkshop($workshop->ID());
	$workshopManager->Update($workshop,$_POST['coaches']);
	creationPagesWorkshop($workshop);

redirectionVers("workshop.php");

}

if(isset($_POST['file']))
{
	foreach($_POST['file'] as $fichier)
	{
		unlink($fichier);
	}
	
	redirectionVers("workshop.php");


}

?>