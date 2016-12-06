<?php
require('../functions.php');
spl_autoload_register('chargerClasse'); // On enregistre la fonction en autoload pour qu'elle soit appelée dès qu'on instanciera une classe non déclarée.
session_start();
if(isset($_POST['PSEUDONYME']))
{
	checkCredential();
	if(connecter())
	{
		echo 1;
	}
	else
	{
		echo 0;
	}
}
else
{
?>
<script>window.location.replace("../connexion.php");</script>
<?php
}
?>