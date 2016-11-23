<?php
class image
{
	private $_ID_IMAGE;
	private $_SOURCE;
	private $_ALT;
	
	//getters
	
	public function ID_IMAGE()
	{
		return $this->_ID_IMAGE;
	}
	
	public function SOURCE()
	{
		return $this->_SOURCE;
	}


	public function ALT()
	{
		return $this->_ALT;
	}
	
	//setters
	
	public function setID_IMAGE($idImage)
	{
		$this->_ID_IMAGE = $idImage ;
	}
	
	public function setSOURCE($source)
	{
		$this->_SOURCE = $source;
	}


	public function setALT($alt)
	{
		$this->_ALT = $alt;
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

