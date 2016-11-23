<?php
require('../functions.php');
session_start();
spl_autoload_register('chargerClasse'); // On enregistre la fonction en autoload pour qu'elle soit appelÃ©e dÃ¨s qu'on instanciera une classe non dÃ©clarÃ©e.
$bdd = connexionBdd();
$videoManager = new videoManager($bdd);
$videos = $videoManager->getList();
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<title>Gestion des vidéos</title>
<link rel="stylesheet" type="text/css" href="view.css" media="all"/>
<script type="text/javascript" src="view.js"></script>

</head>
<body id="main_body" >
	<?php 
	$notSameDirectory = 1;  
	include('../header.php');
	?>
	
	<div id="form_container">
		<form id="form_975666" class="appnitro"  method="post" action="traitementVideo.php">
		<div class="form_description">
		</div>						
			<ul >
			
			
			
		<li id="li_1" >
		<label class="description" for="element_1">Lien </label>
		<div>
			<input id="element_1" name="SOURCE" class="element text medium" type="text" maxlength="255" value=""/> 
		</div> 
		</li>		<li id="li_2" >
		<label class="description" for="element_2">Description </label>
		<div>
			<input id="element_2" name="DESCRIPTION" class="element text medium" type="text" maxlength="255" value=""/> 
		</div> 
		</li>
			
					<li class="buttons">
			    <input type="hidden" name="form_id" value="975666" />
			    
				<input id="saveForm" class="button_text" type="submit" name="Add" value="Submit" />
		</li>
			</ul>
		</form>	
	</div>
	
		
	<div id="lesVideos">
		<h2>Les videos</h2>
			<form method="post" action="traitementVideo.php">
	
				<?php
				if($videos)
				{
					foreach($videos as $video)
					{
					?>
					<div>
						<input type="checkbox" name="videos[]" value="<?php echo $video->ID_VIDEO() ?>"/> <?php echo $video->DESCRIPTION(); ?>	
					</div>
					<?php
					}
				}
				?>
				<input type="submit" value="Supprimer"/>

			</form>
		</div>


	</body>
</html>