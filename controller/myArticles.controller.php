<?php
require '../functions.php';
session_start();
spl_autoload_register('chargerClasse');
$bdd = connexionBdd();
$articleManager = new articleManager($bdd);
$article = new article($_POST);
$articleManager->setPublish($article);
echo $article->ID_ARTICLE();
echo $article->PUBLIER();
?>