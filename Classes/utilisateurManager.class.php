<?php
class utilisateurManager
{
	private $_db;
	
	public function getList()
	{
		$req = $this->_db->query('SELECT * from utilisateur');
		while($donnees = $req->fetch(PDO::FETCH_ASSOC))
		{
			$utilisateurs[] = new utilisateur($donnees);
		}
		
		return $utilisateurs;
	}

	
	public function update(utilisateur $utilisateur)
	{
		$req = $this->_db->prepare('UPDATE utilisateur SET ID_IMAGE = ?, PSEUDONYME = ?, DATE_NAISSANCE = ?, VILLE = ?, PAYS = ?, PASSWORD = ?, CONTENU = ?, INTRODUCTION = ?, ID_VIDEO = ?  WHERE ID_UTILISATEUR = ?');

		$req->execute(array($utilisateur->ID_IMAGE(),
							$utilisateur->PSEUDONYME(),
							$utilisateur->DATE_NAISSANCE(),
							$utilisateur->VILLE(),
							$utilisateur->PAYS(),
							$utilisateur->PASSWORD(),
							$utilisateur->CONTENU(),
							$utilisateur->INTRODUCTION(),
							$utilisateur->ID_VIDEO(),
							$utilisateur->ID_UTILISATEUR()
							));
	}
	
	public function get($id)
	{
		$req = $this->_db->prepare('SELECT * FROM utilisateur WHERE ID_UTILISATEUR = ?');
		$req->execute(array($id));
		$donnees = $req->fetch(PDO::FETCH_ASSOC);
		$utilisateur = new utilisateur($donnees);
		return $utilisateur;
	}
	
	public function getAll()
	{
		$req = $this->_db->query('SELECT * FROM utilisateur');
        if($req->fetch(PDO::FETCH_ASSOC)){
            while($donnees = $req->fetch(PDO::FETCH_ASSOC))
            {
                $utilisateurs[] = new utilisateur($donnees);
            }
            if(isset($utilisateurs))
            {
                return $utilisateurs;
            }
        }
		
		return 0;
	}
	
	public function getRights($idType)
	{
		$req = $this->_db->prepare('SELECT ID_RIGHT FROM authorizations WHERE ID_TYPE = ?');
		$req->execute(array($idType));
		while($donnees = $req->fetch(PDO::FETCH_ASSOC))
		{
			$rights[] = $donnees['ID_RIGHT'];
		}
		
		if(isset($rights)) {
			return $rights;
		}
		
		return 0;
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

