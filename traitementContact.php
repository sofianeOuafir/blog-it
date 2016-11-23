<?php
require('functions.php');
require('PHPMailer-master/class.phpmailer.php');
require('PHPMailer-master/class.smtp.php');
session_start();
spl_autoload_register('chargerClasse'); // On enregistre la fonction en autoload pour qu'elle soit appelée dès qu'on instanciera une classe non déclarée.
$bdd = connexionBdd();
$contact = new contact($_POST);
$contactManager = new contactManager($bdd);
$erreur = $contactManager->ControlAndSendEmail($contact);
if(isset($erreur))
{
	
	if($erreur == 6)
	{		
		$contactManager->add($contact);
	}
	redirectionVers($_POST['fichierActuel'].'?numeroErreur='.$erreur.'#form_container');

}


?>
