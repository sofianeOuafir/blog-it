<?php
class citationManager
{
	private $_db;
	
	public function setDb($value)
	{
		$this->_db = $value;
	}
	
	public function getCitations()
	{
		$req = $this->_db->prepare('SELECT * FROM citation');
		$req->execute();
		while($donnees = $req->fetch(PDO::FETCH_ASSOC))
		{
			$citations[] = new citation($donnees);
		}
		
		if(isset($citations))
		{
			return $citations;
		}
		
		return 0;
		
	}
	
	public function add(citation $citation)
	{
		$query = $this->_db->prepare('INSERT INTO citation set PHRASE = ?');
		$query->execute(array($citation->PHRASE()));
	}
	
	public function update(citation $citation)
	{
		$query = $this->_db->prepare('UPDATE `citation` SET `PHRASE`= ? WHERE ID_CITATION = ?');						
		$query->execute(array($citation->PHRASE(),$citation->ID_CITATION()));	 
	}
	
	public function delete($id)
	{
		$req = $this->_db->prepare('DELETE FROM citation WHERE ID_CITATION = ?');
		$req->execute(array($id));
	}



		
	public function max()
	{
		$req = $this->_db->prepare('SELECT count(*) as max FROM citation');
		$req->execute();
		$donnees = $req->fetch(PDO::FETCH_ASSOC);
		return $donnees['max'];

	}
	
	public function get($id)
	{
		$req = $this->_db->prepare('SELECT * FROM citation WHERE ID_CITATION = ?');
		$req->execute(array($id));
		$donnees = $req->fetch(PDO::FETCH_ASSOC);
		$citation = new citation($donnees);
		return $citation;
	}


	
	
	public function __construct($value)
	{
		$this->setDb($value);
	}
}
?>