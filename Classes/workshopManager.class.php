<?php
require 'workshop.class.php';
class workshopManager
{
	private $_db;
	
	public function setDB($db)
	{
		$this->_db = $db;
	}
	
	public function getList()
	{
		$req = $this->_db->query('SELECT * FROM `workshop`');
		while($donnees = $req->fetch(PDO::FETCH_ASSOC))
		{
			$workshops[] = new workshop($donnees);
		}
		
		if(isset($workshops))
		{
			return $workshops;
		}
		
		return 0;

	}
	
	//ajoute un workshop dans la bdd
	
	public function add(workshop $workshop, $coaches)
	{
		$query = $this->_db->prepare('INSERT INTO `workshop`(`ID`, `INTRODUCTION`, `CONTENU`, `TITRE`, `DATEDEBUT`, `COUT`, `DEPOSIT`, `DATEFIN`, `ID_IMAGE`, `ID_VIDEO`, `VILLE`, `PAYS`, `ADRESSE`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?)');
									
		$query->execute(array($workshop->ID(),
							  $workshop->INTRODUCTION(),
							  $workshop->CONTENU(),
							  $workshop->TITRE(),
							  $workshop->DATEDEBUT(),
							  $workshop->COUT(),
							  $workshop->DEPOSIT(),
							  $workshop->DATEFIN(),
							  $workshop->ID_IMAGE(),
							  $workshop->ID_VIDEO(),
							  $workshop->VILLE(),
							  $workshop->PAYS(),
							  $workshop->ADRESSE()));
							  
		$this->addCoachesToWorkshop($coaches, $workshop->ID());
		 
	}
	
	public function getCoaches(workshop $workshop)
	{
		$query = $this->_db->prepare('SELECT * FROM utilisateur INNER JOIN coacher ON utilisateur.ID_UTILISATEUR = coacher.ID_UTILISATEUR WHERE coacher.ID_WORKSHOP = ?');							
		$query->execute(array($workshop->ID()));
		while($donnees = $query->fetch(PDO::FETCH_ASSOC))
		{
			$coaches[] = new utilisateur($donnees);
		}
		
		if(isset($coaches))
		{
			return $coaches;
		}
		
		return 0;
	}
	
	public function addCoachesToWorkshop(array $coaches, $workshop)
	{
	
		foreach($coaches as $coach)
		{
			$query = $this->_db->prepare('INSERT INTO `coacher`(`ID_UTILISATEUR`, `ID_WORKSHOP`) VALUES (?,?)');							
			$query->execute(array($coach,$workshop));
		}

	}
	
	//permet davoir l'id du suivant article du dernier id de la base de donnée
	public function getId()
	{
		$req = $this->_db->query('SELECT MAX(ID) as maxId FROM workshop');
		$donnees = $req->fetch(PDO::FETCH_ASSOC);
		if($donnees['maxId'] == NULL)
		{
			$donnees['maxId'] = 0;
		}
		
		return $donnees['maxId'] + 1;
		
		
			
	}
	
	// permet de récupérer les workshops à venir d'un coach
	
	public function getWorkshops($id)
	{
		$req = $this->_db->prepare('SELECT * FROM coacher INNER JOIN workshop ON coacher.ID_WORKSHOP = workshop.ID WHERE coacher.ID_UTILISATEUR = ? and DATEDEBUT > DATE(NOW()) ORDER BY DATEDEBUT ');
		$req->execute(array($id));
		while($donnees = $req->fetch(PDO::FETCH_ASSOC))
		{
			$workshops[] = new workshop($donnees);
		}
		
		if(isset($workshops))
		{
			return $workshops;
		}
		
		return 0;
	}
	
	public function getAllWorkshops()
	{
		$req = $this->_db->prepare('SELECT * FROM workshop WHERE DATEDEBUT > DATE(NOW()) ORDER BY DATEDEBUT ');
		$req->execute();
		while($donnees = $req->fetch(PDO::FETCH_ASSOC))
		{
			$workshops[] = new workshop($donnees);
		}
		
		if(isset($workshops))
		{
			return $workshops;
		}
		
		return 0;

	}
	
	public function get($id)
	{
		$req = $this->_db->prepare('SELECT * FROM workshop WHERE ID = ?');
		$req->execute(array($id));
		return new workshop($req->fetch(PDO::FETCH_ASSOC));
			

	}


	public function Delete($idWorkshop)
	{
		$req = $this->_db->prepare('DELETE FROM workshop WHERE ID = ?');
		$req->execute(array($idWorkshop));

	}
	
	public function DeleteCoachesOfWorkshop($idWorkshop)
	{
		$req = $this->_db->prepare('DELETE FROM coacher WHERE ID_WORKSHOP = ?');
		$req->execute(array($idWorkshop));

	}
	
	// update 
	
		
	public function Update(workshop $workshop, $coaches)
	{
		$query = $this->_db->prepare('UPDATE `workshop` SET `INTRODUCTION` = ?, `CONTENU` = ?, `TITRE` = ?, `DATEDEBUT`= ?, `COUT`= ?, `DEPOSIT`= ?, `DATEFIN`= ?, `ID_IMAGE`= ?, `ID_VIDEO` = ?, `VILLE` = ?, `PAYS` = ?, `ADRESSE` = ? WHERE ID = ? ');
									
		$query->execute(array(
							  $workshop->INTRODUCTION(),
							  $workshop->CONTENU(),
							  $workshop->TITRE(),
							  $workshop->DATEDEBUT(),
							  $workshop->COUT(),
							  $workshop->DEPOSIT(),
							  $workshop->DATEFIN(),
							  $workshop->ID_IMAGE(),
							  $workshop->ID_VIDEO(),
							  $workshop->VILLE(),
							  $workshop->PAYS(),
							  $workshop->ADRESSE(),
							  $workshop->ID()));
							  
		$this->addCoachesToWorkshop($coaches, $workshop->ID());
		 
	}

	
	//permet de connaitre les coach à cocher dans le formulaire lors de la modification 
	public function isCoach(utilisateur $coachParcouru, $workshopToUpdate)
	{
		$coaches = $this->getCoaches($workshopToUpdate);
		foreach($coaches as $coach)
		{
			if($coachParcouru->ID_UTILISATEUR() == $coach->ID_UTILISATEUR())
			{
				return true;
			}
			
		}
		
		return false;
	}


	
	public function __construct($db)
	{
		$this->setDB($db);
	}

}
