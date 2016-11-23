var boutonRecupererArticle = document.getElementById('boutonRecupererArticle');
var id_article = document.getElementById('id_article').getAttribute('value');

if(id_article)
{
	var boutonEcrireArticle = document.getElementById('ecrireArticle');
	boutonEcrireArticle.setAttribute('value','Modifier');
	boutonEcrireArticle.setAttribute('name','modifierArticle');
	
}	



