<?php
require('../functions.php');
session_start();
//en cas de deconnexion
if(connecter())
{
	unset($_SESSION['UTILISATEUR']);
	redirectionVers('../index.php');
}
else
{

}
?>
