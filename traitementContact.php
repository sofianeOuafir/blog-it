<?php
require('functions.php');
require('PHPMailer-master/class.phpmailer.php');
require('PHPMailer-master/class.smtp.php');
session_start();
spl_autoload_register('chargerClasse'); // On enregistre la fonction en autoload pour qu'elle soit appelée dès qu'on instanciera une classe non déclarée.
$bdd = connexionBdd();
$contact = new contact($_POST);
echo $contact->ID_UTILISATEUR();
$contact->setDATE(date("Y-m-d H:i:s"));
$contactManager = new contactManager($bdd);
$contactManager->add($contact);

?>
