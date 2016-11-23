<?php
class utilisateur
{
	private $_ID_UTILISATEUR;
	private $_ID_IMAGE;
	private $_PSEUDONYME;
	private $_PASSWORD;
	private $_DATE_NAISSANCE;
	private $_VILLE;
	private $_PAYS;
	private $_CONTENU;
	private $_INTRODUCTION;
	private $_ID_VIDEO;
	
	//getters
	public function ID_UTILISATEUR()
	{
		return $this->_ID_UTILISATEUR;
	}
	
	public function ID_IMAGE()
	{
		return $this->_ID_IMAGE;
	}
	
	public function CONTENU()
	{
		return $this->_CONTENU;
	}
	
	public function INTRODUCTION()
	{
		return $this->_INTRODUCTION;
	}
	
	public function ID_VIDEO()
	{
		return $this->_ID_VIDEO;
	}
	

	
	public function PSEUDONYME()
	{
		return $this->_PSEUDONYME;
	}
	
	public function PASSWORD()
	{
		return $this->_PASSWORD;
	}
	
	public function DATE_NAISSANCE()
	{
		return $this->_DATE_NAISSANCE;
	}
	
	
	public function PAYS()
	{
		return $this->_PAYS;
	}
	
	public function VILLE()
	{
		return $this->_VILLE;
	}
	
	//setters
	
	public function setID_UTILISATEUR($id)
	{
		$this->_ID_UTILISATEUR = $id;
	}
	
	public function setID_IMAGE($id_image)
	{
		$this->_ID_IMAGE = $id_image;
	}
	
	public function setCONTENU($value)
	{
		$this->_CONTENU = $value;
	}
	
	public function setINTRODUCTION($value)
	{
		$this->_INTRODUCTION = $value;
	}
	
	public function setID_VIDEO($value)
	{
		$this->_ID_VIDEO = $value;
	}

	
	public function setPSEUDONYME($pseudonyme)
	{
		$this->_PSEUDONYME = $pseudonyme;
	}
	
	public function setPASSWORD($password)
	{
		$this->_PASSWORD = $password;
	}
	
	public function setDATE_NAISSANCE($dateNaissance)
	{
		$this->_DATE_NAISSANCE = $dateNaissance;
	}
	
	public function setPAYS($pays)
	{
		$this->_PAYS = $pays;
	}
	
	public function setVILLE($ville)
	{
		$this->_VILLE = $ville;
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
