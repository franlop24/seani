<?php
session_start();
if (!$_SESSION["account_name"]) {

//    header('Location: ../index.php');
    echo '<script type="text/javascript">';
    echo 'alert("No has iniciado sesión' . $error . '");';
    echo 'window.location.assign("../index.php");';
    echo '</script>';
    
} else if ($_SESSION["tipo_usuario"] != 3) {
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
ini_set('session.bug_compat_42',"0");
ini_set('session.bug_compat_warn',"0");

?>
<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="utf-8">
    <title>SEANI.-Admin Dashboard</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Link shortcut icon-->
    <link rel="shortcut icon" type="image/ico" href="images/favicon.ico"/> 

    <!-- CSS Stylesheet-->
    <link type="text/css" rel="stylesheet" href="components/bootstrap/bootstrap.css" />
    <link type="text/css" rel="stylesheet" href="components/bootstrap/bootstrap-responsive.css" />
    <link type="text/css" rel="stylesheet" href="css/zice.style.css"/>

    <!--[if lte IE 8]><script language="javascript" type="text/javascript" src="components/flot/excanvas.min.js"></script><![endif]-->  
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="components/ui/jquery.ui.min.js"></script> 
		<script type="text/javascript" src="components/bootstrap/bootstrap.min.js"></script>
    <script type="text/javascript" src="components/ui/timepicker.js"></script>
    <script type="text/javascript" src="components/colorpicker/js/colorpicker.js"></script>
    <script type="text/javascript" src="components/form/form.js"></script>
    <script type="text/javascript" src="components/elfinder/js/elfinder.full.js"></script>
    <script type="text/javascript" src="components/datatables/dataTables.min.js"></script>
    <script type="text/javascript" src="components/fancybox/jquery.fancybox.js"></script>
    <script type="text/javascript" src="components/jscrollpane/jscrollpane.min.js"></script>
    <script type="text/javascript" src="components/editor/jquery.cleditor.js"></script>
    <script type="text/javascript" src="components/chosen/chosen.js"></script>
    <script type="text/javascript" src="components/validationEngine/jquery.validationEngine.js"></script>
    <script type="text/javascript" src="components/validationEngine/jquery.validationEngine-en.js"></script>
    <script type="text/javascript" src="components/fullcalendar/fullcalendar.js"></script>
    <script type="text/javascript" src="components/flot/flot.js"></script>
    <script type="text/javascript" src="components/uploadify/uploadify.js"></script>       
		<script type="text/javascript" src="components/Jcrop/jquery.Jcrop.js"></script>
		<script type="text/javascript" src="components/smartWizard/jquery.smartWizard.min.js"></script>
    <script type="text/javascript" src="js/jquery.cookie.js"></script>
    <script type="text/javascript" src="js/zice.custom.js"></script>
        
	</head>        
  <body>        

    <!-- Header -->
    <?php include_once('include/header.php'); ?>
    <!-- End Header -->
         
    <!-- left_menu -->

    <div id="left_menu">
      <ul id="main_menu" class="main_menu">
        <li  class="select" ><a href="#"style="color: #292929;" > Concentrado de Totales</a></li>        
      </ul>
    </div>
              
    <div id="content" >
    <div class="inner">
                                    
      <!-- menu -->
      <?php include_once('include/menu.php'); ?>
          
      <!--<span><i class="icon-table"></i> Administración Docentes </span>-->
      <!-- Table widget -->
      
      </div><!-- End widget-header -->	
      
      <div class="widget-content">
        <!-- Table UITab -->
        <div id="UITab" style="position:relative;">
          <ul class="tabs" >
            <li ><a href="#tab1"> Concentrado de Totales</a></li>  
            <li ><a href="#tab2">Usuarios Alumnos</a></li>
          </ul>
          <div class="tab_container" >
            <div id="tab1" class="tab_content">
              <table class="table table-bordered table-striped  data_table3" >
                <thead>
                  <tr>
                    <th>No.<br>Alumno</th>
                    <th>Nombre</th>
                    <th>Paterno</th>
                    <th>Materno</th>
                    <th>Carrera</th>
                    <th style="color: #007E3A; font-weight: bold;font-size : 6pt">Correctas <br> SEANI</th>
                    <th style="color: #007E3A; font-weight: bold;font-size : 6pt">Incorrectas <br> SEANI</th>
                    <th style="color: #007E3A; font-weight: bold;font-size : 6pt">Total <br> SEANI</th>
                    <th style="color: #007E3A; font-weight: bold;font-size : 6pt">Correctas <br> INGLÉS</th>
                    <th style="color: #007E3A; font-weight: bold;font-size : 6pt">Incorrectas <br> INGLÉS</th>
                    <th style="color: #007E3A; font-weight: bold;font-size : 6pt">Total <br>INGLÉS</th>
                    <th style="color: #007E3A; font-weight: bold;font-size : 6pt">Periodo</th>
                  </tr>
                </thead>
                <tbody align="center">
                
                  <?php   echo   $DatosPersonaleTabla = $Seani->ObtenerDatosResultadosSerie();     ?>     
                
                </tbody>
              </table>-->
            </div><!--tab1-->
                                              
            <div id="tab2" class="tab_content"> 
              <table class="table table-bordered table-striped  data_table3" >
                <thead>
                  <tr>
                    <th>ID</th>
                    <th>USUARIO</th>
                    <th style="color: #007E3A; font-weight: bold;font-size : 6pt">PASSWORD</th>                                                     
                    <th style="color: #007E3A; font-weight: bold;font-size : 6pt">EMAIL</th>
                    <th style="color: #007E3A; font-weight: bold;font-size : 6pt">FECHA ALTA</th>
                  </tr>
                </thead>
                <tbody align="center">
                
                   <?php   echo   $DatosUsuarios = $Seani->ObtenerUsuariosAlumnos();     ?>     
                                                     
                </tbody>
              </table>
            </div><!--tab2-->
            <div id="tab3" class="tab_content"> 
              <table class="table table-bordered table-striped  data_table3" >
                <thead>
                  <tr>
                    <th>No.<br/>Empleado</th>
                    <th>Nombre</th>
                    <th>Paterno</th>
                    <th>Materno</th>
                    <th style="color: #007E3A; font-weight: bold;font-size : 6pt">TICMCE</th>
                    <th style="color: #007E3A; font-weight: bold;font-size : 6pt">AS</th>
                    <th style="color: #007E3A; font-weight: bold;font-size : 6pt">EST</th>
                    <th style="color: #007E3A; font-weight: bold;font-size : 6pt"> TU</th>
                    <th style="color: #007E3A; font-weight: bold;font-size : 6pt">DNAM</th>
                    <th style="color: #007E3A; font-weight: bold;font-size : 6pt">AS</th>
                    <th style="color: #007E3A; font-weight: bold;font-size : 6pt">EST</th><th style="color: #007E3A; font-weight: bold;font-size : 6pt"> TU</th>
                    <th style="color: #007E3A; font-weight: bold;font-size : 6pt">PIAA</th>
                    <th style="color: #007E3A; font-weight: bold;font-size : 6pt">AS</th>
                    <th style="color: #007E3A; font-weight: bold;font-size : 6pt">EST</th><th style="color: #007E3A; font-weight: bold;font-size : 6pt"> TU</th>
                    <th style="color: #007E3A; font-weight: bold;font-size : 6pt">PIAM</th>
                    <th style="color: #007E3A; font-weight: bold;font-size : 6pt">AS</th>
                    <th style="color: #007E3A; font-weight: bold;font-size : 6pt">EST</th><th style="color: #007E3A; font-weight: bold;font-size : 6pt"> TU</th>
                    <th style="color: #007E3A; font-weight: bold;font-size : 6pt">MAUU</th>
                    <th style="color: #007E3A; font-weight: bold;font-size : 6pt">AS</th>
                    <th style="color: #007E3A; font-weight: bold;font-size : 6pt">EST</th><th style="color: #007E3A; font-weight: bold;font-size : 6pt"> TU</th>
                    <th style="color: #007E3A; font-weight: bold;font-size : 6pt">DMIAP</th>
                    <th style="color: #007E3A; font-weight: bold;font-size : 6pt">AS</th>
                    <th style="color: #007E3A; font-weight: bold;font-size : 6pt">EST</th><th style="color: #007E3A; font-weight: bold;font-size : 6pt"> TU</th>
                    <th style="color: #007E3A; font-weight: bold;font-size : 6pt">MAI</th>
                    <th style="color: #007E3A; font-weight: bold;font-size : 6pt">AS</th>
                    <th style="color: #007E3A; font-weight: bold;font-size : 6pt">EST</th><th style="color: #007E3A; font-weight: bold;font-size : 6pt"> TU</th><th style="color: #007E3A; font-weight: bold;font-size : 6pt">PIAP</th>
                    <th style="color: #007E3A; font-weight: bold;font-size : 6pt">AS</th>
                    <th style="color: #007E3A; font-weight: bold;font-size : 6pt">EST</th>
                    <th style="color: #007E3A; font-weight: bold;font-size : 6pt"> TU</th>
                  </tr>
                </thead>
                <tbody align="center">          
                  <?php  
                    // echo   $DatosPersonaleTabla = $Seani->ObtenerDatosCargahoraria4();     
                  ?>     
                </tbody>
              </table>
            </div><!--tab4-->  
            <div id="tab4" class="tab_content"> 
              <table class="table table-bordered table-striped  data_table3" >
                <thead>
                  <tr>
                    <th>No.<br/>Empleado</th>
                    <th>Nombre</th>
                    <th>Paterno</th>
                    <th>Materno</th>
                    <th style="color: #007E3A; font-weight: bold;font-size : 6pt">ITI</th>
                    <th style="color: #007E3A; font-weight: bold;font-size : 6pt">AS</th>
                    <th style="color: #007E3A; font-weight: bold;font-size : 6pt">EST</th>
                    <th style="color: #007E3A; font-weight: bold;font-size : 6pt"> TU</th>
                    <th style="color: #007E3A; font-weight: bold;font-size : 6pt">INGEM</th>
                    <th style="color: #007E3A; font-weight: bold;font-size : 6pt">AS</th>
                    <th style="color: #007E3A; font-weight: bold;font-size : 6pt">EST</th><th style="color: #007E3A; font-weight: bold;font-size : 6pt"> TU</th>
                    <th style="color: #007E3A; font-weight: bold;font-size : 6pt">IPOI</th>
                    <th style="color: #007E3A; font-weight: bold;font-size : 6pt">AS</th>
                    <th style="color: #007E3A; font-weight: bold;font-size : 6pt">EST</th><th style="color: #007E3A; font-weight: bold;font-size : 6pt"> TU</th><th style="color: #007E3A; font-weight: bold;font-size : 6pt">ITEC</th>
                    <th style="color: #007E3A; font-weight: bold;font-size : 6pt">AS</th>
                    <th style="color: #007E3A; font-weight: bold;font-size : 6pt">EST</th>
                    <th style="color: #007E3A; font-weight: bold;font-size : 6pt"> TU</th><th style="color: #007E3A; font-weight: bold;font-size : 6pt">IDTM</th>
                    <th style="color: #007E3A; font-weight: bold;font-size : 6pt">AS</th>
                    <th style="color: #007E3A; font-weight: bold;font-size : 6pt">EST</th>
                    <th style="color: #007E3A; font-weight: bold;font-size : 6pt"> TU</th>
                    <th style="color: #007E3A; font-weight: bold;font-size : 6pt">IMI</th>
                    <th style="color: #007E3A; font-weight: bold;font-size : 6pt">AS</th>
                    <th style="color: #007E3A; font-weight: bold;font-size : 6pt">EST</th>
                    <th style="color: #007E3A; font-weight: bold;font-size : 6pt"> TU</th>
                  </tr>
                </thead>
              <tbody align="center">
                <?php  
                  // echo   $DatosPersonaleTabla = $Seani->ObtenerDatosCargahoraria3();     
                ?>     
              </tbody>
            </table>
          </div><!--tab2-->
        </div>
      </div><!-- End UITab -->
      <div class="clearfix"></div>
      </div><!--  end widget-content -->
    </div><!-- widget  span12 clearfix-->
    <div class="row-fluid">
      <!-- Table widget -->
    </div><!-- row-fluid -->
    <div class="row-fluid">
      <div id="footer">&copy; Copyright 2014  All Rights Reserved <span class="tip"><a  href="http://www.uttlaxcala.edu.mx/" title="UTT" >Universidad Tecnológica de Tlaxcala</a> </span>
      </div>
    </div> <!--// End inner -->
  </div> <!--// End ID content --> 
</body>
</html>