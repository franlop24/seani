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
?>

<!DOCTYPE html>
<html lang="es">
  <head>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8" />
    <meta itemprop="name" content="Examen de Adminsión Alumnos Nuevo Ingreso">
    <meta itemprop="description" content="Examen de Adminsión Alumnos Nuevo Ingreso">
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
    <link rel="icon" href="favicon.ico" type="image/ico">
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Istok+Web:400,700">
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/styles.css?v=2">
    <script language="JavaScript">function tecla(){alert('No permitido')}; document.onkeydown=tecla;</script>
    <script type="text/javascript" src="js/bloqueo.js"></script>	
    <script type="text/javascript" src="../js/jquery.min.js"></script>
    <link href="jquery-ui.css" rel="stylesheet">          
    <title>Sistema se Evaluación para los Alumnos de Nuevo Ingreso</title>
  </head>
  <body>
    <header>
      <h1><span class="logo">HTML5</span>Examen de Ingreso 2018</h1>
      <p>Examen para Evaluación para Alumnos de Nuevo Ingreso <a href="../salir.php" style="color:#FF6900 ">   &nbsp;    &nbsp;  &nbsp;  &nbsp;  &nbsp;  SALIR</a></p>       
    </header>
    <div id="intro">
                  
      <div id="header">
        <p>Bienvenido(a),  
                    <?php
                      $username=$_SESSION["account_name"]; 
                      include('../mvc/modelo.php');
                      $Seani = new Seani();	
                      $idusuario=$Seani->obteneIdusuario($username);
                      $Nombre=$Seani->obteneNombreCompleto($idusuario);
                      echo $Nombre["nombre"];

            //llamado a funciones para generar examen aleatorio por alumno

                      $exis=$Seani->verificaExisteExamen($idusuario);

                      if($exis==0){

                        // llenado de examen dinamico alumno
                      $Seani->ExamenExaniDinamicoPorAlumno($idusuario,103);

                      }

                      //consulta para habilitar deshabilitar los botones dependiendo del estado creado/comenzado/terminado

                    ?>  
        </p> 
    
        <h2>Instrucciones Generales</h2>
        <p>La evaluación que estas a punto de responder consta de 2 módulos correspondientes a las siguientes áreas: </p>
            
        <ul style="margin-left:40px">
          <li>Examen para Nuevo Ingreso</li>
          <li>Encuesta</li>
        </ul>
            
        <hr>
           <!-- <h2>Examen</h2>
            <p>-TIEMPO MAXIMO PARA CONTESTAR 2 HORAS 20 MINUTOS (una vez iniciada la Prueba).</p>
               </br>  
               -->    
        <p>Todas las preguntas son de opción Multiple: <b>Al seleccionar la Respuesta, esta se guardará</b></p>
        <br> 
        <p><span style="color:#FF6900 ">EJEMPLO:</span></p>

        <p>El iniciador de nuestra de nuestra Guerra de Independencia fue:</p>
        <p>A) Morelos B) Zaragoza C) Iturbide   <span style="color:#FF6900 ">D) Hidalgo</span></p>
 
        <a href="seani_exam.php"><button id="boton3" class="botonjq" style="width: 150px" <?php echo $Seani->verificaExtadoExamen($idusuario,1); ?>>SEANI</button></a>

        <a href="encuesta.php"><button id="boton4" class="botonjq" style="width: 150px" <?php echo $Seani->verificaExtadoExamen($idusuario,2); ?>>Encuesta</button></a>

        <a href="nivelaingles.php"><button id="boton4" class="botonjq" style="width: 150px" <?php echo $Seani->verificaExtadoExamen($idusuario,3); ?>>Inglés</button></a>
       
      </div>
     
      <footer>
        <div class="clearfix">
           &copy; Copyright 2016  All Rights Reserved Universidad Tecnológica de Tlaxcala 
          <!-- // copyright-->
        </div>
      </footer>
        
      <script src="jquery-ui.js"></script>
      <script>
        $(document).ready(function(){
          $('.botonjq').button();
        });
      </script>
  </body>
</html>
