<?php
class categorie
{
	private $_ID_CATEGORIE;
	private $_NOM_CATEGORIE;
	
	//getters
	
	public function ID_CATEGORIE()
	{
		return $this->_ID_CATEGORIE;
	}
	
	public function NOM_CATEGORIE()
	{
		return $this->_NOM_CATEGORIE;
	}

	//setters
	public function setID_CATEGORIE($idCategorie)
	{
		$this->_ID_CATEGORIE = $idCategorie;
	}
	
	public function setNOM_CATEGORIE($nomCategorie)
	{
		$this->_NOM_CATEGORIE = $nomCategorie;
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

