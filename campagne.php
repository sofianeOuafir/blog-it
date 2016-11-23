<?php
include('functions.php');
session_start();

if(connecter())
{
spl_autoload_register('chargerClasse'); // On enregistre la fonction en autoload pour qu'elle soit appelée dès qu'on instanciera une classe non déclarée.
$bdd = connexionBdd();
$articleManager = new articleManager($bdd);
$categorieManager = new categorieManager($bdd);
$articles = $articleManager->getList();
$categories = $categorieManager->getList();


?>

<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link href="CSS/CSSIMPORTANT/campagne.css" rel="stylesheet" type="text/css">
<title>sans titre 1</title>
</head>

<body>
	<?php include('header.php'); ?>
	<table>
	<label>Choisir un article</label>
	<select>
		<?php foreach($articles as $article){ ?>
		<option value="<?php echo $article->ID_ARTICLE()?>"><?php echo $article->TITRE() ?></option>
		<?php } ?>
	</select>
	
	
	
	<label>Choisir les catégories de page facebook :</label>
	<?php
	if($categories)
	{
		foreach($categories as $categorie)
		{
		?>
		
			 <?php  echo $categorie->NOM_CATEGORIE(); ?><input type="checkbox" name="categories[]" value="<?php echo $categorie->ID_CATEGORIE() ?>"/>
		
		<?php
		}
	}
	?>
	
	
	
	<label>Facebook</label><input type="text" />
	
	
	<label>Twitter</label><input type="text" />
	
	<button>Envoyer</button>
	
	</table>
</body>

</html>
<?php
}
else
{
redirectionVers('index.php');
}
