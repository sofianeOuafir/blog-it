<?php 
require('functions.php'); 


spl_autoload_register('chargerClasse'); // On enregistre la fonction en autoload pour qu'elle soit appel�e d�s qu'on instanciera une classe non d�clar�e.



?>

<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" /> 
<title>sans titre 1</title>
</head>

<body>
<?php include('modeleArticle.php');?>
</body>

</html>
