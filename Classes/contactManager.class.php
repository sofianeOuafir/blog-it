<?php


class contactManager
{
private $_db;



public function ControlAndSendEmail(contact $contact)
{

	if ( preg_match ( " /^[a-zA-Z0-9_]{1,200}$/ " , $contact->PRENOM()) )
	{
	
		if ( preg_match ( " /^[a-zA-Z0-9_]{0,200}$/ " , $contact->NOM()) )
		{
	
			if ( preg_match ( " /^[^\W][a-zA-Z0-9_]+(\.[a-zA-Z0-9_]+)*\@[a-zA-Z0-9_]+(\.[a-zA-Z0-9_]+)*\.[a-zA-Z]{2,4}$/ " , $contact->EMAIL()) )
			{
				
				if ( preg_match ("#[0-9]+#" , $contact->PHONE()) )
				{
					if ( preg_match ('#.{1,10000}$#i', $contact->MESSAGE()) )
					{
						
						// commentaire : function smtpmailer($to, $from, $from_name, $subject, $body)
						// commentaire : envoi un mail à sofiane.chronicle@gmail.com
						$message = "<body> <p> Prenom :". $contact->PRENOM()."<br/> Nom : ". $contact->NOM()."<br/> EmailAdress : ". $contact->EMAIL() ."<br/> Phone: ". $contact->PHONE()."<br/> Message : ". $contact->MESSAGE(). "</p> </body>";
						smtpmailer('sofiane.chronicle@gmail.com', 'sofiane.chronicle@gmail.com', $contact->PRENOM(),$contact->OBJET(), $message); 
						// Commentaire : envoi un mail de confirmation
						$message = "<body> <p>Hello my friend ". $contact->PRENOM().' '.$contact->NOM().",<br/><br/> Thank you for your message ! I will reply as soon as possible :)<br/><br/> <a href='http//www.sofianechronicle.com' style'color:red;text-decoration:none;'>www.sofianechronicle.com </a>" ; 
						smtpmailer($contact->EMAIL(), 'sofiane.chronicle@gmail.com', $contact->PRENOM(), "Hi buddy, I have well received your message ! Sofiane", $message); 
	
	
					}
					else
					{
						$erreur = 5;
					}
	
				
				}
				else
				{
					$erreur = 4;
				
				}
							
			}
			else
			{
				$erreur = 3;
		
			}
		
		}
		else
		{
			$erreur = 2;
		}
	}
	else
	{
		$erreur = 1;
	}
	
	if(isset($erreur))
	{
		return $erreur;
	}
	
	return 6;
}


//ajoute une demande de contact dans la base de données
public function add(contact $contact)
{
	$query = $this->_db->prepare('SET foreign_key_checks = 0;INSERT INTO `contact`(`PRENOM`, `NOM`, `PHONE`, `MESSAGE`, `EMAIL`, `OBJET`, `DATE`, `ID_ARTICLE`) VALUES (?,?,?,?,?,?,?,?)');
	$query->execute(array($contact->PRENOM(),$contact->NOM(),$contact->PHONE(),$contact->MESSAGE(),$contact->EMAIL(),$contact->OBJET(),$contact->DATE(),$contact->ID_ARTICLE()));
	 
}

public function GetContact($idArticle)
{
	$req = $this->_db->prepare('SELECT * from contact WHERE ID_ARTICLE = ? ORDER BY DATE DESC');
	$req->execute(array($idArticle));
	while($donnees = $req->fetch(PDO::FETCH_ASSOC))
	{
		$contact[] = new contact($donnees);
	}
	
	if(isset($contact))
	{
		return $contact;
	}
	
	return 0;

}

public function getNumberOfComment($idArticle)
{
	$req = $this->_db->prepare('SELECT count(*) as nb from contact WHERE ID_ARTICLE = ?');
	$req->execute(array($idArticle));
	$donnees = $req->fetch(PDO::FETCH_ASSOC);	
	return $donnees['nb'];

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