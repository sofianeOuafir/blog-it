<?php
class pageFacebook
{
	private $_ID;
	private $_ID_PAGE;
	private $_NOM_PAGE;
	private $_ID_CATEGORIE;
	
	public function ID()
	{
		return $this->_ID;
	}
	
	public function ID_PAGE()
	{
		return $this->_ID_PAGE;
	}
	
	public function NOM_PAGE()
	{
		return $this->_NOM_PAGE;
	}
	
	public function ID_CATEGORIE()
	{
		return $this->_ID_CATEGORIE;
	}
	
	// setters
	
	public function setID($value)
	{
		$this->_ID = $value;
	}
	
	public function setID_PAGE($value)
	{
		$this->_ID_PAGE = $value;
	}

	public function setNOM_PAGE($value)
	{
		$this->_NOM_PAGE = $value;
	}

	public function setID_CATEGORIE($value)
	{
		$this->_ID_CATEGORIE = $value;
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
