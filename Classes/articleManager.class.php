<?php
class articleManager
{
	//variable de connexion à la base de données
	private $_db;
	
	
	// recupere les articles les plus vues
	
	public function articleLesPlusVues()
	{
		$req = $this->_db->query('select * from consulter inner join article on article.id_article = consulter.id_article WHERE publier = 1 group by consulter.id_article order by sum(vue) DESC LIMIT 0,5');
        if($req->fetch(PDO::FETCH_ASSOC)){
            while($donnees = $req->fetch(PDO::FETCH_ASSOC))
            {
                $articles[] = new article($donnees);
            }
		
            if(isset($articles))
            {
                return $articles;
            }
        }
		
		return 0;
	}
	
	public function articleLesPlusVuesParCategorie($idCategorie)
	{
		$req = $this->_db->prepare('select * from consulter inner join article on article.id_article = consulter.id_article WHERE article.id_categorie = ? and publier = 1 group by consulter.id_article order by sum(vue) DESC LIMIT 0,5');
		$req->execute(array($idCategorie));
		while($donnees = $req->fetch(PDO::FETCH_ASSOC))
		{
			$articles[] = new article($donnees);
		}
		
		if(isset($articles))
		{
			return $articles;
		}
		
		return 0;

	}
	
	//recupere les derniers articles de la base de données pour la page d'accueil
	
	public function getLesArticlesAPublier()
	{
		$req = $this->_db->query('SELECT * FROM `article` WHERE publier = 1 order by date_realisation desc limit 0,6');
		while($donnees = $req->fetch(PDO::FETCH_ASSOC))
		{
			$articles[] = new article($donnees);
		}
		
		if(isset($articles))
		{
			return $articles;
		}
		
		$articles = 0;
		
		
		return $articles;

	}
	
	


	//recupère un article.
	public function get($id)
	{
		$req = $this->_db->prepare('SELECT * FROM article WHERE ID_ARTICLE = ?');
		$req->execute(array($id));
		$donnees = $req->fetch(PDO::FETCH_ASSOC);
		if($donnees)
		{
			$article = new article($donnees);
		}
		else
		{
			$article = $this->getLast();
		}
		
		return $article;
	}
	

	
	// recupere une liste d'articles
	
	public function getList()
	{
		$req = $this->_db->query('SELECT * from article');
		while($donnees = $req->fetch(PDO::FETCH_ASSOC))
		{
			$articles[] = new article($donnees);
		}
		
		if(isset($articles))
		{
			return $articles;
		}
		
		return 0;
	}
	
	//recupere une liste d'article avec des limites
	
	public function getListWithLimit($min,$max)
	{
		$req = $this->_db->prepare('SELECT * from article WHERE Publier = 1 order by DATE_REALISATION DESC LIMIT :min, :max');
		$req->bindValue(':min',$min,PDO::PARAM_INT);
		$req->bindValue(':max',$max,PDO::PARAM_INT);
		$req->execute();
		
		while($donnees = $req->fetch(PDO::FETCH_ASSOC))
		{
			$articles[] = new article($donnees);
			
		}
		
		if(isset($articles))
		{
			return $articles;
		}
		
		return 0;
	}
	

	
	//recupere une liste d'article par rapport à une catégorie
	
	public function getListByCategorie($idCategorie,$min,$max)
	{
		$articles = array();
		//je declare une variable articles que j'initialise à null
		$req = $this->_db->prepare('SELECT * from article WHERE ID_CATEGORIE = :idCategorie and Publier = 1 order by DATE_REALISATION DESC LIMIT :min, :max');
		$req->bindValue(':min',$min,PDO::PARAM_INT);
		$req->bindValue(':max',$max,PDO::PARAM_INT);
		$req->bindValue(':idCategorie',$idCategorie,PDO::PARAM_INT);
		$req->execute();
		while($donnees = $req->fetch(PDO::FETCH_ASSOC))
		{
			$articles[] = new article($donnees);
		}
		
		//si la variable article n'est pas equivalent à false (null) alors c'est qu'il y a des articles dedans, on peut les retourner
		if($articles)
		{
			return $articles;
		}
		
		
		//sinon on retourne la variable article null
		return 0;
	}



	//recupere une liste d'article (10 derniers publiés)
	
	public function getTenLast()
	{
		$req = $this->_db->query('SELECT * FROM `article` WHERE publier = 1 order by date_realisation desc limit 6,10');
		$donnees = $req->fetch(PDO::FETCH_ASSOC);
	
		
		if($donnees)
		{
			$articles[] = new article($donnees);
			while($donnees = $req->fetch(PDO::FETCH_ASSOC))
			{
				$articles[] = new article($donnees);
			}
			
			return $articles;
		}
		
		$articles = 0;
		
		return $articles;
		
	}

	
	
	// recupere le nombre d'article
	public function getNombreArticle()
	{
		$req = $this->_db->query('SELECT count(*) as nombreArticle FROM article WHERE publier = 1');
		$donnees = $req->fetch(PDO::FETCH_ASSOC);
		return $donnees['nombreArticle'];

	}
	
	//recupere le nombre d'article par rapport à une categorie
	
	public function getNombreArticleByCategorie($idcategorie)
	{
		$req = $this->_db->prepare('SELECT count(*) as nombreArticle FROM article WHERE ID_CATEGORIE = ? and Publier = 1');
		$verification = $req->execute(array($idcategorie));
		$donnees = $req->fetch(PDO::FETCH_ASSOC);
		if($verification)
		{
			return $donnees['nombreArticle'];
		}
		
		return 0;

	}
	
	//  permet de savoir si la date est inscrite dans la table date
	private function dateInscriteDansTableDate($date)
	{
		$req = $this->_db->prepare('SELECT DATE_CONSULTATION FROM date WHERE DATE_CONSULTATION = ?');
		$req->execute(array($date));
		$inscrite = $req->fetch(PDO::FETCH_ASSOC);
		
		return $inscrite;
	}
	
	private function dateEtArticleInscritTableConsulter(article $article, $date)
	{
		$req = $this->_db->prepare('SELECT * FROM consulter WHERE DATE_CONSULTATION = ? and ID_ARTICLE = ?');
		$req->execute(array($date,$article->ID_ARTICLE()));
		$inscrit = $req->fetch(PDO::FETCH_ASSOC);
		
		return $inscrit;
	}
	
	
	//permet d'actualiser le nombre de vue d'un article par rapport a la date
	
	public function ajouteUneVueParDate(article $article, $date)
	{
		
		
		// si la date est inscrite dans la table date alors on regarde si il y a deja eu une vue  pour l'article et la date passé en parametre
		if($this->dateInscriteDansTableDate($date))
		{
			
			
			// si la date et l'article sont present dans la table consulter c'est qu'il y a deja eu une vue, on peut en ajouter une
			if($this->dateEtArticleInscritTableConsulter($article, $date))
			{
				$req = $this->_db->prepare('UPDATE `consulter` SET vue = vue + 1 WHERE DATE_CONSULTATION = ? and ID_ARTICLE = ?');
				$req->execute(array($date,$article->ID_ARTICLE()));

			}
			else
			{
				$req = $this->_db->prepare('INSERT INTO `consulter`(`DATE_CONSULTATION`, `ID_ARTICLE`, `vue`) VALUES (?,?,?)');
				$req->execute(array($date,$article->ID_ARTICLE(),1));

			}
		}
		// si la date n'est pas inscrite dans la table date alors on l'ajoute et dans le meme temps on ajoute une vue a larticle dans la table consulter pour la date correspondante
		else
		{
			$req = $this->_db->prepare('INSERT INTO `date`(`DATE_CONSULTATION`) VALUES (?)');
			$req->execute(array($date));

			
			//ajout de la date et de larticle dans la table consulter
			$req = $this->_db->prepare('INSERT INTO `consulter`(`DATE_CONSULTATION`, `ID_ARTICLE`, `vue`) VALUES (?,?,?)');
			$req->execute(array($date,$article->ID_ARTICLE(),0));

		}
		
		

	}
	
	//permet de retourner le nombre de vue totale d'un article
	
	public function nombreVues(article $article)
	{
		$req = $this->_db->prepare('SELECT sum(vue) as vues FROM `consulter` WHERE ID_ARTICLE = ?');
		$req->execute(array($article->ID_ARTICLE()));
		$donnees = $req->fetch(PDO::FETCH_ASSOC);
		if($donnees['vues'] != NULL)
		{
			$vues = $donnees['vues'];
		}else{
		$vues = 0;
		}
		
		return $vues;

	}
	

	//ajoute un article à la base de données
	public function add(article $article)
	{
		$query = $this->_db->prepare('
										INSERT INTO article set ID_ARTICLE = ?,
										ID_UTILISATEUR = ?, 
										ID_CATEGORIE = ?, 
										ID_IMAGE_1 = ?,
										TITRE = ?,
										INTRODUCTION = ?,
										CONTENU = ?,
										DATE_REALISATION = ?,
										Publier = ?'
										
									);
									
		$query->execute(array($article->ID_ARTICLE(),
						$article->ID_UTILISATEUR(),
						$article->ID_CATEGORIE(),
						$article->ID_IMAGE_1(),
						$article->TITRE(),
						$article->INTRODUCTION(),
						$article->CONTENU(),
						$article->DATE_REALISATION(),
						$article->PUBLIER())
									
									
										
		 );
		 
	}
	
	//permet de modifier un article dans la base de données
	
	public function update(article $article)
	{
		$query = $this->_db->prepare('
										UPDATE `article` 
										SET 
										`ID_CATEGORIE`= ?,
										`ID_IMAGE_1`= ?,
										`INTRODUCTION`= ?,
										`CONTENU`= ?,
										`TITRE`= ?,
										`LAST_UPDATE`= ?,
										`Publier`= ?
										WHERE ID_ARTICLE = ?									
									');
									
		$query->execute(array(
						$article->ID_CATEGORIE(),
						$article->ID_IMAGE_1(),
						$article->INTRODUCTION(),
						$article->CONTENU(),
						$article->TITRE(),
						$article->LAST_UPDATE(),
						$article->PUBLIER(),
						$article->ID_ARTICLE())		
									
										
		 );
		 
	}

	//permet davoir l'id du suivant article du dernier id de la base de donnée
	public function getNextId()
	{
		$req = $this->_db->query('SELECT MAX(ID_ARTICLE) as maxId FROM article');
		$donnees = $req->fetch(PDO::FETCH_ASSOC);
		$nextId = $donnees['maxId'] + 1;
		
		return $nextId;
	
	}
	
	
	//permet de verifier si le titre de larticle n'est pas deja dans la base de données
	public function titreExiste($titre)
	{
		$req = $this->_db->prepare('SELECT `TITRE` FROM `article` WHERE TITRE = ?');
		$req->execute(array($titre));
		$donnees = $req->fetch(PDO::FETCH_ASSOC);
		if($donnees['TITRE'])
		{
			return true;
		}
		
		return false;

	}
	
	
	public function delete($id)
	{
		$req = $this->_db->prepare('DELETE FROM article WHERE ID_ARTICLE = ?');
		$req->execute(array($id));
	}
	
	
	//setters
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

