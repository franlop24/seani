<?php
	session_start();
	if (!$_SESSION["account_name"]) {

	//    header('Location: ../index.php');
    echo '<script type="text/javascript">';
    echo 'alert("No has iniciado sesión' . $error . '");';
    echo 'window.location.assign("../index.php");';
    echo '</script>';
	} else if ($_SESSION["tipo_usuario"] != 1) {
    // create SESSION 
    echo '<script type="text/javascript">';
    echo 'alert("No tiene permiso acceder a esta zona' . $error . '");';
    echo 'window.location.assign("../index.php");';
    echo '</script>';
	} else if ($_SESSION["estatus"] == 2) {
    echo '<script type="text/javascript">';
    echo 'alert("No tiene permiso acceder a esta zona' . $error . '");';
    echo 'window.location.assign("../index.php");';
    echo '</script>';
	}
	ini_set('session.bug_compat_42', "0");
	ini_set('session.bug_compat_warn', "0");

	require_once '../config.php';
?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<title>SEANI 2018</title>
	<link href="../css/zice.style.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="../js/jquery.min.js"></script>
	<script type="text/javascript" src="../js/jquery.cycle.all.js"></script>
	<script type="text/javascript" src="../components/form/form.js"></script>
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <link href="jquery-ui.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  
	<style type="text/css">
		.demoHeaders {
			margin-top: 2em;
		}
		#dialog-link {
			padding: .4em 1em .4em 20px;
			text-decoration: none;
			position: relative;
		}
		#dialog-link span.ui-icon {
			margin: 0 5px 0 0;
			position: absolute;
			left: .2em;
			top: 50%;
			margin-top: -8px;
		}
		#icons {
			margin: 0;
			padding: 0;
		}
		#icons li {
			margin: 2px;
			position: relative;
			padding: 4px 0;
			cursor: pointer;
			float: left;
			list-style: none;
		}
		#icons span.ui-icon {
			float: left;
			margin: 0 4px;
		}
		.fakewindowcontain .ui-widget-overlay {
			position: absolute;
		}
		select {
			width: 200px;
		}
		html {
			background-image: none;
			}
		#versionBar {
			position: fixed;
			width: 100%;
			height: 40px;
			bottom: 0;
			left: 0;
			font-weight: bold;	
			text-align: center;
			line-height: 35px;
			background-image: url(images/top_bgrepeat.png);
		}
		.copyright{
			text-align:center; font-size:10px; color:#CCC;
		}
		.copyright a{
			color: #C9651C;
			text-decoration: none
		}    

		.carousel-inner > .item > img,
 		.carousel-inner > .item > a > img {
      		width: 70%;
      		margin: auto;
  		}
  		
  		.concentrado{
      		width: 100%;
      		height: 700px; 
      		border: solid 1px black;
      		margin: 0 auto 0 auto;
      		background-color: #eeee9b;
      		text-align: center;
    	}

    	body{
    		background-color: #dddddd;
    	}
	</style>
</head>
<body class="error">
	
	<!--

	área para encabezados, nombre del alumno y examen que se está contestando

	-->

	<?php
     	$username=$_SESSION["account_name"];
        include('../mvc/modelo.php');
        $Seani = new Seani();	
        $idusuario=$Seani->obteneIdusuario($username);        

        if($Seani->verificaExtadoExamen($idusuario,1)=="disabled")
        	echo '<script>window.location.assign("index.php");</script>';
    ?>
    
	<div style="position: fixed;width:100%;height: 50px;top:50px;left: 0;background-color: green;color:white;text-align: center;padding-top: 10px;">
		<span ><b>SEANI 2018:</b></span><span><?php $Nombre=$Seani->obteneNombreCompleto($idusuario); ?></span>
		
	<button id="envia" style="margin-left: 100px;">Presiona para Terminar</button>

	</div>

<div style="width: 100%;margin: 80px auto 0 auto;">
	<div class="container">
	<br>
  		<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <?php 
      		$Seani->itemsCarrusel($idusuario,1)
       ?>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">

      <?php 
      	$Seani->elementosSlide($idusuario,1);
       ?>

    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>  		
	</div>
</div>


	<div id="versionBar" >
   		 <div class="copyright" > &copy; Copyright 2016  All Rights Reserved <span class="tip"><a  href="http://www.uttlaxcala.edu.mx/" title="UTT" >Universidad Tecnológica de Tlaxcala</a> </span> 
    	</div>        
          <!-- // copyright-->
	</div>

<!--<script src="external/jquery/jquery.js"></script>-->
<script src="jquery-ui.js"></script>
<script>


$(document).ready(function(){

	$('#envia').button();

	$('#envia').click(function(e){
		e.preventDefault();
        var aceptar=confirm("Ya terminaste tu examen??");
        if (aceptar){
          var otra=confirm("Estás seguro?");
          if(otra){
			$.post('ajax.php',{
			opcion:2,
            idAlumnos:<?php echo $idusuario; ?>,
            idExamens:1
            },function(vregresado){
              alert(vregresado);
              window.location.assign("index.php");
        	});       
      	  }
        }
	});

	$('.radito').click(function(){

		$.post('ajax.php',{
			opcion:1,
            idAlumnos:<?php echo $idusuario; ?>,
            idPreguntas:$(this).attr("name"),
            idExamens:1,
            respuestas:$(this).val()
            },function(vregresado){
              //alert(vregresado);
        });

	});

	$('#myCarousel').carousel({
        interval: 60000
    });
$( ".radioset" ).buttonset();

$( "#dialog" ).dialog({
	autoOpen: false,
	width: 300,
	buttons: [
		{
			text: "Ok",
			click: function() {
				$( this ).dialog( "close" );
			}
		},
		{
			text: "Cancel",
			click: function() {
				$( this ).dialog( "close" );
			}
		}
	]
});

// Link to open the dialog
$( "#dialog-link" ).click(function( event ) {
	$( "#dialog" ).dialog( "open" );
	event.preventDefault();
});

// Hover states on the static widgets
$( "#dialog-link, #icons li" ).hover(
	function() {
		$( this ).addClass( "ui-state-hover" );
	},
	function() {
		$( this ).removeClass( "ui-state-hover" );
	}
);
    });
</script>
</body>
</html>