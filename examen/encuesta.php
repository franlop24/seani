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
	<!--<meta charset="UTF-8">-->
	<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
	<title>Encuesta</title>
	
  <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="estilo2.css">
  <style>
    div#pregunta .itemP{
      width: 90%;
      padding: 0 50px 0 50px;
      height: 600px;
      //display:none;
      margin:0 auto;
      text-align: center;
      //border:1px solid black;
      overflow: auto;
    }
    /*select{
      display: block;
      width: 300px;
      margin:5px auto 10px auto;
    }   */
  </style>

	<script language="JavaScript">function tecla(){}; document.onkeydown=tecla;</script>
  <script type="text/javascript" src="js/bloqueo.js"></script>

</head>
<body>
  <div class="container-fluid mt-3">
	<header class="iniFin">
	      
    <?php
     $username=$_SESSION["account_name"]; 
        include('../mvc/modelo.php');
        $Seani = new Seani();	
        $idusuario=$Seani->obteneIdusuario($username);
        $Nombre=$Seani->obteneNombreCompleto($idusuario);

        if($Seani->verificaExtadoExamen($idusuario,2)=="disabled")
          echo '<script>window.location.assign("index.php");</script>';
    ?>
    <?php echo $Nombre["nombre"] ?>  

	</header>
	<div id="titulo">
	<div id="tit">Encuesta</div>
  	<div id="conTime">
  		<ul>
  			<li></li>
  			<li id="tiempo">00:00:00</li>
  		</ul>
  	</div>
	</div>

	<div class="barra"></div>
	<div id="pregunta">

  <!--<br><center><input type="button" id='next' value='Enviar Examen' name='question' class='butt'/></center>-->

<br>
  <div id="d_1" class="itemP">
    <h2>1.- Fecha de Nacimiento</h2>
    <label for="dia_nac">Día</label>
    <select name="dia_nac" id="dia_nac">
      <?php 
        for($i=1;$i<=31;$i++){
          echo "<option value='".$i."'>".$i."</option>";
        }
       ?>
    </select>
    <label for="mes_nac">Mes</label>
    <select name="mes_nac" id="mes_nac">
      <option value="01">Enero</option>
      <option value="02">Febrero</option>
      <option value="03">Marzo</option>
      <option value="04">Abril</option>
      <option value="05">Mayo</option>
      <option value="06">Junio</option>
      <option value="07">Julio</option>
      <option value="08">Agosto</option>
      <option value="09">Septiembre</option>
      <option value="10">Octubre</option>
      <option value="11">Noviembre</option>
      <option value="12">Diciembre</option>
    </select>
    <label for="ano_nac">Año</label>
    <select name="ano_nac" id="ano_nac">
      <?php 
        for($i=1900;$i<=2099;$i++){
          echo "<option value='".$i."'>".$i."</option>";
        }
       ?>
    </select>
    
    <a href="#d_2" class="btn btn-success btn-lg">Siguiente</a>
  </div>

  <div id="d_2" class="itemP">
    <h2>2.- Sexo</h2>
    <label for="sexo">Sexo</label>
    <select name="sexo" id="sexo">
      <option value="1">Hombre</option>
      <option value="2">Mujer</option>
    </select> 
    <a href="#d_3" class="btn btn-success btn-lg">Siguiente</a>
  </div>

  <div id="d_3" class="itemP">
    <h2>3.- ¿En qué entidad nació?</h2>   
    <label for="enti_nac">Estado</label>
    <select name="enti_nac" id="enti_nac">
      <option value="01">Aguascalientes</option>
      <option value="02">Baja California</option>
      <option value="03">Baja California Sur</option>
      <option value="04">Campeche</option>
      <option value="05">Coahuila</option>
      <option value="06">Colima</option>
      <option value="07">Chiapas</option>
      <option value="08">Chihuahua</option>
      <option value="09">Distrito Federal</option>
      <option value="10">Durango</option>
      <option value="11">Guanajuato</option>
      <option value="12">Guerrero</option>
      <option value="13">Hidalgo</option>
      <option value="14">Jalisco</option>
      <option value="15">Estado de México</option>
      <option value="16">Michoacán</option>
      <option value="17">Morelos</option>
      <option value="18">Nayarit</option>
      <option value="19">Nuevo León</option>
      <option value="20">Oaxaca</option>
      <option value="21">Puebla</option>
      <option value="22">Querétaro</option>
      <option value="23">Quintana Roo</option>
      <option value="24">San Luis Potosí</option>
      <option value="25">Sinaloa</option>
      <option value="26">Sonora</option>
      <option value="27">Tabasco</option>
      <option value="28">Tamaulipas</option>
      <option value="29">Tlaxcala</option>
      <option value="30">Veracruz</option>
      <option value="31">Yucatán</option>
      <option value="32">Zacatecas</option>
      <option value="99">En el extragero</option>     
    </select>
    <a href="#d_4" class="btn btn-success btn-lg">Siguiente</a>
  </div>

  <div id="d_4" class="itemP">
    <div class="row">
      <div class="col-12">
        <h2>4.- ¿Enfrenta alguna de las siguientes condiciones?</h2>
      </div>
      <div class="col-4">
        <label for="imp_cam">Dificultad para Caminar</label>
        <select name="imp_cam" id="imp_cam">
          <option value="1">Sí</option>
          <option value="2">No</option>
        </select>
        <label for="imp_con">Problemas de Conducta</label>
        <select name="imp_con" id="imp_con">
          <option value="1">Sí</option>
          <option value="2">No</option>
        </select>
        <label for="imp_pdp">Problemas de Depresión</label>
        <select name="imp_pdp" id="imp_pdp">
          <option value="1">Sí</option>
          <option value="2">No</option>
        </select>
        <label for="imp_pab">Anorexia o Bulimia</label>
        <select name="imp_pab" id="imp_pab">
          <option value="1">Sí</option>
          <option value="2">No</option>
        </select>
      </div>
      <div class="col-4">
        <label for="imp_ecu">Dificultad para escuchar, aun a corta distancia</label>
        <select name="imp_ecu" id="imp_ecu">
          <option value="1">Sí</option>
          <option value="2">No</option>
        </select>
        <label for="imp_pan">Problemas de Ansiedad/Estrés</label>
        <select name="imp_pan" id="imp_pan">
          <option value="1">Sí</option>
          <option value="2">No</option>
        </select>
         <label for="imp_pat">Problemas de Atención</label>
          <select name="imp_pat" id="imp_pat">
            <option value="1">Sí</option>
            <option value="2">No</option>
          </select>
      </div>
      <div class="col-4">
        <label for="imp_ver">Problemas graves para ver, aun con lentes</label>
        <select name="imp_ver" id="imp_ver">
          <option value="1">Sí</option>
          <option value="2">No</option>
        </select>
        <label for="imp_pca">Problemas de Agresividad</label>
        <select name="imp_pca" id="imp_pca">
          <option value="1">Sí</option>
          <option value="2">No</option>
        </select>
         <label for="imp_pob">Obesidad</label>
          <select name="imp_pob" id="imp_pob">
            <option value="1">Sí</option>
            <option value="2">No</option>
          </select>
      </div>
    </div>
    <div class="col-12">
      <a href="#d_5" class="btn btn-success btn-lg">Siguiente</a>
    </div>
  </div>

  <div id="d_5" class="itemP">
    <h3>5.- ¿Alguno de sus padres habla una lengua indígena o un dialecto?</h3>
    <label for="li_mad">Madre</label>
    <select name="li_mad" id="li_mad">
      <option value="1">Sí</option>
      <option value="2">No</option>
      <option value="3">No sé</option>
    </select>
    <label for="li_pad">Padre</label>
    <select name="li_pad" id="li_pad">
      <option value="1">Sí</option>
      <option value="2">No</option>
      <option value="3">No sé</option>
    </select>
    <a href="#d_6" class="btn btn-success btn-lg">Siguiente</a>
  </div>

  <div id="d_6" class="itemP">
    <h3>6.- ¿En qué entidad concluyó el nivel medio superior?</h3>
    <label for="edo_proc">Estado</label>
    <select name="edo_proc" id="edo_proc">
      <option value="01">Aguascalientes</option>
      <option value="02">Baja California</option>
      <option value="03">Baja California Sur</option>
      <option value="04">Campeche</option>
      <option value="05">Coahuila</option>
      <option value="06">Colima</option>
      <option value="07">Chiapas</option>
      <option value="08">Chihuahua</option>
      <option value="09">Distrito Federal</option>
      <option value="10">Durango</option>
      <option value="11">Guanajuato</option>
      <option value="12">Guerrero</option>
      <option value="13">Hidalgo</option>
      <option value="14">Jalisco</option>
      <option value="15">Estado de México</option>
      <option value="16">Michoacán</option>
      <option value="17">Morelos</option>
      <option value="18">Nayarit</option>
      <option value="19">Nuevo León</option>
      <option value="20">Oaxaca</option>
      <option value="21">Puebla</option>
      <option value="22">Querétaro</option>
      <option value="23">Quintana Roo</option>
      <option value="24">San Luis Potosí</option>
      <option value="25">Sinaloa</option>
      <option value="26">Sonora</option>
      <option value="27">Tabasco</option>
      <option value="28">Tamaulipas</option>
      <option value="29">Tlaxcala</option>
      <option value="30">Veracruz</option>
      <option value="31">Yucatán</option>
      <option value="32">Zacatecas</option>
      <option value="99">En el extragero</option>     
    </select>
    <a href="#d_7" class="btn btn-success btn-lg">Siguiente</a>
  </div>

  <div id="d_7" class="itemP">
    <h3>7.- ¿Cuándo cursó la última materia del nivel medio superior?</h3>
    <label for="mes_cur">Mes</label>
    <select name="mes_cur" id="mes_cur">
      <option value="01">Enero</option>
      <option value="02">Febrero</option>
      <option value="03">Marzo</option>
      <option value="04">Abril</option>
      <option value="05">Mayo</option>
      <option value="06">Junio</option>
      <option value="07">Julio</option>
      <option value="08">Agosto</option>
      <option value="09">Septiembre</option>
      <option value="10">Octubre</option>
      <option value="11">Noviembre</option>
      <option value="12">Diciembre</option>
    </select>
    <label for="ano_cur">Año</label>
    <select name="ano_cur" id="ano_cur">
      <?php 
        for($i=1900;$i<=2099;$i++){
          echo "<option value='".$i."'>".$i."</option>";
        }
       ?>
    </select>
    <a href="#d_8" class="btn btn-success btn-lg">Siguiente</a>
  </div>

  <div id="d_8" class="itemP">
    <h3>8.- ¿Cuál es el régimen de sostenimiento de la escuela en la que estudió el nivel medio superior?</h3>
    <select name="res_proc" id="res_proc">
      <option value="1">Público</option>
      <option value="2">Privado</option>
    </select>
    <a href="#d_9" class="btn btn-success btn-lg">Siguiente</a>
  </div>

  <div id="d_9" class="itemP">
    <h3>9.- ¿En qué modalidad estudió el último año del nivel medio superior?</h3>
    <select name="mod_bac" id="mod_bac">
      <option value="1">Bachillerato General</option>
      <option value="2">Bachillerato Tecnológico</option>
      <option value="3">Profesional Técnico</option>
      <option value="4">Bachillerato Intercultural (bilingüe indígena)</option>
      <option value="5">Bachillerato Internacional</option>
      <option value="6">Telebachillerato</option>
      <option value="7">Telebachillerato comunitario</option>
    </select>
    <a href="#d_10" class="btn btn-success btn-lg">Siguiente</a>
  </div>

  <div id="d_10" class="itemP">
    <h3>10.- ¿En qué sistema estudió el último año del nivel medio superior?</h3>
    <select name="sis_nms" id="sis_nms">
      <option value="1">Escolarizado</option>
      <option value="2">Abierto</option>
      <option value="3">A distancia</option>
    </select>
    <a href="#d_11" class="btn btn-success btn-lg">Siguiente</a>
  </div>

  <div id="d_11" class="itemP">
    <h3>11.- ¿En qué turno estudió el último año del nivel medio superior?</h3>
    <select name="turno" id="turno">
      <option value="1">Matutino</option>
      <option value="2">Vespertino</option>
      <option value="3">Nocturno</option>
      <option value="4">Mixto</option>
      <option value="5">Sin turno (Acuerdo 286, para adultos o INEA, sistema abierto)</option>
    </select>
    <a href="#d_12" class="btn btn-success btn-lg">Siguiente</a>
  </div>

  <div id="d_12" class="itemP">
    <h3>12.- ¿Cuál fue su promedio final del nivel medio superior?</h3>
    <select name="prom_bac" id="prom_bac">
      <option value="1">6.0 - 6.4</option>
      <option value="2">6.5 - 6.9</option>
      <option value="3">7.0 - 7.4</option>
      <option value="4">7.5 - 7.9</option>
      <option value="5">8.0 - 8.4</option>
      <option value="6">8.5 - 8.9</option>
      <option value="7">9.0 - 9.4</option>
      <option value="8">9.5 - 9.9</option>
      <option value="9">10</option>
    </select>
    <a href="#d_13" class="btn btn-success btn-lg">Siguiente</a>
  </div>

  <div id="d_13" class="itemP">
    <h3>13.- ¿Recibió beca por necesidad económica en el nivel medio superior?</h3>
    <select name="bec_nec" id="bec_nec">
      <option value="1">Sí</option>
      <option value="2">No</option>
    </select>
    <a href="#d_14" class="btn btn-success btn-lg">Siguiente</a>
  </div>

  <div id="d_14" class="itemP">
    <h3>14.- ¿Cuántos exámenes extraordinarios presentó en el nivel medio superior?</h3>
    <select name="exa_ext" id="exa_ext">
      <option value="1">Ninguno</option>
      <option value="2">1</option>
      <option value="3">2</option>
      <option value="4">3</option>
      <option value="5">4</option>
      <option value="6">5</option>
      <option value="7">6 o más</option>
    </select>
    <a href="#d_15" class="btn btn-success btn-lg">Siguiente</a>
  </div>

  <div id="d_15" class="itemP">
    <h3>15.- ¿Cuántas materias reprobó en el nivel medio superior?</h3>
    <select name="mat_rep" id="mat_rep">
      <option value="1">Ninguno</option>
      <option value="2">1</option>
      <option value="3">2</option>
      <option value="4">3</option>
      <option value="5">4</option>
      <option value="6">5</option>
      <option value="7">6 o más</option>
    </select>
    <a href="#d_16" class="btn btn-success btn-lg">Siguiente</a>
  </div>

  <div id="d_16" class="itemP">
    <div class="row">
      <div class="col-12">
        <h3>¿Con qué frecuencia realiza lo siguiente?</h3>
      </div>
      <div class="col-6">
        <label for="fre_fcl">Falto a clases</label>
        <select name="fre_fcl" id="fre_fcl">
          <option value="1">Nunca o Casi Nunca</option>
          <option value="2">Algunas Veces</option>
          <option value="3">Frecuentemente</option>
          <option value="4">Siempre o casi siempre</option>
        </select>
        <label for="fre_dte">Dedico tiempo a estudiar fuera de la escuela</label>
        <select name="fre_dte" id="fre_dte">
          <option value="1">Nunca o Casi Nunca</option>
          <option value="2">Algunas Veces</option>
          <option value="3">Frecuentemente</option>
          <option value="4">Siempre o casi siempre</option>
        </select>
        <label for="fre_pdc">Participo durante la clase</label>
        <select name="fre_pdc" id="fre_pdc">
          <option value="1">Nunca o Casi Nunca</option>
          <option value="2">Algunas Veces</option>
          <option value="3">Frecuentemente</option>
          <option value="4">Siempre o casi siempre</option>
        </select>
      </div>
      <div class="col-6">
        <label for="fre_lltm">Llevo todos los materiales que utilizo en las clases (libros, cuadernos, lápices, etc.)</label>
        <select name="fre_lltm" id="fre_lltm">
          <option value="1">Nunca o Casi Nunca</option>
          <option value="2">Algunas Veces</option>
          <option value="3">Frecuentemente</option>
          <option value="4">Siempre o casi siempre</option>
        </select>
        <label for="fre_ette">Entrego a tiempo las tareas que me dejan en la escuela</label>
        <select name="fre_ette" id="fre_ette">
          <option value="1">Nunca o Casi Nunca</option>
          <option value="2">Algunas Veces</option>
          <option value="3">Frecuentemente</option>
          <option value="4">Siempre o casi siempre</option>
        </select>
      </div>
      <div class="col-12">    
          <a href="#d_17" class="btn btn-success btn-lg">Siguiente</a>
        </div>
    </div>
  </div>

  <div id="d_17" class="itemP">
    <div class="row">
      <div class="col-12">        
        <h3>17.- ¿Con qué frecuencia realiza lo siguiente cuando trabaja en equipo?</h3>
      </div>
      <div class="col-6">
        <label for="fre_ppa">Participo en la planeación de las actividades</label>
        <select name="fre_ppa" id="fre_ppa">
          <option value="1">Nunca o Casi Nunca</option>
          <option value="2">Algunas Veces</option>
          <option value="3">Frecuentemente</option>
          <option value="4">Siempre o casi siempre</option>
        </select>
        <label for="fre_tsc">Intervengo para tratar de solucionar conflictos entre los miembros del equipo</label>
        <select name="fre_tsc" id="fre_tsc">
          <option value="1">Nunca o Casi Nunca</option>
          <option value="2">Algunas Veces</option>
          <option value="3">Frecuentemente</option>
          <option value="4">Siempre o casi siempre</option>
        </select>
        <label for="fre_crt">Cumplo con las tareas que me toca realizar</label>
        <select name="fre_crt" id="fre_crt">
          <option value="1">Nunca o Casi Nunca</option>
          <option value="2">Algunas Veces</option>
          <option value="3">Frecuentemente</option>
          <option value="4">Siempre o casi siempre</option>
        </select>
      </div>
      <div class="col-6">
        <label for="fre_cde">Colaboro en el desarrollo de estrategias para cumplir con las metas del trabajo</label>
        <select name="fre_cde" id="fre_cde">
          <option value="1">Nunca o Casi Nunca</option>
          <option value="2">Algunas Veces</option>
          <option value="3">Frecuentemente</option>
          <option value="4">Siempre o casi siempre</option>
        </select>
        <label for="fre_sme">Realizo sugerencias para mejorar el desempeño del equipo</label>
        <select name="fre_sme" id="fre_sme">
          <option value="1">Nunca o Casi Nunca</option>
          <option value="2">Algunas Veces</option>
          <option value="3">Frecuentemente</option>
          <option value="4">Siempre o casi siempre</option>
        </select>
      </div>
      <div class="col-12">
        <a href="#d_18" class="btn btn-success btn-lg">Siguiente</a>
      </div>
    </div>
  </div>

  <div id="d_18" class="itemP">
    <h3>18.- ¿Con qué frecuencia cuenta con una persona para…</h3>
    <label for="per_hqp">hablar de lo que le pasa?</label>
    <select name="per_hqp" id="per_hqp">
      <option value="1">Nunca o Casi Nunca</option>
      <option value="2">Algunas Veces</option>
      <option value="3">Frecuentemente</option>
      <option value="4">Siempre o casi siempre</option>
    </select>
    <label for="per_aet">apoyarlo cuando está triste, enojado(a) o alterado(a)?</label>
    <select name="per_aet" id="per_aet">
      <option value="1">Nunca o Casi Nunca</option>
      <option value="2">Algunas Veces</option>
      <option value="3">Frecuentemente</option>
      <option value="4">Siempre o casi siempre</option>
    </select>
    <label for="per_arp">ayudarlo a resolver sus problemas?</label>
    <select name="per_arp" id="per_arp">
      <option value="1">Nunca o Casi Nunca</option>
      <option value="2">Algunas Veces</option>
      <option value="3">Frecuentemente</option>
      <option value="4">Siempre o casi siempre</option>
    </select>
    <label for="per_cdt">que le dé consejos para tomar una decisión importante que afectará tu futuro?</label>
    <select name="per_cdt" id="per_cdt">
      <option value="1">Nunca o Casi Nunca</option>
      <option value="2">Algunas Veces</option>
      <option value="3">Frecuentemente</option>
      <option value="4">Siempre o casi siempre</option>
    </select>
    <a href="#d_19" class="btn btn-success btn-lg">Siguiente</a>
  </div>

  <div id="d_19" class="itemP">
    <div class="row">
      <div class="col-12">
        <h3>19.- Indique qué tanto se identifica con las siguientes afirmaciones:</h3>
      </div>
      <div class="col-6">
        <label for="ide_ese">Si me esfuerzo lo suficiente, tendré éxito en la escuela</label>
        <select name="ide_ese" id="ide_ese">
          <option value="1">No me identifico</option>
          <option value="2">Me identifico poco</option>
          <option value="3">Me identifico</option>
          <option value="4">Me identifico Totalmente</option>
        </select>
        <label for="ide_vbm">El que me vaya bien o mal en la escuela depende totalmente de mí</label>
        <select name="ide_vbm" id="ide_vbm">
          <option value="1">No me identifico</option>
          <option value="2">Me identifico poco</option>
          <option value="3">Me identifico</option>
          <option value="4">Me identifico Totalmente</option>
        </select>
        <label for="ide_ces">Mis calificaciones en la escuela se deben a la suerte que tengo</label>
          <select name="ide_ces" id="ide_ces">
            <option value="1">No me identifico</option>
            <option value="2">Me identifico poco</option>
            <option value="3">Me identifico</option>
            <option value="4">Me identifico Totalmente</option>
          </select>
          <label for="ide_cec">Mis calificaciones en la escuela se deben a cosas que no puedo cambiar</label>
          <select name="ide_cec" id="ide_cec">
            <option value="1">No me identifico</option>
            <option value="2">Me identifico poco</option>
            <option value="3">Me identifico</option>
            <option value="4">Me identifico Totalmente</option>
          </select>
        </div>
        <div class="col-6">
          <label for="ide_ome">Si tuviera otros maestros me iría mejor en la escuela</label>
          <select name="ide_ome" id="ide_ome">
            <option value="1">No me identifico</option>
            <option value="2">Me identifico poco</option>
            <option value="3">Me identifico</option>
            <option value="4">Me identifico Totalmente</option>
          </select>
          <label for="ide_ppm">Si me lo propongo, me va mejor en la escuela</label>
          <select name="ide_ppm" id="ide_ppm">
            <option value="1">No me identifico</option>
            <option value="2">Me identifico poco</option>
            <option value="3">Me identifico</option>
            <option value="4">Me identifico Totalmente</option>
          </select>
          <label for="ide_fam">Si mi familia me apoyara más, me iría mejor en la escuela</label>
          <select name="ide_fam" id="ide_fam">
            <option value="1">No me identifico</option>
            <option value="2">Me identifico poco</option>
            <option value="3">Me identifico</option>
            <option value="4">Me identifico Totalmente</option>
          </select>
        </div>
        <div class="col-12">
          <a href="#d_20" class="btn btn-success btn-lg">Siguiente</a>
        </div>
    </div>
  </div>

  <div id="d_20" class="itemP">
    <h3>20.- Indique qué tanto le describen las siguientes afirmaciones:</h3>
    <label for="des_desa">Los problemas inesperados me desaniman</label>
    <select name="des_desa" id="des_desa">
      <option value="1">No me describe</option>
      <option value="2">Me describe poco</option>
      <option value="3">Me describe</option>
      <option value="4">me describe mucho</option>
    </select>
    <label for="des_esme">Soy una persona que se esmera</label>
    <select name="des_esme" id="des_esme">
      <option value="1">No me describe</option>
      <option value="2">Me describe poco</option>
      <option value="3">Me describe</option>
      <option value="4">me describe mucho</option>
    </select>
    <label for="des_term">Termino todo lo que empiezo</label>
    <select name="des_term" id="des_term">
      <option value="1">No me describe</option>
      <option value="2">Me describe poco</option>
      <option value="3">Me describe</option>
      <option value="4">me describe mucho</option>
    </select>
    <label for="des_duro">Soy una persona que trabaja duro</label>
    <select name="des_duro" id="des_duro">
      <option value="1">No me describe</option>
      <option value="2">Me describe poco</option>
      <option value="3">Me describe</option>
      <option value="4">me describe mucho</option>
    </select>
    <a href="#d_21" class="btn btn-success btn-lg">Siguiente</a>
  </div>

  <div id="d_21" class="itemP">
    <h3>21.- Califique su nivel de habilidad social para realizar las siguientes actividades:</h3>
    <label for="soc_ptfg">Presentar un trabajo frente a un grupo</label>
    <select name="soc_ptfg" id="soc_ptfg">
      <option value="1">No lo sé hacer</option>
      <option value="2">Poco hábil</option>
      <option value="3">Hábil</option>
      <option value="4">Muy hábil</option>
    </select>
    <label for="soc_imc">Iniciar y mantener una conversación con compañeros que no conoces</label>
    <select name="soc_imc" id="soc_imc">
      <option value="1">No lo sé hacer</option>
      <option value="2">Poco hábil</option>
      <option value="3">Hábil</option>
      <option value="4">Muy hábil</option>
    </select>
    <label for="soc_pdc">Participar durante las clases</label>
    <select name="soc_pdc" id="soc_pdc">
      <option value="1">No lo sé hacer</option>
      <option value="2">Poco hábil</option>
      <option value="3">Hábil</option>
      <option value="4">Muy hábil</option>
    </select>
    <label for="soc_pdm">Plantear dudas a los maestros</label>
    <select name="soc_pdm" id="soc_pdm">
      <option value="1">No lo sé hacer</option>
      <option value="2">Poco hábil</option>
      <option value="3">Hábil</option>
      <option value="4">Muy hábil</option>
    </select>
    <a href="#d_22" class="btn btn-success btn-lg">Siguiente</a>
  </div>

  <div id="d_22" class="itemP">
    <h3>22.- ¿Con qué frecuencia le ocurre lo siguiente?</h3>
    <label for="ocu_exv">A las personas les cuesta trabajo entender lo que trato de expresar verbalmente</label>
    <select name="ocu_exv" id="ocu_exv">
      <option value="1">Nunca o casi nunca</option>
      <option value="2">Algunas veces</option>
      <option value="3">Frecuentemente</option>
      <option value="4">Siempre o casi siempre</option>
    </select>
    <label for="ocu_dde">Cuando quiero expresar una idea importante doy demasiadas explicaciones (no voy al grano)</label>
    <select name="ocu_dde" id="ocu_dde">
      <option value="1">Nunca o casi nunca</option>
      <option value="2">Algunas veces</option>
      <option value="3">Frecuentemente</option>
      <option value="4">Siempre o casi siempre</option>
    </select>
    <label for="ocu_nep">Cuando no entiendo lo que una persona está diciendo, me da pena pedir que me lo expliquen</label>
    <select name="ocu_nep" id="ocu_nep">
      <option value="1">Nunca o casi nunca</option>
      <option value="2">Algunas veces</option>
      <option value="3">Frecuentemente</option>
      <option value="4">Siempre o casi siempre</option>
    </select>
    <label for="ocu_pcc">Pierdo el control cuando recibo críticas sobre mis opiniones</label>
    <select name="ocu_pcc" id="ocu_pcc">
      <option value="1">Nunca o casi nunca</option>
      <option value="2">Algunas veces</option>
      <option value="3">Frecuentemente</option>
      <option value="4">Siempre o casi siempre</option>
    </select>
    <label for="ocu_pae">Siento que las personas se aburren cuando expongo un trabajo</label>
    <select name="ocu_pae" id="ocu_pae">
      <option value="1">Nunca o casi nunca</option>
      <option value="2">Algunas veces</option>
      <option value="3">Frecuentemente</option>
      <option value="4">Siempre o casi siempre</option>
    </select>
    <a href="#d_23" class="btn btn-success btn-lg">Siguiente</a>
  </div>

  <div id="d_23" class="itemP">
    <h3>23.- Califique su nivel de habilidad para realizar las siguientes actividades:</h3>
    <label for="act_dtd">Defender sus derechos</label>
    <select name="act_dtd" id="act_dtd">
      <option value="1">No lo sé hacer</option>
      <option value="2">Poco hábil</option>
      <option value="3">Hábil</option>
      <option value="4">Muy hábil</option>
    </select>
    <label for="act_eod">Expresar sus opiniones, aunque sean diferentes a las que se mencionan en el grupo</label>
    <select name="act_eod" id="act_eod">
      <option value="1">No lo sé hacer</option>
      <option value="2">Poco hábil</option>
      <option value="3">Hábil</option>
      <option value="4">Muy hábil</option>
    </select>
    <label for="act_dca">Defenderse cuando alguien lo acusó de algo que no hizo</label>
    <select name="act_dca" id="act_dca">
      <option value="1">No lo sé hacer</option>
      <option value="2">Poco hábil</option>
      <option value="3">Hábil</option>
      <option value="4">Muy hábil</option>
    </select>
    <label for="act_erc">Expresar las razones de su comportamiento cuando lo considera pertinente</label>
    <select name="act_erc" id="act_erc">
      <option value="1">No lo sé hacer</option>
      <option value="2">Poco hábil</option>
      <option value="3">Hábil</option>
      <option value="4">Muy hábil</option>
    </select>
    <a href="#d_24" class="btn btn-success btn-lg">Siguiente</a>
  </div>

  <div id="d_24" class="itemP">
    <div class="row">
      <div class="col-12">
        <h3>24.- Califique su nivel de habilidad para realizar las siguientes actividades:</h3>
      </div>
      <div class="col-6">
        <label for="hab_eto">Evaluar sus opiniones y las de otras personas</label>
        <select name="hab_eto" id="hab_eto">
          <option value="1">No lo sé hacer</option>
          <option value="2">Poco hábil</option>
          <option value="3">Hábil</option>
          <option value="4">Muy hábil</option>
        </select>
           <label for="hab_aea">Apreciar el arte (como la música, la danza y la pintura)</label>
        <select name="hab_aea" id="hab_aea">
          <option value="1">No lo sé hacer</option>
          <option value="2">Poco hábil</option>
          <option value="3">Hábil</option>
          <option value="4">Muy hábil</option>
        </select>
        <label for="hab_etiv">Expresar sus ideas verbalmente (de manera oral)</label>
        <select name="hab_etiv" id="hab_etiv">
          <option value="1">No lo sé hacer</option>
          <option value="2">Poco hábil</option>
          <option value="3">Hábil</option>
          <option value="4">Muy hábil</option>
        </select>
        <label for="hab_tevs">Tener un estilo de vida saludable (hacer ejercicio, comer sanamente)</label>
        <select name="hab_tevs" id="hab_tevs">
          <option value="1">No lo sé hacer</option>
          <option value="2">Poco hábil</option>
          <option value="3">Hábil</option>
          <option value="4">Muy hábil</option>
        </select>
         <label for="est_alca">¿Cuál es el nivel máximo de estudios que le gustaría alcanzar?</label>
        <select name="est_alca" id="est_alca">
          <option value="1">Técnico Superior Universitario</option>
          <option value="2">Licenciatura</option>
          <option value="3">Posgrado (especialidad, maestría, doctorado)</option>
        </select>
      </div>
      <div class="col-6">
         <label for="hab_dam">Identificar las dificultades para alcanzar sus metas</label>
          <select name="hab_dam" id="hab_dam">
            <option value="1">No lo sé hacer</option>
            <option value="2">Poco hábil</option>
            <option value="3">Hábil</option>
            <option value="4">Muy hábil</option>
          </select>
          <label for="hab_rel">Realizar experimentos en laboratorios o en ambientes naturales</label>
          <select name="hab_rel" id="hab_rel">
            <option value="1">No lo sé hacer</option>
            <option value="2">Poco hábil</option>
            <option value="3">Hábil</option>
            <option value="4">Muy hábil</option>
          </select>
          <label for="hab_mhc">Manejar hojas de cálculo (como excel)</label>
          <select name="hab_mhc" id="hab_mhc">
            <option value="1">No lo sé hacer</option>
            <option value="2">Poco hábil</option>
            <option value="3">Hábil</option>
            <option value="4">Muy hábil</option>
          </select>
           <label for="hab_ioa">Identificar el objetivo de las actividades que le dejan en la escuela</label>
        <select name="hab_ioa" id="hab_ioa">
          <option value="1">No lo sé hacer</option>
          <option value="2">Poco hábil</option>
          <option value="3">Hábil</option>
          <option value="4">Muy hábil</option>
        </select>

      </div>
      <div class="col-12">
        
        <label for="hab_dap">Dialogar y aprender de otras personas distintos puntos de vista y tradiciones culturales</label>
          <select name="hab_dap" id="hab_dap">
            <option value="1">No lo sé hacer</option>
            <option value="2">Poco hábil</option>
            <option value="3">Hábil</option>
            <option value="4">Muy hábil</option>
          </select>
        <label for="hab_sal">Identificar y solicitar la aplicación de las leyes que lo protegen como ciudadano(a)</label>
        <select name="hab_sal" id="hab_sal">
          <option value="1">No lo sé hacer</option>
          <option value="2">Poco hábil</option>
          <option value="3">Hábil</option>
          <option value="4">Muy hábil</option>
        </select>
      </div>
      <div class="col-4">
        <label for="hab_oif">Ordenar información</label>
        <select name="hab_oif" id="hab_oif">
          <option value="1">No lo sé hacer</option>
          <option value="2">Poco hábil</option>
          <option value="3">Hábil</option>
          <option value="4">Muy hábil</option>
        </select>
        <label for="hab_lti">Leer textos en inglés</label>
        <select name="hab_lti" id="hab_lti">
          <option value="1">No lo sé hacer</option>
          <option value="2">Poco hábil</option>
          <option value="3">Hábil</option>
          <option value="4">Muy hábil</option>
        </select>
      </div>
      <div class="col-4">
        <label for="hab_apm">Aprender por usted mismo(a)</label>
        <select name="hab_apm" id="hab_apm">
          <option value="1">No lo sé hacer</option>
          <option value="2">Poco hábil</option>
          <option value="3">Hábil</option>
          <option value="4">Muy hábil</option>
        </select>
        <label for="hab_eti">Expresar sus ideas en un escrito</label>
          <select name="hab_eti" id="hab_eti">
            <option value="1">No lo sé hacer</option>
            <option value="2">Poco hábil</option>
            <option value="3">Hábil</option>
            <option value="4">Muy hábil</option>
          </select>
      </div>
      <div class="col-4">
        <label for="hab_cma">Cuidar el medio ambiente</label>
        <select name="hab_cma" id="hab_cma">
          <option value="1">No lo sé hacer</option>
          <option value="2">Poco hábil</option>
          <option value="3">Hábil</option>
          <option value="4">Muy hábil</option>
        </select>
        <label for="hab_ptae">Planear sus actividades escolares</label>
        <select name="hab_ptae" id="hab_ptae">
          <option value="1">No lo sé hacer</option>
          <option value="2">Poco hábil</option>
          <option value="3">Hábil</option>
          <option value="4">Muy hábil</option>
        </select>
      </div>
      <div class="col-12">
        <a href="#d_25" class="btn btn-success btn-lg">Siguiente</a>         
      </div>
    </div>
  </div>

  <div id="d_25" class="itemP">
    <div class="row">
      <div class="col-12">
        <h3>25.- ¿Le interesaría recibir orientación o apoyo sobre los siguientes temas?</h3>    
      </div>
      <div class="col-4">
        <label for="ori_aue">Autoestima</label>
        <select name="ori_aue" id="ori_aue">
          <option value="1">Sí</option>
          <option value="2">No</option>
        </select>
        <label for="ori_cme">Control de miedos</label>
        <select name="ori_cme" id="ori_cme">
          <option value="1">Sí</option>
          <option value="2">No</option>
        </select>
        <label for="ori_esx">Educación sexual</label>
        <select name="ori_esx" id="ori_esx">
          <option value="1">Sí</option>
          <option value="2">No</option>
        </select>
      </div>
      <div class="col-4">
        <label for="ori_hso">Habilidades sociales</label>
        <select name="ori_hso" id="ori_hso">
          <option value="1">Sí</option>
          <option value="2">No</option>
        </select>
        <label for="ori_mdp">Manejo de depresión</label>
        <select name="ori_mdp" id="ori_mdp">
          <option value="1">Sí</option>
          <option value="2">No</option>
        </select>
        <label for="ori_mes">Manejo de ansiedad/estrés</label>
        <select name="ori_mes" id="ori_mes">
          <option value="1">Sí</option>
          <option value="2">No</option>
        </select>
      </div>
      <div class="col-4">
        <label for="ori_mag">Manejo de la agresividad</label>
        <select name="ori_mag" id="ori_mag">
          <option value="1">Sí</option>
          <option value="2">No</option>
        </select>
        <label for="ori_nut">Alimentación saludable (nutrición)</label>
        <select name="ori_nut" id="ori_nut">
          <option value="1">Sí</option>
          <option value="2">No</option>
        </select>
      </div>
      <div class="col-12">
        <a href="#d_26" class="btn btn-success btn-lg">Siguiente</a>
      </div>
    </div>
  </div>

  <div id="d_26" class="itemP">
    <h3>26.- ¿Con qué frecuencia utiliza el teléfono celular, la tableta electrónica (tablet) o la computadora para realizar las siguientes actividades?</h3>
    <label for="uti_lplr">Leer periódicos, libros o revistas</label>
    <select name="uti_lplr" id="uti_lplr">
      <option value="1">Nunca o casi nunca</option>
      <option value="2">Algunas veces</option>
      <option value="3">Frecuentemente</option>
      <option value="4">Siempre o casi siempre</option>
    </select>
    <label for="uti_bite">Buscar información para tareas escolares</label>
    <select name="uti_bite" id="uti_bite">
      <option value="1">Nunca o casi nunca</option>
      <option value="2">Algunas veces</option>
      <option value="3">Frecuentemente</option>
      <option value="4">Siempre o casi siempre</option>
    </select>
    <label for="itu_cce">Comunicarse con sus compañeros de la escuela para hacer tareas</label>
    <select name="itu_cce" id="itu_cce">
      <option value="1">Nunca o casi nunca</option>
      <option value="2">Algunas veces</option>
      <option value="3">Frecuentemente</option>
      <option value="4">Siempre o casi siempre</option>
    </select>   
    <a href="#d_27" class="btn btn-success btn-lg">Siguiente</a>
  </div>

  <div id="d_27" class="itemP">
    <div class="row">
      <div class="col-12">
        <h3>27.- ¿Qué Tanto Daño Le Causó Que Sus Compañeros En El Nivel Medio Superior Lo…</h3>
      </div>
      <div class="col-6">
        <label for="dan_malf">golpearan, patearan, cachetearan o maltrataran físicamente?</label>
        <select name="dan_malf" id="dan_malf">
          <option value="1">No me sucedió</option>
          <option value="2">Nada de daño</option>
          <option value="3">Poco daño</option>
          <option value="4">Algo de daño</option>
          <option value="5">Mucho daño</option>
        </select>
        <label for="dan_ofi">ofendieran con insultos, groserías o apodos hirientes?</label>
        <select name="dan_ofi" id="dan_ofi">
          <option value="1">No me sucedió</option>
          <option value="2">Nada de daño</option>
          <option value="3">Poco daño</option>
          <option value="4">Algo de daño</option>
          <option value="5">Mucho daño</option>
        </select>
      </div>
      <div class="col-6">
        <label for="dan_eir">excluyeran, ignoraran o rechazaran?</label>
        <select name="dan_eir" id="dan_eir">
          <option value="1">No me sucedió</option>
          <option value="2">Nada de daño</option>
          <option value="3">Poco daño</option>
          <option value="4">Algo de daño</option>
          <option value="5">Mucho daño</option>
        </select>
        <label for="dan_reqc">robaran, escondieran o quitaran sus cosas?</label>
        <select name="dan_reqc" id="dan_reqc">
          <option value="1">No me sucedió</option>
          <option value="2">Nada de daño</option>
          <option value="3">Poco daño</option>
          <option value="4">Algo de daño</option>
          <option value="5">Mucho daño</option>
        </select>
      </div>
      <div class="col-12">
        <label for="dan_mft">molestaran por medio de facebook, twitter, correo electrónico o mensajes de texto por el celular?</label>
        <select name="dan_mft" id="dan_mft">
          <option value="1">No me sucedió</option>
          <option value="2">Nada de daño</option>
          <option value="3">Poco daño</option>
          <option value="4">Algo de daño</option>
          <option value="5">Mucho daño</option>
        </select>
        <label for="dan_fhc">forzaran a hacer cosas que usted no quería?</label>
        <select name="dan_fhc" id="dan_fhc">
          <option value="1">No me sucedió</option>
          <option value="2">Nada de daño</option>
          <option value="3">Poco daño</option>
          <option value="4">Algo de daño</option>
          <option value="5">Mucho daño</option>
        </select>
      </div>
      <div class="col-12">
        <a href="#d_28" class="btn btn-success btn-lg">Siguiente</a>
      </div>
    </div>
  </div>

  <div id="d_28" class="itemP">
    <h3>28.- Durante el nivel medio superior, ¿cuántas horas a la semana dedicó a trabajar? (considere que su trabajo puede ser en un negocio familiar).</h3>
    <select name="hrs_trab" id="hrs_trab">
      <option value="1">No trabajaba</option>
      <option value="2">Menos de 5 horas</option>
      <option value="3">De 5 a 10 horas</option>
      <option value="4">De 11 a 15 horas</option>
      <option value="5">De 16 a 20 horas</option>
      <option value="6">Más de 20 horas</option>
    </select>
    <a href="#d_29" class="btn btn-success btn-lg">Siguiente</a>
  </div>

  <div id="d_29" class="itemP">
    <h3>29.- ¿Cuál es el máximo nivel de estudios de su madre (aunque haya fallecido)?</h3>
    <select name="esco_mad" id="esco_mad">
      <option value="1">No estudió</option>
      <option value="2">Primaria</option>
      <option value="3">Secundaria</option>
      <option value="4">Bachillerato</option>
      <option value="5">Carrera Técnica</option>
      <option value="6">Licenciatura</option>
      <option value="7">Posgrado (especialidad, maestría, doctorado)</option>
      <option value="8">No lo sé</option>
    </select>
    <a href="#d_30" class="btn btn-success btn-lg">Siguiente</a>
  </div>

  <div id="d_30" class="itemP">
    <h3>30.- ¿Cuál es el máximo nivel de estudios de su padre (aunque haya fallecido)?</h3>
      <select name="esco_pad" id="esco_pad">
        <option value="1">No estudió</option>
        <option value="2">Primaria</option>
        <option value="3">Secundaria</option>
        <option value="4">Bachillerato</option>
        <option value="5">Carrera Técnica</option>
        <option value="6">Licenciatura</option>
        <option value="7">Posgrado (especialidad, maestría, doctorado)</option>
        <option value="8">No lo sé</option>
      </select>
      <a href="#d_31" class="btn btn-success btn-lg">Siguiente</a>
  </div>

  <div id="d_31" class="itemP">
    <h3>31.- ¿Cuántos libros hay en su casa? (no considere revistas, periódicos o libros de texto).</h3>
    <select name="cuan_lib" id="cuan_lib">
      <option value="1">Ninguno</option>
      <option value="2">1 a 10</option>
      <option value="3">11 a 25</option>
      <option value="4">26 a 50</option>
      <option value="5">51 a 100</option>
      <option value="6">101 a 200</option>
      <option value="7">201 a 500</option>
      <option value="8">Más de 500</option>
    </select>
    <a href="#d_32" class="btn btn-success btn-lg">Siguiente</a>
  </div>

  <div id="d_32" class="itemP">
    <div class="row">
      <div class="col-12">
        <h3>32.- ¿Cuenta con los siguientes bienes y servicios en su casa?</h3>
      </div>
      <div class="col-6">
        <label for="ser_tele">Línea telefónica</label>
        <select name="ser_tele" id="ser_tele">
          <option value="1">Sí</option>
          <option value="2">No</option>
        </select>
        <label for="ser_lav">Lavadora de ropa</label>
        <select name="ser_lav" id="ser_lav">
          <option value="1">Sí</option>
          <option value="2">No</option>
        </select>
        <label for="ser_ref">Refrigerador</label>
        <select name="ser_ref" id="ser_ref">
          <option value="1">Sí</option>
          <option value="2">No</option>
        </select>
        <label for="ser_hor">Horno de microondas</label>
        <select name="ser_hor" id="ser_hor">
          <option value="1">Sí</option>
          <option value="2">No</option>
        </select>
      </div>
      <div class="col-6">
        <label for="ser_inte">Internet</label>
        <select name="ser_inte" id="ser_inte">
          <option value="1">Sí</option>
          <option value="2">No</option>
        </select>
        <label for="ser_cabl">Televisión de paga (izzi, sky, etc.)</label>
        <select name="ser_cabl" id="ser_cabl">
          <option value="1">Sí</option>
          <option value="2">No</option>
        </select>
        <label for="ser_tabl">Tableta (ipad, samsung galaxy, etc.)</label>
        <select name="ser_tabl" id="ser_tabl">
          <option value="1">Sí</option>
          <option value="2">No</option>
        </select>
      </div>
      <div class="col-12">
        <a href="#d_33" class="btn btn-success btn-lg">Siguiente</a>
      </div>
    </div>
  </div>

  <div id="d_33" class="itemP">
    <div class="row">
      <div class="col-12">
        <h3>33.- ¿Cuántos de los siguientes bienes tiene en su casa?</h3>
      </div>
      <div class="col-6">
        <label for="bien_pc">Computadora</label>
        <select name="bien_pc" id="bien_pc">
          <option value="1">Ninguno</option>
          <option value="2">1</option>
          <option value="3">2</option>
          <option value="4">3</option>
          <option value="5">4 o más</option>
        </select>
        <label for="ser_tv">Televisor</label>
        <select name="ser_tv" id="ser_tv">
          <option value="1">Ninguno</option>
          <option value="2">1</option>
          <option value="3">2</option>
          <option value="4">3</option>
          <option value="5">4 o más</option>
        </select>
      </div>
      <div class="col-6">
        <label for="ser_auto">Automóvil</label>
        <select name="ser_auto" id="ser_auto">
          <option value="1">Ninguno</option>
          <option value="2">1</option>
          <option value="3">2</option>
          <option value="4">3</option>
          <option value="5">4 o más</option>
        </select>
        <label for="ser_bano">Baños completos</label>
        <select name="ser_bano" id="ser_bano">
          <option value="1">Ninguno</option>
          <option value="2">1</option>
          <option value="3">2</option>
          <option value="4">3</option>
          <option value="5">4 o más</option>
        </select>
      </div>
      <div class="col-12">
        <a href="#d_34" class="btn btn-success btn-lg">Siguiente</a>
      </div>
    </div>
  </div>

  <div id="d_34" class="itemP">
    <h3>34.- ¿Cuántas veces ha salido de vacaciones dentro de la república mexicana en los últimos 2 años?</h3>
    <select name="vac_rm" id="vac_rm">
      <option value="1">Ninguna</option>
      <option value="2">1</option>
      <option value="3">2</option>
      <option value="4">3</option>
      <option value="5">4 o más</option>
    </select>
    <a href="#d_35" class="btn btn-success btn-lg">Siguiente</a>
  </div>

  <div id="d_35"  class="itemP">
    <h3>35.- ¿Qué tanto consideró los siguientes medios para elegir su carrera?</h3>
    <label for="car_foll">Folletos</label>
    <select name="car_foll" id="car_foll">
      <option value="1">Nada</option>
      <option value="2">Poco</option>
      <option value="3">Algo</option>
      <option value="4">Mucho</option>
    </select>
    <label for="car_guia">Guías de carreras</label>
    <select name="car_guia" id="car_guia">
      <option value="1">Nada</option>
      <option value="2">Poco</option>
      <option value="3">Algo</option>
      <option value="4">Mucho</option>
    </select>
    <label for="car_piov">Páginas de internet sobre orientación vocacional</label>
    <select name="car_piov" id="car_piov">
      <option value="1">Nada</option>
      <option value="2">Poco</option>
      <option value="3">Algo</option>
      <option value="4">Mucho</option>
    </select>
    <label for="car_ptov">Pruebas o test de orientación vocacional</label>
    <select name="car_ptov" id="car_ptov">
      <option value="1">Nada</option>
      <option value="2">Poco</option>
      <option value="3">Algo</option>
      <option value="4">Mucho</option>
    </select>
    <a href="#d_36" class="btn btn-success btn-lg">Siguiente</a>
  </div>

  <div id="d_36" class="itemP">
    <div class="row">
      <div class="col-12">
        <h3>36.- ¿Qué tanto influyeron las siguientes personas para elegir su carrera?</h3>
      </div>
      <div class="col-6">
        <label for="inf_pad">Padres</label>
        <select name="inf_pad" id="inf_pad">
          <option value="1">Nada</option>
          <option value="2">Poco</option>
          <option value="3">Algo</option>
          <option value="4">Mucho</option>
        </select>
        <label for="inf_her">Hermanos</label>
        <select name="inf_her" id="inf_her">
          <option value="1">Nada</option>
          <option value="2">Poco</option>
          <option value="3">Algo</option>
          <option value="4">Mucho</option>
        </select>
      </div>
      <div class="col-6">
        <label for="inf_ami">Amigos</label>
        <select name="inf_ami" id="inf_ami">
          <option value="1">Nada</option>
          <option value="2">Poco</option>
          <option value="3">Algo</option>
          <option value="4">Mucho</option>
        </select>
        <label for="inf_prf">Profesores</label>
        <select name="inf_prf" id="inf_prf">
          <option value="1">Nada</option>
          <option value="2">Poco</option>
          <option value="3">Algo</option>
          <option value="4">Mucho</option>
        </select>
      </div>
      <div class="col-12">
        <label for="inf_poe">Psicólogos u orientadores educativos</label>
        <select name="inf_poe" id="inf_poe">
          <option value="1">Nada</option>
          <option value="2">Poco</option>
          <option value="3">Algo</option>
          <option value="4">Mucho</option>
        </select>
      </div>
      <div class="col-12">
        <a href="#d_37" class="btn btn-success btn-lg">Siguiente</a>
      </div>
    </div>
  </div>

  <div id="d_37" class="itemP">
    <div class="row justify-content-center">
      <div class="col-12">
        <h3>Fin</h3>
      </div>
      <div class="col-4">
        <button id="next" class='btn btn-success btn-block' >Enviar</button>
      </div>
    </div>
    
  </div>
  
	</div>
	<div class="barra"></div>
	<br>
	<div class="iniFin"></div>
  </div>
	
	<script src="js/jquery-1.9.1.min.js"></script>
	<script src="js/watch.js"></script>
	<script>

	$(document).ready(function(){

      /***************************************
      *Cuando carga la página verifica si ya *
      *está el registro del usuario, en caso *
      *de que no, lo genera                  *
      ***************************************/
      var actual=1;
      var numSelect=0;
      var cuenta=0;      
      $.post('guarda.php',{
        opcion:1
      },function(reg){
        //alert(reg);
        //$('#d_'+actual+'> h2').prepend('<span>'+actual+'. - </span>');
        //$('#d_1').show();
        //numSelect=$('#d_1 > select').length;
        //cuenta=0;
        //alert(numSelect + " " + cuenta);
        //$('button').hide();
        $('#d_'+actual+'>select:first').focus();
      });
      /////////////////////////////////////////////////////////////
      $('select').prepend('<option value="0" selected></option>'); //genera una opción vacía en cada select       
      $('select').attr('required','true');
      $('select').addClass('form-control');
      $('label').addClass('my-1');
      $('#pregunta>div').prepend('<hr>');
      $('#pregunta>div').append('<hr>');
      $('.btn').addClass('mt-3');
      //$('button').addClass('bun2');
      /************************************
      *funcionalidad de botón siguiente ***
      ************************************/        
     /* $('button').click(function(e){
        e.preventDefault();
        actual=$(this).attr('id').substring(2);       
        actual++;               
        //$('div#pregunta div').hide();
        //$('button').hide();       
        $('#d_'+actual+'> h2').prepend('<span>'+actual+'. - </span>');
        $('#d_'+actual).show();
        numSelect=$('#d_'+actual+' > select').length;
        cuenta=0;
        $('#d_'+actual+'>select:first').focus();///enfoca siempre el primer select de cada div
      });*/
      /*********************************************
      *cada que pierde el foco cada select se      *
      *realiza el update con la respuesta guardada *
      *********************************************/
      $('select').blur(function(){
        var obj=$(this).attr('id');
        var respuesta=$(this).val();        
        if(respuesta=='0'){
          alert("Elige una respuesta");
          $(this).focus();
        }else{
          $.post('guarda.php',{
            opcion:2,
            objeto:obj,
            respuesta:respuesta
          },function(regre){
            //alert(regre);
          });
        }
      });

		$('#tiempo').stopwatch().stopwatch('start');

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

      $.post('ajaxvitacora.php',{
            opcion:2,
            idAlumnos:<?php echo $idusuario; ?>,
            idExamens:2
            },function(vregresado){
              alert(vregresado);
              window.location.assign("index.php");
        });
  
	}

		setTimeout(function() {
	      submit();
	}, 30000000);

	});

	</script>

</body>
</html>