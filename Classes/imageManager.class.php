<?php
class imageManager
{
private $_db;

//recuperation d'une liste d'image
public function getList()
	{
		$req = $this->_db->query('SELECT * from IMAGE');
		while($donnees = $req->fetch(PDO::FETCH_ASSOC))
		{
			$images[] = new image($donnees);
		}
		
		return $images;
	}
	

//recuperation d'une image
public function get($id)
	{
		$req = $this->_db->prepare('SELECT * FROM IMAGE WHERE ID_IMAGE = ?');
		$req->execute(array($id));
		$donnees = $req->fetch(PDO::FETCH_ASSOC);
		$image = new image($donnees);
		return $image;
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

