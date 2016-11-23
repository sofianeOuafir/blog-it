<?php
require 'video.class.php';
class videoManager
{
	private $_db;
	//recupere une liste de videos
	public function getList()
	{
		$req = $this->_db->query('SELECT * from video');
		while($donnees = $req->fetch(PDO::FETCH_ASSOC))
		{
			$videos[] = new video($donnees);
		}
		if(isset($videos))
		{
			return $videos;
		}
		
		return 0;
	}
	
	//recupere le prochain id qui va etre attribuer dans la bdd
	public function getNextId()
	{
		$req = $this->_db->query('SELECT MAX(ID_VIDEO) as maxId FROM video');
		$donnees = $req->fetch(PDO::FETCH_ASSOC);
		$nextId = $donnees['maxId'] + 1;
		
		return $nextId;
	
	}

	
	
	//recupere une video
	public function get($id)
	{
		$req = $this->_db->prepare('SELECT * FROM video WHERE ID_VIDEO = ?');
		$req->execute(array($id));
		$donnees = $req->fetch(PDO::FETCH_ASSOC);
		$video = new video($donnees);
		return $video;
	}
	
	//ajoute une video dans la bdd
	
	public function add(video $video)
	{
		$query = $this->_db->prepare('INSERT INTO video set  SOURCE = ?, DESCRIPTION = ?');
									
		$query->execute(array($video->SOURCE(),$video->DESCRIPTION()));
		 
	}
	
	// SUPPRIME LES VIDEOS QUI NE SONT RATTACHES A AUCUN ARTICLE
	
	public function supprimeVideoInutile()
	{
		$query = $this->_db->query('DELETE FROM video WHERE ID_VIDEO NOT IN (SELECT ID_VIDEO FROM article WHERE ID_VIDEO != "NULL")');

	}

	public function Delete($id)
	{
		$query = $this->_db->prepare('DELETE FROM video WHERE ID_VIDEO = ?');
		$query->execute(array($id));
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
