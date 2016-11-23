<?php
class citation
{
	private $_ID_CITATION;
	private $_PHRASE;
	
	public function ID_CITATION()
	{
		return $this->_ID_CITATION;
	}

	public function PHRASE()
	{
		return $this->_PHRASE;
	}
	
	public function setID_CITATION($value)
	{
		$this->_ID_CITATION = $value;
	}
	
	public function setPHRASE($value)
	{
		$this->_PHRASE = $value;
	}
	
		
	// hydratation
	
	public function hydrate(array $donnees)
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

	
	//constructeur de classe
	public function __construct(array $donnees)
	{
		$this->hydrate($donnees);
	}



	
}
?>
