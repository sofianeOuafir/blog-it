<?php 
session_start();
require 'functions.php';
spl_autoload_register('chargerClasse');
$bdd = connexionBdd();
$utilisateurManager = new utilisateurManager($bdd);
$imageDescriptionManager = new imageDescriptionManager($bdd);
$users = $utilisateurManager->getList();
//$image = $imageDescriptionManager->get($utilisateur->ID_IMAGE());
?>
<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" /> 
<link href="css/about.css" rel="stylesheet" type="text/css">
<link href="css/library.css" rel="stylesheet" type="text/css">
<title>About - Sofiane's Chronicle</title>
<?php 
include('header.php'); 
?>	

<div class="container-fluid" id="users">
	<?php 
	foreach($users as $user){ 
	$image = $imageDescriptionManager->get($user->ID_IMAGE());
	?>
	<div class="col-md-12" id="user">
		<div class="col-md-2">
			<img class="img-circle" src="<?php echo $image->SOURCE(); ?>" alt=""/>
		</div>
		<div class="col-md-10">
			<div class="col-md-12">
				<div class="col-md-9">
					<h2 class="title"><?php echo $user->PSEUDONYME() ?></h2>
				</div>
				<div class="col-md-3">
				<button type="button" class="btn default" data-toggle="modal" data-target="#exampleModal" data-whatever="@<?php echo $user->PSEUDONYME(); ?>" data-id="<?php echo $user->ID_UTILISATEUR(); ?>">Send a message</button>
				<button type="button" class="btn default">See profile</button>
				</div>
			</div>
			<div class="col-md-12">
				<p class="introduction"><?php echo $user->INTRODUCTION() ?></p>
			</div>
		</div>
	</div>
	<?php } ?>
</div>

<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="exampleModalLabel">New message</h4>
      </div>
      <div class="modal-body">
        <form id="myForm">
          <div class="form-group">
            <input type="text" class="form-control" id="recipient-name" style="display:none">
          </div>
          <div class="form-group">
            <label for="message-text" class="control-label">Message:</label>
            <textarea class="form-control" id="message-text"></textarea>
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button id="buttonSend" type="button" class="btn btn-primary">Send message</button>
      </div>
    </div>
  </div>
</div>

	
<script> 

$('#exampleModal').on('show.bs.modal', function (event) {
  var button = $(event.relatedTarget) // Button that triggered the modal
  var recipient = button.data('whatever') // Extract info from data-* attributes
  // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
  // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
  var id = button.data('id')
  var modal = $(this)
  modal.find('.modal-title').text('New message to ' + recipient)
  modal.find('.modal-body input').val(id)
});

$('#buttonSend').click(function () {
  $.ajax({
         url: "traitementContact.php", 
         type: "post", //can be post or get
         data: {'MESSAGE': $('#message-text').val(), 'ID_UTILISATEUR': $('#recipient-name').val(), }, 
         success: function(){
         	$('#message-text').val("")
				$('#exampleModal').modal('hide');
				
         },
         error:function () {
         	alert("nooo");
         }
     });

});

$('.nav li:nth-child(3)').addClass('active');
</script>




</body>

</html>