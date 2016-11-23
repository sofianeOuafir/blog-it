function hasard(min,max){
	return min+Math.floor(Math.random()*(max-min+1));
}

function getCitation(none)
{
	document.getElementById(none).style.display = "none";
	document.getElementById(none).style.color = "#C12020";
	// nombre de citation dans la base de données
	var maximum = document.getElementById('max');
	// valeur de maximum
	var value = maximum.innerText || maximum.textContent;
	// je recupere un nombre au hasard compris entre 1 et value, chaque nombre represent un id en base de donnée et donc une citation
	var nombreHasard = hasard(1,value);
	// ceci est l'id de l'element html
	var id = 'citation' + nombreHasard;
	// je fais apparaitre cette citation 
	
	
	var citation = document.getElementById(id);
	citation.style.display = "block";
	citation.style.color = "#C12020";
	//toute les 2 secondes je rappel cette même fonction
   	setTimeout('getCitation("'+ id +'");','5000');

}