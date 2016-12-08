<?php
require('functions.php');
session_start();
spl_autoload_register('chargerClasse');
if(connecter()) {
	//connection a la bdd
	$bdd = connexionBdd();
	//instanciation des gestionnaire de classe
	$articleManager = new articleManager($bdd);
	$utilisateurManager = new utilisateurManager($bdd);
	$rights = $utilisateurManager->getRights($_SESSION['UTILISATEUR']->ID_TYPE());
	
	if($rights != 0)
	{
		// if the current user is at least an author
		if(in_array(1,$rights))
		{
			//if the current user has the right number 2, then we get all articles
			if(in_array(2,$rights))
			{
				$articles = $articleManager->getList();
			}
			//if he has not the right number 2 but has the number 1, then we get his articles
			elseif(in_array(1,$rights)) {
				$articles = $articleManager->getArticlesOf($_SESSION['UTILISATEUR']->ID_UTILISATEUR());
			}
		}
		else 
		{
		?>
		<script>window.location.replace("index.php");</script>
		<?php
		}


?>
<!DOCTYPE html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" /> 
	<link href="css/library.css" rel="stylesheet" type="text/css">
	<link href="css/myArticles.css" rel="stylesheet" type="text/css">
	<title>My articles - Golbit</title>
	<?php 
	include('header.php'); 
	?>
	<div class="container-fluid" id="container-index" >
		<table class="table table-bordered table-hover">
		  <thead>
		    <tr>
		      <th>Title</th>
		      <th>Publish/Unpublish</th>
		      <th>Delete</th>
		    </tr>
		  </thead>
		  <tbody>
		  	<?php 
			if(isset($articles)) 
			{
				foreach($articles as $article)
				{	  
		  	?>
		    <tr class="<?php if($article->PUBLIER() == 1){echo 'success';}else{echo 'warning';}?>">
		      <td><a href="#" id="title"><?php echo $article->TITRE(); ?></a></td>
		      <td>
		      	<button type="button" data-loading-text="Requesting" class="btn <?php if($article->PUBLIER() == 1){echo 'btn-success';}else{echo 'btn-warning';}?> btn-lg publish" name="PUBLIER" value="<?php if($article->PUBLIER() == 1){echo 0;}else{echo 1;}?>">
  						<span class="glyphicon glyphicon glyphicon glyphicon-pencil" aria-hidden="true"></span> <?php if($article->PUBLIER() == 1){echo "Unpublish";}else{echo "Publish";}?>
  					</button> 
  					<p class="id_article"><?php echo $article->ID_ARTICLE(); ?></p>
		      </td>
		      <td>
		      	<button type="button" class="btn btn-default btn-lg">
  						<span class="glyphicon glyphicon glyphicon-trash" aria-hidden="true"></span> Delete
					</button> 
				</td>
		    </tr>
	    	<?php
	    		}
	 		}
	 		?>
		  </tbody>
		</table>
	</div>

   
	<script>
		$(".publish").click( function(){
			
			var data = new FormData();
			data.append('PUBLIER', $(this).val());
			data.append('ID_ARTICLE', $(this).siblings('.id_article').text())
			var button = $(this);
			
			jQuery.ajax({
			    url: 'controller/myArticles.controller.php',
			    data: data,
			    cache: false,
			    contentType: false,
			    processData: false,
			    type: 'POST',
			    success: function(data){
					if(button.text().trim() == "Publish") 
				   {
				   	button.text("");
				   	button.append("<span class=\"glyphicon glyphicon glyphicon glyphicon-pencil\" aria-hidden=\"true\"></span> Unpublish");
				   	button.val(0);
				   	button.parent().parent().removeClass("warning");
				   	button.removeClass("btn-warning");
				   	button.parent().parent().addClass("success");
				   	button.addClass("btn-success");
				   }
				   else if(button.text().trim() == "Unpublish") {
				   	button.text("");
				   	button.append("<span class=\"glyphicon glyphicon glyphicon glyphicon-pencil\" aria-hidden=\"true\"></span> Publish");
				   	button.val(1);
				   	button.parent().parent().addClass("warning");
				   	button.addClass("btn-warning");
				   	button.parent().parent().removeClass("success");
				   	button.removeClass("btn-success");
				   }
			    }
			});
		});	
		$('.id_article').hide();
	</script>
</body>

</html>
<?php
	}
	else 
	{
	?>
	<script>window.location.replace("index.php");</script>
	<?php
	}
}
else
{
?>
<script>window.location.replace("connexion.php");</script>
<?php
}
?>