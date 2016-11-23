<?php 
// fais une connexion à la base de données;
function connexionBdd()
{
	try
	{
        //$bdd = new PDO('mysql:host=sofianecqwsof.mysql.db;dbname=sofianecqwsof','sofianecqwsof','4C6t3xyy');
		$bdd = new PDO('mysql:host=localhost;dbname=sofianechronicle','root','4c6t3xxx');
	}
	catch(exception $e)
	{
		die('erreur ' .$e->getmessage());
	}

	return $bdd;
}

function nombrePage($nombreArticle)
{
	$nombrePage = ceil($nombreArticle / 6);
	
	return $nombrePage;
}


function chargerClasse($classe)
{
  require 'Classes/'.$classe.'.class.php'; // On inclut la classe correspondante au paramètre passé.
}


spl_autoload_register('chargerClasse');

// cette fonction vérifie que les identifiant tapés sont correctes.
function verificationIdentifiant()
{
	//connection a la bdd
	$bdd = connexionBdd();

	//commentaire : requête sur la table Utilisateur pour savoir si l'identifiant et le mot de passe sont correct
	
	$req = $bdd->prepare('SELECT * FROM utilisateur WHERE PSEUDONYME = ? and PASSWORD = ?'); 
	$req->execute(array($_POST['PSEUDONYME'],$_POST['PASSWORD']));
	$donneesUtilisateur = $req->fetch(PDO::FETCH_ASSOC);


	return $donneesUtilisateur;
	

}



// cette fonction redirige l'utilisateur vers le site si la connexion est un succès et renvoi vers une page d'erreur sinon
function redirection($donneesUtilisateur)
{

	
	// si la connexion est un succès, alors on crée une variable de session.
	if($donneesUtilisateur)
	{
		//$reussite est un tableau de données contenant les données de l'utilisateur, c'est pourquoi on l'instancie avec cet variable.
		$_SESSION['UTILISATEUR'] = new utilisateur($donneesUtilisateur);
		redirectionVers('../index.php');

	}
	else
	{
		header('location:../connexion.php?erreurAuthentification=1');
	
	}


}

function connecter()
{
	if(isset($_SESSION['UTILISATEUR']))
	{
		return true;
	}
	else
	{
		return false;
	}

}

function creationPagesArticle(article $article){
		
	//creation des noms des fichiers
	$nomFichierPhp = creationLien($article->TITRE(),1);
	$nomFichierCss = creationLien($article->TITRE(),2);	
	//J'ouvre les modeles
	$articleModele = fopen('modeleArticle.php','r');
	$cssModele = fopen('CSS/CSSIMPORTANT/modeleArticle.css','r');
	//je créer mes fichiers CSS et PHP
	$handlePhp = fopen($nomFichierPhp, "w+");
	$handleCss = fopen($nomFichierCss, "w+");
	
	// je copie chaque ligne de la page modele vers la nouvelle page et je modifie le nom de la categorie + le lien css vers la nouvel page pointe
	$i = 1;
	while($ligne = fgets($articleModele))
	{	
			
		if($i == 13)
		{
			
			$ligne = str_replace("&",$article->ID_ARTICLE(),$ligne);
			
		}
		
		if($i == 14)
		{
			$ligne = str_replace("&",$article->ID_CATEGORIE(),$ligne);
		}
		
		if($i== 15)
		{
			$ligne = str_replace("&",$article->ID_UTILISATEUR(),$ligne);
		}
		
		if($i == 16)
		{
			$ligne = str_replace("&",$article->ID_IMAGE_1(),$ligne);
		}

		if($i == 20)
		{
			$ligne = str_replace("&",$article->ID_VIDEO(),$ligne);
		}
		
		if($i == 34)
		{
			$ligne = str_replace("CSS/CSSIMPORTANT/modeleArticle.css",$nomFichierCss,$ligne);
		}




		
		fwrite($handlePhp,$ligne);
		
		$i +=1;
	}

	
	//je copie chaque ligne du modele CSS vers le Css de la nouvelle page
	
	while($ligne = fgets($cssModele))
	{
		fwrite($handleCss,$ligne);
	}
		
	fclose($articleModele);
	fclose($handlePhp);
	fclose($handleCss);
	fclose($cssModele);
}

// creation Page Workshop
function creationPagesWorkshop(workshop $workshop){
		
	//creation des noms des fichiers
	$nomFichierPhp = '../Workshops/'.creationLien($workshop->TITRE(),3);
	$nomFichierCss = creationLien($workshop->TITRE(),4);	
	//J'ouvre les modeles
	$articleModele = fopen('../modeleWorkshop.php','r');
	$cssModele = fopen('../CSS/CSSIMPORTANT/modeleWorkshop.css','r');
	//je créer mes fichiers CSS et PHP
	$handlePhp = fopen($nomFichierPhp, "w+");
	$handleCss = fopen($nomFichierCss, "w+");
	
	// je copie chaque ligne de la page modele vers la nouvelle page et je modifie le nom de la categorie + le lien css vers la nouvel page pointe
	$i = 1;
	while($ligne = fgets($articleModele))
	{	
			
		if($i == 9)
		{
			
			$ligne = str_replace("1",$workshop->ID(),$ligne);
			
		}
		if($i == 23)
		{
			$ligne = str_replace("CSS/CSSIMPORTANT/modeleWorkshop.css",$nomFichierCss,$ligne);
		}

		fwrite($handlePhp,$ligne);
		
		$i +=1;
		
	}

	
	//je copie chaque ligne du modele CSS vers le Css de la nouvelle page
	
	while($ligne = fgets($cssModele))
	{
		fwrite($handleCss,$ligne);
	}
		
	fclose($articleModele);
	fclose($handlePhp);
	fclose($handleCss);
	fclose($cssModele);
}




function creationLien($titre,$typeFichier)
{
	$caracteres = array("'" => "-","à" => "a", " " => "-", ":" => "-", "?" => "-");
	
	foreach($caracteres as $enlever => $remplacer)
	{
	
		$nouveauTitre = str_replace($enlever,$remplacer,$titre);
		
	}
	
	if($typeFichier == 1)
	{
		$lien = 'Articles/'.$nouveauTitre.'.php';
	}
	else if($typeFichier == 2)
	{
		$lien = 'CSS/Articles/'.$nouveauTitre.'.css';
	}
	else if($typeFichier == 3)
	{
		$lien = $nouveauTitre.'.php';
	}
	else if($typeFichier == 4)
	{
		$lien = '../CSS/Workshops/'.$nouveauTitre.'.css';
	}


	return $lien;
}

function suppressionImageInutileFTP()
{
	$imageManager = new imageDescriptionManager(connexionBdd());
	$imageUtile = $imageManager->selectImageUtile();
	if($dossier = opendir('image'))
	{
		while($fichier = readdir($dossier))
		{
			if($fichier != 'bandeNavigation.png' && $fichier != 'separationArticleAdditionnel.png' && $fichier != '_vti_cnf' && $fichier != '.' && $fichier != '..')
			{
				if(!in_array('image/'.$fichier,$imageUtile))
				{
					unlink('image/'.$fichier);
				}		
			}
		}
	}
}


function formulaireContact($action,$method,$fichierActuel,$titleForm,$objet,$idarticle)
{

	if(isset($_GET['numeroErreur']))
	{
		$erreur = $_GET['numeroErreur'];
	}
	
	$date = new datetime('now');
	
	
	
?>
<div id="form_container" style="width:100%;">
	<h1 style="text-align:center;"><?php echo $titleForm ?> </h1>
	<table id="tableauFormulaire" style="margin:auto;">
			<form action="<?php echo $action; ?>" method="<?php echo $method; ?>" >
				<input id="numeroErreur" type="hidden" value="<?php if(isset($erreur)){echo $erreur;} ?>"/>
				<input name="fichierActuel" type="hidden" value="<?php echo $fichierActuel; ?>"/>
				<input name="OBJET" type="hidden" value="<?php echo $objet; ?>"/>
				<input name="DATE" type="hidden" value="<?php echo $date->format('Y-m-d H:i:s'); ?>"/>
				<input name="ID_ARTICLE" type="hidden" value="<?php echo $idarticle; ?>"/>

				<tr>
					<td><label for="PRENOM">First name*</label></td>
					<td><input type="text" name="PRENOM"/></td>
					<td><p id="PRENOM" style="visibility:hidden"  > The first name given is not valid</p></td>
				</tr>
				<tr>
					<td><label  for="NOM">Last name</label></td>
					<td><input type="text" name="NOM"/></td>
					<td><p id="NOM" style="visibility:hidden">The last name given is not valid</p></td>
	
				</tr>	
				<tr>	
					<td><label  for="EMAIL">Email*</label></td>
					<td><input type="email" name="EMAIL"/></td>
					<td><p id="EMAIL" style="visibility:hidden">The email adress given is not valid</p></td>
				</tr>
				<tr>	
					<td><label for="PHONE">Phone number</label></td>
					<td><input type="tel" name="PHONE"/></td>
					<td><p id="PHONE" style="visibility:hidden">Only numbers permitted</p></td>
	
				</tr>
				<tr>
					<td><label for="MESSAGE">Message*</label></td>
					<td><textarea id="TEXTAREAMESSAGE" name="MESSAGE"> </textarea></td>
					<td><p id="MESSAGE" style="visibility:hidden">some lettering are not permitted</p></td>
	
				</tr>
				<tr>
					<td><input id="ENVOI" type="submit" value="OK I want to send it now !"/></td>
					<td><p id="SUCCES" style="visibility:hidden" >Email Sent with succes !</p></td>
				</tr>
			</form>
	</table>
	
	<style>
		#form_container
		{
			margin-bottom:30px;
			
		}
		form
		{
			
		}
		input
		{
			border-radius:2px;
		}
		#tableauFormulaire
		{
			border-top:1px C12020 solid;
			border-bottom:1px C12020 solid;
		}
		#ENVOI
		{
		background-color:#C12020;
		color:white;
		}
		#PHONE,#NOM,#PRENOM,#MESSAGE,#EMAIL,#SUCCES,label
		{
			
		}
		#TEXTAREAMESSAGE
		{
		width:100%;
		height:100%;
		}
	</style>
	
	
	<script>
		var numeroErreur = document.getElementById('numeroErreur').getAttribute('value');
		if(numeroErreur == 1)
		{
			document.getElementById('PRENOM').style.visibility = 'visible';
		}
		else if(numeroErreur == 2)
		{
			document.getElementById('NOM').style.visibility = 'visible';
		}
		else if(numeroErreur == 3)
		{
			document.getElementById('EMAIL').style.visibility = 'visible';
		}
		else if(numeroErreur == 4)
		{
			document.getElementById('PHONE').style.visibility = 'visible';
		}
		else if(numeroErreur == 5)
		{
			document.getElementById('MESSAGE').style.visibility = 'visible';
		}
		else if(numeroErreur == 6)
		{
			document.getElementById('SUCCES').style.visibility = 'visible';
			document.getElementById('ENVOI').setAttribute('value','Thank you !');
		}



	</script>
</div>
<?php
}


function smtpmailer($to, $from, $from_name, $subject, $body) {

	global $error;
	$mail = new PHPMailer();  // create a new object
	$mail->IsMail(); // enable SMTP
	$mail->SMTPDebug = 0;  // debugging: 1 = errors and messages, 2 = messages only
	$mail->SMTPAuth = true;  // authentication enabled
	$mail->SMTPSecure = 'ssl'; // secure transfer enabled REQUIRED for GMail
	$mail->Host = 'smtp.gmail.com';
	$mail->Port = 465; 
	$mail->Username = 'sofiane.chronicle@gmail.com';  
	$mail->Password = '4c6t3xyy';           
	$mail->SetFrom($from, $from_name);
	$mail->Subject = $subject;
	$mail->Body = $mail->MsgHTML($body);
	$mail->AddAddress($to);
	if(!$mail->Send()) {
		$error = 'Mail error: '.$mail->ErrorInfo; 
		echo $error;
		return false;
	} else {
		$error = 'Message sent!';
		echo $error;
		return true;
	}
}

function parcourirDossier($monDossier,$pageTraitement)
{
	
	if($dossier = opendir($monDossier))
	{
?>
		<form method="post" action="<?php echo $pageTraitement ?>">
<?php
		
		while($fichier = readdir($dossier))
		{
			if($fichier !== '.' and $fichier !== '..' and $fichier !== '_vti_cnf' and $fichier !== 'bandeNavigation.png' and $fichier !== 'separationArticleAdditionnel.png' )
			{
?>
				<div>
					<input type="checkbox" name="file[]" value="<?php echo $monDossier.'/'.$fichier ?>"/> <a href='<?php echo $monDossier.'/'.$fichier ?>' > <?php echo $fichier ?> </a>	
				</div>			
<?php
			}
		}
		
?>
		<input type="submit" value="Supprimer"/>
		</form>
<?php
		
	}
	
	
}

function redirectionVers($lien)
{
?>
		<input id="lienRedirection" value="<?php echo $lien ?>"/>
		<script> 
			var lien = document.getElementById('lienRedirection').getAttribute('value');
			window.location.href = lien;
		</script>
<?php
}

function autoPostArticlesToFB(article $article, $message)
{

$bdd = connexionBdd();
$imageDescriptionManager = new imageDescriptionManager($bdd);
$image = $imageDescriptionManager->get($article->ID_IMAGE_1());
$pageFacebookManager = new pageFacebookManager($bdd);

$pages = $pageFacebookManager->getList();
// require Facebook PHP SDK
// see: https://developers.facebook.com/docs/php/gettingstarted/
require_once("facebook_sdk/src/facebook.php");
 
// initialize Facebook class using your own Facebook App credentials
// see: https://developers.facebook.com/docs/php/gettingstarted/#install
$config = array();
$config['appId'] = '1144787315583605';
$config['secret'] = '1cd18a4104878aa28c1cc0bb902d260b';
$config['fileUpload'] = false; // optional
 
$fb = new Facebook($config);
 
// define your POST parameters (replace with your own values)
$params = array(
  "access_token" => "EAAQRLZAFJ6nUBAINvQxiFZCUw8t3IOTUCtIF68oIEZB64ZB0JW4ctRNL2ehISlDd6etOI93i3hkQScwFG4T5a2iiXJ9BvRmL2BDolIYWaMTzK35PiYHqmguoC9DaxcRdy5N3BrAji3e0Mb4mBT0v3dO5OzaVtKsZD", // see: https://developers.facebook.com/docs/facebook-login/access-tokens/
  "message" => $message,
  "link" => "http://www.sofianechronicle.com/".creationLien($article->TITRE(),1),
  "picture" => "www.sofianechronicle.com/".$image->SOURCE(),
  "name" => $article->TITRE(),
  "caption" => "www.sofianechronicle.com",
  "description" => $article->INTRODUCTION());
 
// post to Facebook
// see: https://developers.facebook.com/docs/reference/php/facebook-api/
foreach($pages as $page)
{
	try {
	  $ret = $fb->api('/'.$page->ID_PAGE().'/feed', 'POST', $params);
	  echo $page->NOM_PAGE().' : Successfully posted to Facebook <br/>';
	} catch(Exception $e) {
	  echo $page->NOM_PAGE().' : '.$e->getMessage().' <br/>';
	}
}

}


function autoPostArticlesToTwitter(article $article,$message)
{

// require codebird
require_once('codebird-php-develop/src/codebird.php');
 
\Codebird\Codebird::setConsumerKey("CiKg6BQ7dilBmQDWm2rBUEfzT", "wVeRq71xwOBJYnCRmvU5EgokYOcg5Eyzl7uDmxZY0MkTbCkBoG");
$cb = \Codebird\Codebird::getInstance();
$cb->setToken("3064017965-46ax8U8IxuqMClhYGmR7MR0PzUbs8VFyvBJc7fk", "gtppMuTA4g3uIOFqjsASE2eQcGFjbZbXbkWkI1cRG4C43");
 
$params = array(
  'status' => $message.' www.sofianechronicle.com/'.creationLien($article->TITRE(),1)

);
$reply = $cb->statuses_update($params);

}


function select($idParcouru, $idRechercher)
{
	if($idParcouru == $idRechercher)
	{
		return true;
	}
	
	return false;
}




?>
