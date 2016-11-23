<?php
require('functions.php');
session_start();

if(isset($_SESSION['UTILISATEUR']))
{

	spl_autoload_register('chargerClasse'); // On enregistre la fonction en autoload pour qu'elle soit appelée dès qu'on instanciera une classe non déclarée.
		//connection à la bdd
	$bdd = connexionBdd();

	include('header.php');
	
	//instanciation du manager utilisateur 
	$utilisateurManager = new utilisateurManager($bdd);
	$videoManager = new videoManager($bdd);
	$imageDescriptionManager = new imageDescriptionManager($bdd);
	
	$videos = $videoManager->getList();
	$images = $imageDescriptionManager->getList();
	
	//reinstanciation  de l'utilisateur
	$_SESSION['UTILISATEUR'] = $utilisateurManager->get($_SESSION['UTILISATEUR']->ID_UTILISATEUR());
	$imageUtilisateur = $imageDescriptionManager->get($_SESSION['UTILISATEUR']->ID_IMAGE());
	$idvideo = $_SESSION['UTILISATEUR']->ID_VIDEO();
	if(!empty($idvideo))
	{
		$videoUtilisateur = $videoManager->get($_SESSION['UTILISATEUR']->ID_VIDEO());
	}
	?>
	<!DOCTYPE html>
	<html>
	
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" /> 
		<title><?php echo $_SESSION['UTILISATEUR']->PSEUDONYME() ?></title>
		<link href="CSS/CSSIMPORTANT/utilisateur.page.css" rel="stylesheet" type="text/css">

	</head>
	
	<body>
		<div id="container">
			<div id="media">
				<div id="imageUtilisateur">
					<img src="<?php echo $imageUtilisateur->SOURCE() ?>" alt="<?php echo $imageUtilisateur->ALT() ?>" />
				</div>
				<?php if(isset($videoUtilisateur)){ ?>
				<div id="videoUtilisateur">
					<iframe width="560" height="315" src="<?php echo $videoUtilisateur->SOURCE() ?>" frameborder="0" allowfullscreen></iframe>
				</div>
				<?php } ?>
			</div>
				<div id="infosPersonnelles">
				<form method="post" action="traitementUtilisateur.php">
					<table>
						<tr>
							<td>Pseudonyme</td> <td><input value="<?php echo $_SESSION['UTILISATEUR']->PSEUDONYME()?>"type="text" name="PSEUDONYME"/></td>
						</tr>
						<tr>
							<td>Password</td><td><input value="<?php echo $_SESSION['UTILISATEUR']->PASSWORD()?>" type="password" name="PASSWORD"/></td>
						</tr>
						<tr>
							<td>Date de naissance</td> <td><input value="<?php echo $_SESSION['UTILISATEUR']->DATE_NAISSANCE()?>" type="datetime" name="DATE_NAISSANCE"/></td> 
						</tr>
						<tr>
							<td>Ville</td><td><input value="<?php echo $_SESSION['UTILISATEUR']->VILLE()?>" type="text" name="VILLE"/></td> 
						</tr>
						<tr>
							<td>Pays</td><td><input value="<?php echo $_SESSION['UTILISATEUR']->PAYS()?>" type="text" name="PAYS"/></td>
						</tr>
						<tr>
							
								<td>Vidéo</td>
								<td>
								<select name="id_video">
									<option value=""> </option>
									<?php foreach($videos as $video){ ?>
									<option value="<?php echo $video->ID_VIDEO() ?>" <?php if(select($video->ID_VIDEO(), $_SESSION['UTILISATEUR']->ID_VIDEO())){ ?> selected="selected" <?php } ?>><?php echo $video->DESCRIPTION(); ?></option>
									<?php } ?> 
								</select>
								</td>
							
						</tr>
						
						<tr>
							
							<td>Image</td>
							<td>
							<select name="id_image">
								<?php foreach($images as $image){ ?>
								<option value="<?php echo $image->ID_IMAGE() ?>" <?php if(select($image->ID_IMAGE(), $_SESSION['UTILISATEUR']->ID_IMAGE())){ ?> selected="selected" <?php } ?> ><?php echo $image->ALT(); ?></option>
								<?php } ?>
							</select>
							</td>
							
						</tr>


						<tr>
							<td>Introduction</td> <td><textarea name="INTRODUCTION" id="introduction"><?php echo $_SESSION['UTILISATEUR']->INTRODUCTION() ?></textarea></td> 
						</tr>
						<tr>
							<td>Contenu</td><td><textarea name="CONTENU" id="contenu"><?php echo $_SESSION['UTILISATEUR']->CONTENU() ?></textarea></td> 
						</tr>
						<tr>
							<td></td><td><input type="submit" name="informationsPersonnelles"/></td>
						</tr>
					</table>
				
				</form>
			</div>
			
		</div>
		<?php include('footer.php');?>


</body>

</html>

<?php 

}else
{
header('location:connexion.php');
}

 ?>
