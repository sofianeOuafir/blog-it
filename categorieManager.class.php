<?php
require 'categorie.class.php';
?>

<?php

class categorieManager
{
private $_db;
// retourne la liste de toutes les categories
public function getList()
{
	$req = $this->_db->query('SELECT * from CATEGORIE');
	while($donnees = $req->fetch(PDO::FETCH_ASSOC))
	{
		$categories[] = new categorie($donnees);
	}
	
	return $categories;
}

public function get($id)
	{
		$req = $this->_db->prepare('SELECT * FROM CATEGORIE WHERE ID_CATEGORIE = ?');
		$req->execute(array($id));
		$donnees = $req->fetch(PDO::FETCH_ASSOC);
		$categorie = new categorie($donnees);
		return $categorie;
	}

public function setDB($db)
{
	$this->_db = $db;
}

public function __construct($db)
{
	$this->setDB($db);
}

}
?>




<body>

</body>

</html>
