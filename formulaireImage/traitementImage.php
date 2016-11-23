<?php
require '../functions.php';
$bdd = connexionBdd();
session_start();

$imageDescriptionManager = new imageDescriptionManager($bdd);

if(isset($_FILES['image']))
{

	if($_FILES['image']['error'] > 0)
	{
		//erreur lors du chargement
		$erreur = 0;
	}
	else
	{
		$extention_upload = strtolower(substr(strrchr($_FILES['image']['name'],'.'),1));
		$extentions_autorisees = array('jpg','png','jpeg','gif');
		if(in_array($extention_upload,$extentions_autorisees))
		{
			
				$idImageDescription = $imageDescriptionManager->getNextId();
				$nom = 'image/'.$idImageDescription.'-'.$_POST['ALT'].'.'.$extention_upload;
				$resultat = move_uploaded_file($_FILES['image']['tmp_name'],'../'.$nom);
				if($resultat)
				{
													
                    $imageDescriptionManager->add($idImageDescription,$nom,$_POST['ALT'],$_SESSION['UTILISATEUR']->ID_UTILISATEUR());
					 
				?>
                     <script> window.location.href = 'gestionImage.php?erreur=1' </script>

				<?php

				}
		}
		else
		{
			$erreur = 2;
			// "format de fichier non accepté";
		}
	}
	
	if(isset($erreur))
	{
	?>
	<script> window.location.href = 'gestionImage.php?erreur=1' </script>

	<?php
	}
}


if(isset($_POST['file']))
{
	foreach($_POST['file'] as $fichier)
	{
		unlink($fichier);
	}
?>
<script> window.location.href = "gestionImage.php"; </script>
<?php

}


if(isset($_POST['images']))
{
	foreach($_POST['images'] as $image)
	{
		$imageDescriptionManager->Delete($image);
	}


?>
<script> window.location.href = "gestionImage.php"; </script>
<?php

}

?>
			