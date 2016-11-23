<?php
class workshop
{
	private $_ID;
	private $_INTRODUCTION;
	private $_CONTENU;
	private $_TITRE;
	private $_DATEDEBUT;
	private $_DATEFIN;
	private $_COUT;
	private $_DEPOSIT;
	private $_ID_UTILISATEUR;
	private $_ID_IMAGE;
	private $_ID_VIDEO;
	private $_VILLE;
	private $_PAYS;
	private $_ADRESSE;
	
	public function ID()
	{
		return $this->_ID;
	}
	
	public function INTRODUCTION()
	{
		return $this->_INTRODUCTION;
	}
	
	public function CONTENU()
	{
		return $this->_CONTENU;
	}
	
	public function TITRE()
	{
		return $this->_TITRE;
	}
	
	public function DATEDEBUT()
	{
		return $this->_DATEDEBUT;
	}
	
	public function DATEFIN()
	{
		return $this->_DATEFIN;
	}
	
	public function COUT()
	{
		return $this->_COUT;
	}
	
	public function DEPOSIT()
	{
		return $this->_DEPOSIT;
	}
	
	public function ID_UTILISATEUR()
	{
		return $this->_ID_UTILISATEUR;
	}
	
	public function ID_IMAGE()
	{
		return $this->_ID_IMAGE;
	}
	
	public function ID_VIDEO()
	{
		return $this->_ID_VIDEO;
	}
	
	public function VILLE()
	{
		return $this->_VILLE;
	}
	
	public function PAYS()
	{
		return $this->_PAYS;
	}


	public function ADRESSE()
	{
		return $this->_ADRESSE;
	}

	
	//SETTERS
	
	
	public function setID($value)
	{
		$this->_ID = $value;
	}
	
	public function setINTRODUCTION($value)
	{
		$this->_INTRODUCTION = $value;
	}
	
	public function setCONTENU($value)
	{
		$this->_CONTENU = $value;
	}
	
	public function setTITRE($value)
	{
		$this->_TITRE = $value;
	}
	
	public function setDATEDEBUT($value)
	{
		$this->_DATEDEBUT = $value;
	}
	
	public function setDATEFIN($value)
	{
		$this->_DATEFIN = $value;
	}
	
	public function setCOUT($value)
	{
		$this->_COUT = $value;
	}
	
	public function setDEPOSIT($value)
	{
		$this->_DEPOSIT = $value;
	}
	
	public function setID_UTILISATEUR($value)
	{
		$this->_ID_UTILISATEUR = $value;
	}
	
	public function setID_IMAGE($value)
	{
		$this->_ID_IMAGE = $value;
	}
	
	public function setID_VIDEO($value)
	{
		$this->_ID_VIDEO = $value;
	}
	
	public function setVILLE($value)
	{
		$this->_VILLE = $value;
	}
	
	public function setADRESSE($value)
	{
		$this->_ADRESSE = $value;
	}
	
	public function setPAYS($value)
	{
		$this->_PAYS = $value;
	}

	function parcoursMethode() {
		foreach($this as $key => $value) {
    	echo $key. ' '. $value."<br/>";
     }
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