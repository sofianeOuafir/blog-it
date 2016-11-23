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
	$req = $this->_db->query('SELECT * from categorie');
	while($donnees = $req->fetch(PDO::FETCH_ASSOC))
	{
		$categories[] = new categorie($donnees);
	}
	if(isset($categories))
	{
		return $categories;
	}
	
	return 0;
}

public function get($id)
	{
		$req = $this->_db->prepare('SELECT * FROM categorie WHERE ID_CATEGORIE = ?');
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


public function add(categorie $categorie)
{
	$query = $this->_db->prepare('INSERT INTO categorie set NOM_CATEGORIE = ?');
	$query->execute(array($categorie->NOM_CATEGORIE()));
}

public function delete($id)
{
	$req = $this->_db->prepare('DELETE FROM categorie WHERE ID_CATEGORIE = ?');
	$req->execute(array($id));
}

public function update(categorie $categorie)
{
	$query = $this->_db->prepare('UPDATE `categorie` SET `NOM_CATEGORIE`= ? WHERE ID_CATEGORIE = ?');						
	$query->execute(array($categorie->NOM_CATEGORIE(),$categorie->ID_CATEGORIE()));	 
}




}
?>




