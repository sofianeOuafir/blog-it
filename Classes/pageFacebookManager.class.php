<?php
class pageFacebookManager
{
	private $_db;
	
	
	public function setDB($db)
	{
		$this->_db = $db;
	}
	
	public function __construct($db)
	{
		$this->setDB($db);
	}
	
	
	public function add(pageFacebook $pageFacebook)
	{
		$query = $this->_db->prepare('
										INSERT INTO page_facebook set 
										ID_PAGE = ?, 
										NOM_PAGE = ?, 
										ID_CATEGORIE = ? '								
									);
									
		$query->execute(array(
						$pageFacebook->ID_PAGE(),
						$pageFacebook->NOM_PAGE(),	
						$pageFacebook->ID_CATEGORIE())							
		 );
		 
	}
	
	public function getList()
	{
		$req = $this->_db->query('SELECT * from page_facebook');
		while($donnees = $req->fetch(PDO::FETCH_ASSOC))
		{
			$pages[] = new pageFacebook($donnees);
		}
		
		if(isset($pages))
		{
			return $pages;
		}
		
		return 0;
	}
	
	public function Delete($id)
	{
		$query = $this->_db->prepare('DELETE FROM page_facebook WHERE ID = ?');
		$query->execute(array($id));
	}





}
?>
