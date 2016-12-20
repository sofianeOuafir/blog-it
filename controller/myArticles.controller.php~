<?php
require '../functions.php';
session_start();
spl_autoload_register('chargerClasse');
$bdd = connexionBdd();
$articleManager = new articleManager($bdd);
$article = new article($_POST);
if(isset($_POST['PUBLIER']))
{
$articleManager->setPublish($article);
}

if(isset($_POST['DELETE']))
{
	$articleManager->delete($article);
}

?>