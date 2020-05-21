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
<html lang="en">
<head>
	<!--<meta charset="UTF-8">-->
	<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
	<title>Examen de Inglés</title>
	
  <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="estilo.css">

	
</head>
<body>
  <div class="container mt-3">
	<header class="iniFin">

    <?php
      $username=$_SESSION["account_name"];
        include('../mvc/modelo.php');
        $Seani = new Seani(); 
        $idusuario=$Seani->obteneIdusuario($username);        
        $Nombre=$Seani->obteneNombreCompleto($idusuario);
        if($Seani->verificaExtadoExamen($idusuario, 3)=="disabled")
          echo '<script>window.location.assign("index.php");</script>';
    ?>

    <?php echo $Nombre["nombre"] ?>  

	</header>
	<div id="titulo">
	<div id="tit">English Exam</div>
	<div id="conTime">
		<ul>
			<li></li>
			<li id="tiempo">00:00:00</li>
		</ul>
	</div>
		
	</div>
	<div class="barra my-3"></div>
	<div id="pregunta">

		<?php 

    $response=$Seani->obtieneExamenIngles();

    $cuenta = $Seani->obtieneTotalPreguntasIngles();
			
		$tamBot=100/$cuenta;

		?>

<form method='post' id='quiz_form'>
      <input type="hidden"  value="<?php echo $idusuario ?>" name="id" id="id"  class="validate[required,minSize[3],maxSize[50],] medium"  />
<?php 

$varBot = "";

    while($result = $response->fetch_array()){ ?>
        <div id="question_<?php echo $result['id'];?>" class='questions'>
        
<?php 
  
    $prenguntaBD=$result['question_name'];
    $exten = substr($prenguntaBD,0,6);
    	//echo "<script>alert('".$exten."');</script>";

    if($exten=="im.png"){

      $agregar=$result['id'].". Select the correct option </h1>";
      //$agregar=$agregar."<img src='".$exten."' alt='imgen' width='60%'>";
      $agregar=$agregar."<h2>".substr($result['question_name'], 6)."</h2>";      
    }else{
      $agregar=$result['id'].".".$result['question_name']."</h2>";
      $agregar=$agregar."<h3 style='color:#F66800;'>Choose the best answer<h3>";
    }

 ?>


        <h1 id="question_<?php echo $result['in'];?>" class="mb-4"><?php echo $agregar; ?>
        <div class='align' <?php if($exten=="im.png"){echo "style='display:none;'";} ?>>
        <input type="radio" value="1" id='radio1_<?php echo $result['id'];?>' <?php if($exten!="im.png"){ echo "name='".$result['id']."'";} ?> class="detec">
        <label id='ans1_<?php echo $result['id'];?>' for='1'><?php echo $result['answer1'];?></label>
        <br/>
        <input type="radio" value="2" id='radio2_<?php echo $result['id'];?>' <?php if($exten!="im.png"){ echo "name='".$result['id']."'";} ?> class="detec">
        <label id='ans2_<?php echo $result['id'];?>' for='1'><?php echo $result['answer2'];?></label>
        <br/>
        <input type="radio" value="3" id='radio3_<?php echo $result['id'];?>' <?php if($exten!="im.png"){ echo "name='".$result['id']."'";} ?> class="detec">
        <label id='ans3_<?php echo $result['id'];?>' for='1'><?php echo $result['answer3'];?></label>
        <br/>
        <input type="radio" value="4" id='radio4_<?php echo $result['id'];?>' <?php if($exten!="im.png"){ echo "name='".$result['id']."'";} ?> class="detec">
        <label id='ans4_<?php echo $result['id'];?>' for='1'><?php echo $result['answer4'];?></label>
        <input type="radio" checked='checked' value="5" style='display:none' id='radio4_<?php echo $result['id'];?>' <?php if($exten!="im.png"){ echo "name='".$result['id']."'";} ?>>
        </div>
        <br/>
        </div>
<?php 

$varBot=$varBot."<button id='bot".$result['id']."' class='boton bun btn btn-sm'>".$result['id']."</button>";

} //cierra while

//echo '<div id="botones95">';
        //echo $varBot;
//        echo '</div>';

?>

<div id='result'>

<br/>
</div>

<br>

	</div>
	<div class="barra"></div>
	<br>
	<div class="iniFin"></div>
	<div id="navegacion" class="mt-3 row justify-content-center">
	
	<div id="botones" class="btn-group">
	
	<?php echo $varBot; ?>
	</div>
  </div>
  <div class="row justify-content-center">
	<div id="enviar" class="col-4 mt-3">
		<button id="next" class='btn btn-outline-success btn-block'">Enviar</button>
	</div>
  </div>
	</form>
</div>
	<script src="bootstrap/js/jquery-3.3.1.min.js"></script>
  <script src="bootstrap/js/bootstrap.min.js"></script>
  <script src="bootstrap/js/pooper.min.js"></script>
	<script src="js/watch.js"></script>
  <script language="JavaScript">function tecla(){}; document.onkeydown=tecla;</script>
  <script type="text/javascript" src="js/bloqueo.js"></script>
	<script>

	$(document).ready(function(){

    var respuestasSelect = '<option value="5"></option>'+
              '<option value="A">is not</option>'+
              '<option value="B">an</option>'+
              '<option value="C">like</option>'+
              '<option value="D">plays</option>'+
              '<option value="E">her</option>'+
              '<option value="F">touches</option>'+
              '<option value="G">does</option>'+
              '<option value="H">she</option>'+
              '<option value="I">are</option>'+
              '<option value="J">is</option>'+
              '<option value="K">be</option>'+
              '<option value="L">do</option>'+
              '<option value="M">do not</option>'+
              '<option value="N">father\'s</option>';

              $('.texto').append(respuestasSelect);
              $('.texto').addClass('form-control');
              $('.texto').addClass('mx-1');

		$('#tiempo').stopwatch().stopwatch('start');

		$('.questions').hide();
      $('#question_1').show();
      $('#bot1').addClass('actibot');

      $('.boton').click(function(e){
        e.preventDefault();
        var nom=$(this).attr("id");
        $('.boton').removeClass('actibot');
        $(this).addClass('actibot');
        //alert(nom.substring(1));
        var cad='#question_'+nom.substring(3);
       $('.questions').hide();
        $(cad).show();
      });

      $('#next').click(function(e){
        e.preventDefault();
        var aceptar=confirm("Ya terminaste tu examen??");
        if (aceptar){
          var otra=confirm("Estás seguro?");
          if(otra){
        submit();
      }
              }
      });

    function submit(){
	     $.ajax({
						type: "POST",
						url: "ajaxIn.php",
						data: $('form').serialize(),
						success: function(msg) {
						  $("#quiz_form,#demo1").addClass("hide");
						  $('#result').show();
						  $('#result').append(msg);
              alert("Datos Guardados");
              window.location.assign("index.php");
						}
	     });
	
	}

  /*$('.texto').blur(function(){    
    $(this).val($(this).val().toUpperCase().substring(0,1));
  });*/

  $('.detec').click(function(){
    var ultim=$(this).attr("id").substring(7);
    var boContes='#bot'+ultim;
    $(boContes).addClass('contestado');
  });

		setTimeout(function() {
	      submit();
	}, 3000000);

	});

	</script>

</body>
</html>