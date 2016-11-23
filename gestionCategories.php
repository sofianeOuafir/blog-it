<?php
require('functions.php');
// connexion à la BDD
session_start();


if(connecter())
{
spl_autoload_register('chargerClasse'); // On enregistre la fonction en autoload pour qu'elle soit appelée dès qu'on instanciera une classe non déclarée.
$bdd = connexionBdd();
$categorieManager = new categorieManager($bdd);
$categories = $categorieManager->getList();
if(isset($_POST['categorieRecuperer']))
{
	$categorieRecuperer = $categorieManager->get($_POST['categorieRecuperer']);
}
?>
<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" /> 
<title>sans titre 1</title>
</head>

<body>
<?php
include('header.php');  
?>

<form method="post" action="">
	<select name="categorieRecuperer">
	<?php
	foreach($categories as $categorie)
	{
	?>
		<option value="<?php echo $categorie->ID_CATEGORIE() ?>"><?php echo $categorie->NOM_CATEGORIE() ?></option>
	<?php
	}
	?>
	</select>
	<input type="submit" value="Recupérer" name="recuperation"/>
</form>

<div>
<form method="post" action="traitementCategories.php">
	<input id="idCategorieRecuperer" name="ID_CATEGORIE" type="hidden" value="<?php if(isset($categorieRecuperer)){ echo $categorieRecuperer->ID_CATEGORIE();}else{ echo 0; } ?>"/>
	Nom de la catégorie : <input name="NOM_CATEGORIE" type="text" value="<?php if(isset($categorieRecuperer)){ echo $categorieRecuperer->NOM_CATEGORIE();} ?>"/>
	<input id="boutonSubmit" type="submit" name="add" value="Ajouter"/>
</form>
</div>

<div id="categories">
	<h2>Les categories</h2>
	<form method="post" action="traitementCategories.php">

		<?php
		if($categories)
		{
			foreach($categories as $categorie)
			{
			?>
			<div>
				<input type="checkbox" name="categories[]" value="<?php echo $categorie->ID_CATEGORIE() ?>"/> <?php  echo $categorie->NOM_CATEGORIE(); ?>	
			</div>
			<?php
			}
		}
		?>
		<input type="submit" value="Supprimer"/>

	</form>
</div>
<script lang="javaScript">
var idCategorieRecuperer = document.getElementById('idCategorieRecuperer');
if(idCategorieRecuperer.value != 0)
{
	var boutonSubmit = document.getElementById('boutonSubmit');
	boutonSubmit.setAttribute('name','update');
	boutonSubmit.setAttribute('value','Modifier');
}
</script>
</body>

</html>
<?php 
}
else
{
redirectionVers('index.php');
}
