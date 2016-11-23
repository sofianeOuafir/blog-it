<?php
class video
{
	private $_ID_VIDEO;
	private $_ID_CATEGORIE;
	private $_SOURCE;
	private $_LARGEUR;
	private $_LONGUEUR;
	private $_DESCRIPTION;
	
	
	//getters
	public function ID_VIDEO()
	{
		return $this->_ID_VIDEO;
	}
	
	public function ID_CATEGORIE()
	{
		return $this->_ID_CATEGORIE;
	}
	
	public function SOURCE()
	{
		return $this->_SOURCE;
	}
	
	public function LARGEUR()
	{
		return $this->_LARGEUR;
	}
	
	public function LONGUEUR()
	{
		return $this->_LONGUEUR;
	}
	
	public function DESCRIPTION()
	{
		return $this->_DESCRIPTION;
	}
	
	//setters
	
	public function setID_VIDEO($idVideo)
	{
		$this->_ID_VIDEO = $idVideo;
	}
	
	public function setID_CATEGORIE($idCategorie)
	{
		$this->_ID_CATEGORIE = $idCategorie;
	}
	
	public function setSOURCE($source)
	{
		return $this->_SOURCE = $source;
	}
	
	public function setLARGEUR($largeur)
	{
		$this->_LARGEUR = $largeur;
	}
	
	public function setLONGUEUR($longueur)
	{
		$this->_LONGUEUR = $longueur;
	}
	
	public function setDESCRIPTION($description)
	{
		$this->_DESCRIPTION = $description;
	}
	
	function hydrate(array $donnees)
	{
		foreach($donnees as $key => $value)
		{
			$method = 'set'.$key;
			if(method_exists($this,$method))
			{
				$this->$method($value);
			}
			
		}
	}
	
	public function __construct(array $donnees)
	{
		$this->hydrate($donnees);
	}


	
}
?>