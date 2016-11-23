<?php
require('functions.php');
session_start();

if(connecter())
{
spl_autoload_register('chargerClasse');
$bdd = connexionBdd();
$categorieManager = new categorieManager($bdd);
$categories = $categorieManager->getList();
$pageFacebookManager = new pageFacebookManager($bdd);
$pagesFacebook = $pageFacebookManager->getList();
?>
<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" /> 
<title>Gestion Facebook</title>
</head>

<body>
<?php

include('header.php');
?>

<div>
	<form method="post" action="traitementPagesFacebook.php">
		<table>
			<tr>
				<td>Id de la page : </td>
				<td><input name="ID_PAGE" type="text" /></td>
			</tr>
			<tr>
				<td>Nom de la page : </td>
				<td><input name="NOM_PAGE" type="text" /></td>
			</tr>
			<tr>
				<td>Catégorie de la page : </td>
				<td>
					<select name="ID_CATEGORIE">
						<?php 
						if($categories)
						{
							foreach($categories as $categorie)
							{
							?>
							<option value="<?php echo $categorie->ID_CATEGORIE() ?>"><?php echo $categorie->NOM_CATEGORIE() ?></option>
							<?php
							}
						}
						?>
					</select>
				</td>
			</tr>
			<tr>
			<td><input type="submit" name="createFBPage"/></td>
			</tr>
		</table>
		
	</form>
	
	<div id="pagesFacebook">
		<h2>Les pages Facebook</h2>
			<form method="post" action="traitementPagesFacebook.php">
	
				<?php
				if($pagesFacebook)
				{
					foreach($pagesFacebook as $page)
					{
					?>
					<div>
						<input type="checkbox" name="pages[]" value="<?php echo $page->ID() ?>"/> <?php echo $page->NOM_PAGE(); ?>	
					</div>
					<?php
					}
				}
				?>
				<input type="submit" value="Supprimer"/>

			</form>
	</div>

	
</div>

</body>

</html>
<?php
}
else
{
redirectionVers('index.php');
}
?>