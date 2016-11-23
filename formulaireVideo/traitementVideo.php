<?php
require('../functions.php');
spl_autoload_register('chargerClasse'); // On enregistre la fonction en autoload pour qu'elle soit appelÃ©e dÃ¨s qu'on instanciera une classe non dÃ©clarÃ©e.
$bdd = connexionBdd();
$videoManager = new videoManager($bdd);

if(isset($_POST['Add']))
{
	$video = new video($_POST);
	$videoManager->add($video);
	?>
	<script> window.location.href = 'gestionVideo.php' </script>

	<?php

}


if(isset($_POST['videos']))
{
	foreach($_POST['videos'] as $video)
	{
		$videoManager->Delete($video);
	}
	?>
	<script> window.location.href = 'gestionVideo.php' </script>

	<?php

}

?>
