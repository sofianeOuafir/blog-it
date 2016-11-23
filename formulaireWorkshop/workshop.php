<?php
require('../functions.php');
session_start();
spl_autoload_register('chargerClasse'); // On enregistre la fonction en autoload pour qu'elle soit appelée dès qu'on instanciera une classe non déclarée.
if(connecter())
{
//connection a la bdd
$bdd = connexionBdd();
$imageDescriptionManager = new imageDescriptionManager($bdd);
$videoManager = new videoManager($bdd);
$utilisateurManager = new utilisateurManager($bdd);
$workshopManager = new workshopManager($bdd);
$coaches = $utilisateurManager->getList();
$images = $imageDescriptionManager->getList();
$videos = $videoManager->getList();
$idWorkshop = $workshopManager->getId();
$workshops = $workshopManager->getList();

if(isset($_POST['Update']))
{
	$workshopToUpdate = $workshopManager->get($_POST['idWorkshop']);
	$dateDebut = new datetime($workshopToUpdate->DATEDEBUT());
	$dateFin = new datetime($workshopToUpdate->DATEFIN());
}

?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<title>Workshops</title>
<link rel="stylesheet" type="text/css" href="view.css" media="all"/>
<script type="text/javascript" src="view.js"></script>
<script type="text/javascript" src="calendar.js"></script>
</head>
<body id="main_body" >
	<?php
	$notSameDirectory = 1;
	include('../header.php');
	?>
	<div id="form_container">
		<form method="post" action="">
				<select name="idWorkshop">
				<?php foreach($workshops as $workshop){ ?>
					<option value="<?php echo $workshop->ID() ?>"><?php echo $workshop->TITRE() ?></option>
				<?php } ?>
				</select>
				<input type="submit" name="Update" />
			</form>
		<form id="form_969584" class="appnitro"  method="post" action="traitementWorkshop.php">
		<div class="form_description">
		</div>						
			<ul >
				<li id="li_1" >
					<input type="hidden" value="<?php if(isset($_POST['Update'])){ echo $workshopToUpdate->ID();}else{ echo $idWorkshop;} ?>" name="ID"/>
					<input type="hidden" value="<?php if(isset($_POST['Update'])){ echo $workshopToUpdate->PAYS();} ?>" id="paysToUpdate"/>

					<label class="description" for="TITRE">Titre</label>
					<div>
						<input id="element_1" name="TITRE" class="element text medium" type="text" maxlength="255" value="<?php if(isset($_POST['Update'])){ echo $workshopToUpdate->TITRE();} ?>"/> 
					</div> 
				</li>		
				
				<li id="li_2" >
					<label class="description" for="INTRODUCTION">Introduction </label>
					<div>
						<textarea id="element_2" name="INTRODUCTION" class="element textarea medium"><?php if(isset($_POST['Update'])){ echo $workshopToUpdate->INTRODUCTION();} ?></textarea> 
					</div> 
				</li>		
				
				<li id="li_3" >
					<label class="description" for="CONTENU">Contenu </label>
					<div>
						<textarea id="element_3" name="CONTENU" class="element textarea medium"><?php if(isset($_POST['Update'])){ echo $workshopToUpdate->CONTENU();} ?></textarea> 
					</div> 
				</li>		
				<li id="li_4" >
					<label class="description" for="FROM">From </label>
					<span>
						<input id="element_4_1" name="DDMONTH" class="element text" size="2" maxlength="2" value="<?php if(isset($_POST['Update'])){ echo $dateDebut->format('m');} ?>" type="text"/>
						<label for="element_4_1">MM</label>
					</span>
					<span>
						<input id="element_4_2" name="DDDAY" class="element text" size="2" maxlength="2" value="<?php if(isset($_POST['Update'])){ echo $dateDebut->format('d');} ?>" type="text"/>
						<label for="element_4_2">DD</label>
					</span>
					<span>
				 		<input id="element_4_3" name="DDYEAR" class="element text" size="4" maxlength="4" value="<?php if(isset($_POST['Update'])){ echo $dateDebut->format('Y');} ?>" type="text"/>
						<label for="element_4_3">YYYY</label>
					</span>
				
					<span id="calendar_4">
						<img id="cal_img_4" class="datepicker" src="calendar.gif" alt="Pick a date."/>	
					</span>
					<script type="text/javascript">
						Calendar.setup({
						inputField	 : "element_4_3",
						baseField    : "element_4",
						displayArea  : "calendar_4",
						button		 : "cal_img_4",
						ifFormat	 : "%B %e, %Y",
						onSelect	 : selectDate
						});
					</script>
				 
				</li>		
				
				<li id="li_5" >
					<label class="description" for="DATEFIN">To </label>
					<span>
						<input id="element_5_1" name="DFMONTH" class="element text" size="2" maxlength="2" value="<?php if(isset($_POST['Update'])){ echo $dateFin->format('m');} ?>" type="text"/>
						<label for="element_5_1">MM</label>
					</span>
					<span>
						<input id="element_5_2" name="DFDAY" class="element text" size="2" maxlength="2" value="<?php if(isset($_POST['Update'])){ echo $dateFin->format('d');} ?>" type="text"/>
						<label for="element_5_2">DD</label>
					</span>
					<span>
				 		<input id="element_5_3" name="DFYEAR" class="element text" size="4" maxlength="4" value="<?php if(isset($_POST['Update'])){ echo $dateFin->format('Y');} ?>" type="text"/>
						<label for="element_5_3">YYYY</label>
					</span>
				
					<span id="calendar_5">
						<img id="cal_img_5" class="datepicker" src="calendar.gif" alt="Pick a date."/>	
					</span>
					<script type="text/javascript">
						Calendar.setup({
						inputField	 : "element_5_3",
						baseField    : "element_5",
						displayArea  : "calendar_5",
						button		 : "cal_img_5",
						ifFormat	 : "%B %e, %Y",
						onSelect	 : selectDate
						});
					</script>
				 
				</li>		
				
				<li id="li_6" >
					<label class="description" for="COUT">Rate </label>
					<span class="symbol">$</span>
					<span>
						<input id="element_6_1" name="COUT" class="element text currency" size="10" value="<?php if(isset($_POST['Update'])){ echo $workshopToUpdate->COUT();} ?>" type="text" /> .		
						<label for="element_6_1">Dollars</label>
					</span>
					 
				</li>		
				
				<li id="li_7" >
				<label class="description" for="DEPOSIT">Deposit </label>
				<span class="symbol">$</span>
				<span>
					<input id="element_7_1" name="DEPOSIT" class="element text currency" size="10" value="<?php if(isset($_POST['Update'])){ echo $workshopToUpdate->DEPOSIT();} ?>" type="text" /> .		
					<label for="element_7_1">Dollars</label>
				</span>
				 
				</li>		<li id="li_8" >
				<label class="description" for="element_8">Image</label>
				<div>
				<select class="element select medium" id="element_8" name="ID_IMAGE">
					<option value="" selected="selected"></option>
					<?php
					foreach($images as $image)
					{
					?>
					<option value="<?php echo $image->ID_IMAGE(); ?>" <?php if(isset($_POST['Update'])){ if($workshopToUpdate->ID_IMAGE() == $image->ID_IMAGE()){?> selected="selected" <?php }} ?> ><?php echo $image->ALT() ?></option>
					<?php 
					}
					?>
				</select>
				</div> 
				</li>		<li id="li_9" >
				<label class="description" for="element_9">Video</label>
				<div>
				<select class="element select medium" id="element_9" name="ID_VIDEO"> 
					<option value="" selected="selected"></option>
					<?php
					foreach($videos as $video)
					{
					?>
					<option value="<?php echo $video->ID_VIDEO(); ?>" <?php if(isset($_POST['Update'])){ if($workshopToUpdate->ID_VIDEO() == $video->ID_VIDEO()){?> selected="selected" <?php }} ?> ><?php echo $video->DESCRIPTION(); ?></option>
					<?php
					}
					?>
				</select>
				</div> 
				</li>		<li id="li_10" >
				<label class="description" for="ID_UTILISATEUR">Coach</label>
				<div>
				<?php foreach($coaches as $coach)
				{
				?>
				<input <?php if(isset($_POST['Update'])){ if($workshopManager->isCoach($coach,$workshopToUpdate)){?> checked="checked" <?php } } ?> type="checkbox" name="coaches[]" value="<?php echo $coach->ID_UTILISATEUR(); ?>"/><?php echo $coach->PSEUDONYME(); ?><br/>
				<?php
				}
				?>
				
				</div> 
				</li>		<li id="li_11" >
				<label class="description" for="ADRESSE">Address </label>
				
				<div>
					<input id="element_11_1" name="ADRESSE" class="element text large" value="<?php if(isset($_POST['Update'])){ echo $workshopToUpdate->ADRESSE();} ?>" type="text"/>
					<label for="ADRESSE">Street Address</label>
				</div>
			
			
				<div class="left">
					<input id="element_11_3" name="VILLE" class="element text medium" value="<?php if(isset($_POST['Update'])){ echo $workshopToUpdate->VILLE();} ?>" type="text"/>
					<label for="VILLE">City</label>
				</div>
			
			
				<div class="right">
					<select class="element select medium" id="element_11_6" name="PAYS"> 
					<option value="" selected="selected"></option>
		<option value="Afghanistan" >Afghanistan</option>
		<option value="Albania" >Albania</option>
		<option value="Algeria" >Algeria</option>
		<option value="Andorra" >Andorra</option>
		<option value="Antigua and Barbuda" >Antigua and Barbuda</option>
		<option value="Argentina" >Argentina</option>
		<option value="Armenia" >Armenia</option>
		<option value="Australia" >Australia</option>
		<option value="Austria" >Austria</option>
		<option value="Azerbaijan" >Azerbaijan</option>
		<option value="Bahamas" >Bahamas</option>
		<option value="Bahrain" >Bahrain</option>
		<option value="Bangladesh" >Bangladesh</option>
		<option value="Barbados" >Barbados</option>
		<option value="Belarus" >Belarus</option>
		<option value="Belgium" >Belgium</option>
		<option value="Belize" >Belize</option>
		<option value="Benin" >Benin</option>
		<option value="Bhutan" >Bhutan</option>
		<option value="Bolivia" >Bolivia</option>
		<option value="Bosnia and Herzegovina" >Bosnia and Herzegovina</option>
		<option value="Botswana" >Botswana</option>
		<option value="Brazil" >Brazil</option>
		<option value="Brunei" >Brunei</option>
		<option value="Bulgaria" >Bulgaria</option>
		<option value="Burkina Faso" >Burkina Faso</option>
		<option value="Burundi" >Burundi</option>
		<option value="Cambodia" >Cambodia</option>
		<option value="Cameroon" >Cameroon</option>
		<option value="Canada" >Canada</option>
		<option value="Cape Verde" >Cape Verde</option>
		<option value="Central African Republic" >Central African Republic</option>
		<option value="Chad" >Chad</option>
		<option value="Chile" >Chile</option>
		<option value="China" >China</option>
		<option value="Colombia" >Colombia</option>
		<option value="Comoros" >Comoros</option>
		<option value="Congo" >Congo</option>
		<option value="Costa Rica" >Costa Rica</option>
		<option value="Côte d'Ivoire" >Côte d'Ivoire</option>
		<option value="Croatia" >Croatia</option>
		<option value="Cuba" >Cuba</option>
		<option value="Cyprus" >Cyprus</option>
		<option value="Czech Republic" >Czech Republic</option>
		<option value="Denmark" >Denmark</option>
		<option value="Djibouti" >Djibouti</option>
		<option value="Dominica" >Dominica</option>
		<option value="Dominican Republic" >Dominican Republic</option>
		<option value="East Timor" >East Timor</option>
		<option value="Ecuador" >Ecuador</option>
		<option value="Egypt" >Egypt</option>
		<option value="El Salvador" >El Salvador</option>
		<option value="Equatorial Guinea" >Equatorial Guinea</option>
		<option value="Eritrea" >Eritrea</option>
		<option value="Estonia" >Estonia</option>
		<option value="Ethiopia" >Ethiopia</option>
		<option value="Fiji" >Fiji</option>
		<option value="Finland" >Finland</option>
		<option value="France" >France</option>
		<option value="Gabon" >Gabon</option>
		<option value="Gambia" >Gambia</option>
		<option value="Georgia" >Georgia</option>
		<option value="Germany" >Germany</option>
		<option value="Ghana" >Ghana</option>
		<option value="Greece" >Greece</option>
		<option value="Grenada" >Grenada</option>
		<option value="Guatemala" >Guatemala</option>
		<option value="Guinea" >Guinea</option>
		<option value="Guinea-Bissau" >Guinea-Bissau</option>
		<option value="Guyana" >Guyana</option>
		<option value="Haiti" >Haiti</option>
		<option value="Honduras" >Honduras</option>
		<option value="Hong Kong" >Hong Kong</option>
		<option value="Hungary" >Hungary</option>
		<option value="Iceland" >Iceland</option>
		<option value="India" >India</option>
		<option value="Indonesia" >Indonesia</option>
		<option value="Iran" >Iran</option>
		<option value="Iraq" >Iraq</option>
		<option value="Ireland" >Ireland</option>
		<option value="Israel" >Israel</option>
		<option value="Italy" >Italy</option>
		<option value="Jamaica" >Jamaica</option>
		<option value="Japan" >Japan</option>
		<option value="Jordan" >Jordan</option>
		<option value="Kazakhstan" >Kazakhstan</option>
		<option value="Kenya" >Kenya</option>
		<option value="Kiribati" >Kiribati</option>
		<option value="North Korea" >North Korea</option>
		<option value="South Korea" >South Korea</option>
		<option value="Kuwait" >Kuwait</option>
		<option value="Kyrgyzstan" >Kyrgyzstan</option>
		<option value="Laos" >Laos</option>
		<option value="Latvia" >Latvia</option>
		<option value="Lebanon" >Lebanon</option>
		<option value="Lesotho" >Lesotho</option>
		<option value="Liberia" >Liberia</option>
		<option value="Libya" >Libya</option>
		<option value="Liechtenstein" >Liechtenstein</option>
		<option value="Lithuania" >Lithuania</option>
		<option value="Luxembourg" >Luxembourg</option>
		<option value="Macedonia" >Macedonia</option>
		<option value="Madagascar" >Madagascar</option>
		<option value="Malawi" >Malawi</option>
		<option value="Malaysia" >Malaysia</option>
		<option value="Maldives" >Maldives</option>
		<option value="Mali" >Mali</option>
		<option value="Malta" >Malta</option>
		<option value="Marshall Islands" >Marshall Islands</option>
		<option value="Mauritania" >Mauritania</option>
		<option value="Mauritius" >Mauritius</option>
		<option value="Mexico" >Mexico</option>
		<option value="Micronesia" >Micronesia</option>
		<option value="Moldova" >Moldova</option>
		<option value="Monaco" >Monaco</option>
		<option value="Mongolia" >Mongolia</option>
		<option value="Montenegro" >Montenegro</option>
		<option value="Morocco" >Morocco</option>
		<option value="Mozambique" >Mozambique</option>
		<option value="Myanmar" >Myanmar</option>
		<option value="Namibia" >Namibia</option>
		<option value="Nauru" >Nauru</option>
		<option value="Nepal" >Nepal</option>
		<option value="Netherlands" >Netherlands</option>
		<option value="New Zealand" >New Zealand</option>
		<option value="Nicaragua" >Nicaragua</option>
		<option value="Niger" >Niger</option>
		<option value="Nigeria" >Nigeria</option>
		<option value="Norway" >Norway</option>
		<option value="Oman" >Oman</option>
		<option value="Pakistan" >Pakistan</option>
		<option value="Palau" >Palau</option>
		<option value="Panama" >Panama</option>
		<option value="Papua New Guinea" >Papua New Guinea</option>
		<option value="Paraguay" >Paraguay</option>
		<option value="Peru" >Peru</option>
		<option value="Philippines" >Philippines</option>
		<option value="Poland" >Poland</option>
		<option value="Portugal" >Portugal</option>
		<option value="Puerto Rico" >Puerto Rico</option>
		<option value="Qatar" >Qatar</option>
		<option value="Romania" >Romania</option>
		<option value="Russia" >Russia</option>
		<option value="Rwanda" >Rwanda</option>
		<option value="Saint Kitts and Nevis" >Saint Kitts and Nevis</option>
		<option value="Saint Lucia" >Saint Lucia</option>
		<option value="Saint Vincent and the Grenadines" >Saint Vincent and the Grenadines</option>
		<option value="Samoa" >Samoa</option>
		<option value="San Marino" >San Marino</option>
		<option value="Sao Tome and Principe" >Sao Tome and Principe</option>
		<option value="Saudi Arabia" >Saudi Arabia</option>
		<option value="Senegal" >Senegal</option>
		<option value="Serbia and Montenegro" >Serbia and Montenegro</option>
		<option value="Seychelles" >Seychelles</option>
		<option value="Sierra Leone" >Sierra Leone</option>
		<option value="Singapore" >Singapore</option>
		<option value="Slovakia" >Slovakia</option>
		<option value="Slovenia" >Slovenia</option>
		<option value="Solomon Islands" >Solomon Islands</option>
		<option value="Somalia" >Somalia</option>
		<option value="South Africa" >South Africa</option>
		<option value="Spain" >Spain</option>
		<option value="Sri Lanka" >Sri Lanka</option>
		<option value="Sudan" >Sudan</option>
		<option value="Suriname" >Suriname</option>
		<option value="Swaziland" >Swaziland</option>
		<option value="Sweden" >Sweden</option>
		<option value="Switzerland" >Switzerland</option>
		<option value="Syria" >Syria</option>
		<option value="Taiwan" >Taiwan</option>
		<option value="Tajikistan" >Tajikistan</option>
		<option value="Tanzania" >Tanzania</option>
		<option value="Thailand" >Thailand</option>
		<option value="Togo" >Togo</option>
		<option value="Tonga" >Tonga</option>
		<option value="Trinidad and Tobago" >Trinidad and Tobago</option>
		<option value="Tunisia" >Tunisia</option>
		<option value="Turkey" >Turkey</option>
		<option value="Turkmenistan" >Turkmenistan</option>
		<option value="Tuvalu" >Tuvalu</option>
		<option value="Uganda" >Uganda</option>
		<option value="Ukraine" >Ukraine</option>
		<option value="United Arab Emirates" >United Arab Emirates</option>
		<option value="United Kingdom" >United Kingdom</option>
		<option value="United States" >United States</option>
		<option value="Uruguay" >Uruguay</option>
		<option value="Uzbekistan" >Uzbekistan</option>
		<option value="Vanuatu" >Vanuatu</option>
		<option value="Vatican City" >Vatican City</option>
		<option value="Venezuela" >Venezuela</option>
		<option value="Vietnam" >Vietnam</option>
		<option value="Yemen" >Yemen</option>
		<option value="Zambia" >Zambia</option>
		<option value="Zimbabwe" >Zimbabwe</option>
			
					</select>
				<label for="PAYS">Country</label>
			</div> 
				</li>
					
							<li class="buttons">
					    <input type="hidden" name="form_id" value="969584" />
					    
						<input id="saveForm" class="button_text" type="submit" name="<?php if(isset($_POST['Update'])){ echo "Update" ;}else{ echo "Add";} ?>" value="<?php if(isset($_POST['Update'])){ echo "Update this Workshop" ;}else{ echo "Create a workshop";} ?>" />

				</li>
			</ul>
		</form>	
	</div>
	<div id="workshops">
		<h2>Les Workshops</h2>
			<form method="post" action="traitementWorkshop.php">
				<?php
				if($workshops)
				{
					foreach($workshops as $workshop)
					{
					?>
					<div>
						<input type="checkbox" name="workshops[]" value="<?php echo $workshop->ID() ?>"/> <?php echo $workshop->TITRE(); ?>	
					</div>
					<?php
					}
				}
				?>
				<input type="submit" value="Supprimer"/>

			</form>
	</div>


		<div id="workshopsPhp">
			<h2>Php</h2>

			<?php 
			parcourirDossier('../Workshops','traitementWorkshop.php');
			?>
		</div>
		
		<div id="workshopsCss">
			<h2>CSS</h2>

			<?php
			parcourirDossier('../CSS/Workshops','traitementWorkshop.php');
			?>
		</div>
	
	<img id="bottom" src="bottom.png" alt=""/>
	
	<?php if(isset($_POST['Update'])){ ?>
	<script>
		
		var listePays = document.getElementById('element_11_6');
		var paysToUpdate = document.getElementById('paysToUpdate').getAttribute('value');
		for(var i = 0; i < listePays.options.length;i++)
		{
			if(listePays.options[i].getAttribute('value') == paysToUpdate)
			{
				listePays.options[i].selected = true;
			}
		}

		
		
	</script>
	<?php } ?>
	
	</body>
</html>
<?php
} 
else
{
redirectionVers('../index.php');
}
?>