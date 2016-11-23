<?php
include('functions.php');
session_start();

if(connecter())
{
spl_autoload_register('chargerClasse'); // On enregistre la fonction en autoload pour qu'elle soit appelée dès qu'on instanciera une classe non déclarée.
$bdd = connexionBdd();
$citationManager = new citationManager($bdd);
$citations = $citationManager->getCitations();
if(isset($_POST['citationsRecuperer']))
{
	$citationRecuperer = $citationManager->get($_POST['citationsRecuperer']);
}
?>


<!DOCTYPE html>
<html>

<head>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
<title>Gestion des citations</title>
</head>

<body>
	<?php
	include('header.php');
	?>
	<form method="post" action="">
		<select name="citationsRecuperer">
		<?php foreach($citations as $citation){ ?>
			<option value="<?php echo $citation->ID_CITATION() ?>"> <?php echo $citation->PHRASE(); ?> </option>
		<?php } ?>
		</select>
		<input type="submit" value="envoyer"/>
	
	</form>
	
	<form method="post" action="traitementCitation.php">
		<input id="id_citation" type="hidden" name="ID_CITATION" value="<?php if(isset($citationRecuperer)){ echo $citationRecuperer->ID_CITATION(); }else{ echo 0; }?>" />
		<input  type="text" name="PHRASE" value="<?php if(isset($citationRecuperer)){ echo $citationRecuperer->PHRASE(); }?>" style="width:100%;"/>
		<input id="boutonAjouter" type="submit" name="add" value="Ajouter" />
	</form>
	
	<div id="citations">
	<h2>Les citations</h2>
	<form method="post" action="traitementCitation.php">
		<?php
		if($citations)
		{
			foreach($citations as $citation)
			{
			?>
			<div>
				<input type="checkbox" name="citations[]" value="<?php echo $citation->ID_CITATION() ?>"/> <?php  echo $citation->PHRASE(); ?>	
			</div>
			<?php
			}
		}
		?>
		<input type="submit" value="Supprimer"/>

	</form>
</div>

	
	<script> 
		var boutonAjouter = document.getElementById('boutonAjouter');
		var id_citation = document.getElementById('id_citation');

		if(id_citation.value != 0 )
		{
			boutonAjouter.name = "update";
			boutonAjouter.value = "Modifier";
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
