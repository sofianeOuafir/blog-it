<?php
header("Content-Type: text/xml");
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


// je calcule le nombre d'article

$nombreArticle = $articleManager->getNombreArticle();
	
// je calcule le nombre de page necessaire par rapport au nombre d'article récupéré dans la liste.
//sachant qu'il y a 5 articles par page
$nombrePage = nombrePage($nombreArticle);


$min = 0;

if(isset($_GET['page']) and $_GET['page'] >= 0 and $_GET['page'] <= $nombrePage)
{
	$page = $_GET['page'];
	$min = $page * 5;
	$max = 5;


	$articles = $articleManager->getListWithLimit($min,$max);
	$articlesLesPlusVues = $articleManager->articleLesPlusVues();
	
	echo "<?xml version=\"1.0\" encoding=\"utf-8\"?>";
	echo <articles>;
	
	$idEditor = (isset($_POST["idEditeur"])) ? htmlentities($_POST["idEditeur"]) : NULL;
	
	if ($idEditor) {
		mysql_connect("localhost", "root", "");
		mysql_select_db("testajax");
		
		$query = mysql_query("SELECT * FROM ajax_example_softwares WHERE idEditor=" . mysql_real_escape_string($idEditor) . " ORDER BY name");
		while ($back = mysql_fetch_assoc($query)) {
			echo "<item id=\"" . $back["id"] . "\" name=\"" . $back["name"] . "\" />";
		}
	}
	
	echo "</articles>";
	

}





?>