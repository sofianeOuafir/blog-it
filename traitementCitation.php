<?php
include('functions.php');
session_start();

if(connecter())
{
	$bdd = connexionBdd();
	$citationManager = new citationManager($bdd);
	
	if(isset($_POST['add']))
	{
		$citation = new citation($_POST);
		$citationManager->add($citation);
	}
	
	if(isset($_POST['update']))
	{
		$citation = new citation($_POST);
		$citationManager->update($citation);
	}
	
	
	if(isset($_POST['citations']))
	{
		foreach($_POST['citations'] as $citation)
		{
			$citationManager->delete($citation);
		}
	}

	redirectionVers('GestionCitations.php');

}

?>