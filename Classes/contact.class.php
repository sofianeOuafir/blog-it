<?php
class contact
{
	private $_PRENOM;
	private $_NOM;
	private $_EMAIL;
	private $_PHONE;
	private $_MESSAGE;
	private $_OBJET;
	private $_DATE;
	private $_ID_ARTICLE;
	
	
	public function PRENOM()
	{
		return $this->_PRENOM;
	}
	
	public function NOM()
	{
		return $this->_NOM;
	}


	public function EMAIL()
	{
		return $this->_EMAIL;
	}

	public function PHONE()
	{
		return $this->_PHONE;
	}

	public function MESSAGE()
	{
		return $this->_MESSAGE;
	}
	
	public function OBJET()
	{
		return $this->_OBJET;
	}
	
	public function DATE()
	{
		return $this->_DATE;
	}
	
	public function ID_ARTICLE()
	{
		return $this->_ID_ARTICLE;
	}
	
	// setters
	
	public function setPRENOM($value)
	{
		$this->_PRENOM = htmlspecialchars($value);
	}
	
	public function setNOM($value)
	{
		$this->_NOM = htmlspecialchars($value);
	}
	
	public function setEMAIL($value)
	{
		$this->_EMAIL = htmlspecialchars($value);
	}

	public function setPHONE($value)
	{
		$this->_PHONE = htmlspecialchars($value);
	}

	public function setMESSAGE($value)
	{
		$this->_MESSAGE = htmlspecialchars($value);
	}
	
	public function setOBJET($value)
	{
		$this->_OBJET = htmlspecialchars($value);

	}
	
	public function setDATE($value)
	{
		$this->_DATE = $value;
	}
	
	public function setID_ARTICLE($value)
	{
		$this->_ID_ARTICLE = $value;
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
