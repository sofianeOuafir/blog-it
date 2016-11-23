<?php
session_start();
require 'functions.php';
if(connecter() == false)
{
?>
<!DOCTYPE html>
<html>

<head>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
<link href="CSS/CSSIMPORTANT/connexion.css" rel="stylesheet" type="text/css">
<title>Connexion</title>
</head>

<body>
<?php include('header.php'); ?>
<form method="post" action="controleurs/controleurConnexion.php" id="formulaireConnexion">
	<table>
		<tr>
			<td>Pseudonyme : </td><td><input type="text" name="PSEUDONYME"></td>
		</tr>
		
		<tr>
			<td>Mot de passe</td><td><input type="password" name="PASSWORD"></td>
		</tr>
		
		<tr>
			<td></td><td><input type="submit" value="Se connecter"></td>
		</tr>


	</table>
	
</form>
<?php
include('footer.php');
?>
</body>

</html>
<?php
} 
else{
header('location:index.php');

}
?>
