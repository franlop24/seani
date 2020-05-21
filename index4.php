<?php
  
  session_start();
  
  if(isset($_SESSION['account_name']) && $_SESSION["tipo_usuario"]==1){
      header('Location: examen/index.php'); 
  }else if(isset($_SESSION['account_name']) && $_SESSION["tipo_usuario"]==3){
    header('Location: admin/index.php'); 
  }

?>

<html lang="es">
  <head>
    <meta charset="utf-8">
    <title>EGETSU V.0.1</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!--[if lt IE 9]>
      <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    <link type="text/css" rel="stylesheet" href="components/bootstrap/bootstrap.css" />
    <link type="text/css" rel="stylesheet" href="css/zice.style.css"/>
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
    <script type="text/javascript" src="components/validationEngine/jquery.validationEngine-es.js"></script>
    <script type="text/javascript" src="components/fullcalendar/fullcalendar.js"></script>
    <script type="text/javascript" src="components/flot/flot.js"></script>
    <script type="text/javascript" src="components/uploadify/uploadify.js"></script>       
    <script type="text/javascript" src="components/Jcrop/jquery.Jcrop.js"></script>
    <script type="text/javascript" src="components/smartWizard/jquery.smartWizard.min.js"></script>
    <script type="text/javascript" src="js/jquery.cookie.js"></script>
    <script type="text/javascript" src="js/zice.custom.js"></script>

    <style type="text/css">
      html {
        background-image: none;
      }
		  body{
			  background-position:0 0;		
			}
      label.iPhoneCheckLabelOn span {
        padding-left:0px
      }
      #versionBar {
        background-color:#168011;
        position:fixed;
        width:100%;
        height:35px;
        bottom:0;
        left:0;
        text-align:center;
        line-height:35px;
        z-index:11;
        -webkit-box-shadow: black 0px 10px 10px -10px inset;
        -moz-box-shadow: black 0px 10px 10px -10px inset;
        box-shadow: black 0px 10px 10px -10px inset;
      }
      .copyright{
        text-align:center; font-size:10px; color:#CCC;
      }
      .copyright a{
        color:#CCC; text-decoration:none
      }    
    </style>

    <script type="text/javascript">
      jQuery(document).ready(function() {
        jQuery("#createaccPage").validationEngine({
          prettySelect : true,
          useSuffix: "_chzn",
        });
        $("#country").chosen({
          allow_single_deselect : true
        });

        // Example Overlay form
        $(".on_load").live('click',function(){  
          $('body').append('<div id="overlay"></div>');
          $('#overlay').css('opacity',0.4).fadeIn(400);
          var activeLoad = $(this).attr("name");    
          var titleTabs = $(this).attr("title");    
          $("ul.tabs li").hide();   
              $('ul.tabs li').each(function(index) {
                  var activeTab = $('ul.tabs li:eq('+index+')').find("a").attr("href")      
                  if(activeTab==activeLoad){
                    $("ul.tabs ").append('<li class=active><a href="'+activeLoad+'" class=" prev on_prev "  id="on_prev_pro" name="'+activeLoad+'" >'+titleTabs+'</a></li>');
                    $("ul.tabs li:last").fadeIn();  
                    }
              });
          $('.widget-content').css({'position':'relative','z-index':'1001'});
          $(".load_page").hide();
          $('.show_add').show();
        });
        $(".on_prev").live('click',function(){   
          $("ul.tabs li:last").remove();           
          $("ul.tabs li").fadeIn();
          var pageLoad = $(this).attr("rel"); 
          var activeLoad = $(this).attr("name");    
            $(".show_add, .show_edit").hide();    
            $(".show_edit").html('').hide();    
              $(activeLoad).fadeIn(); 
                  $(' .load_page').fadeIn(400,function(){   
                     $('#overlay').fadeOut(function(){
                           $('.widget-content').delay(500).css({'z-index':'','box-shadow':'','-moz-box-shadow':'','-webkit-box-shadow':''});
                      }); 
                }); 
          ResetForm();
           });  
      });
    </script>
	
  </head>
  <body >

    <div id="successLogin"></div>
    <div class="text_success"><img src="images/loadder/loader_green.gif"  alt="ziceAdmin" /><span>Cargando...</span></div>
     
    <div id="login" >
      <div class="ribbon"></div>
      <div class="inner clearfix">
        <div class="logo" ><img src="images/logo/logo_login.png" alt="ziceAdmin" /></div>
        <div class="formLogin">
          <form name="formLogin"  id="formLogin" method="post">
      
            <div class="tip">
              <input name="username" type="text"  id="username_id"  title="Usuario"   />
            </div>
            <div class="tip">
              <input name="password" type="password" id="password"   title="Contraseña"  />
            </div>
      
            <div class="loginButton">
              <!--<div style="float:left; margin-left:-9px;">
              <input type="checkbox" id="on_off" name="remember" class="on_off_checkbox"  value="1"  />
              <span class="f_help">Recordar</span>
              </div>-->
              <div class=" pull-right" style="margin-right:-8px;">
                <div class="btn-group">
                  <button type="button" class="btn" id="but_login">Iniciar</button>
                  <!--<button type="button" class="btn" id="forgetpass">Olvidaste?</button>-->
                </div>
                <span class=""><p><a href="#" id="createacc">Aún no estas registrado, haz clic aquí.</a></p></span>
              </div>
              <div class="clear"></div>
            </div>      
          </form>
          <form id="createaccPage" method="post" action="insert/registro.php" >
            <form > 
              <div class="tip">
                <input type="text" class="validate[required,custom[email]]  medium" name="email" id="e_required" placeholder="Email">
              </div>
              <div class="tip">
                <input type="text"  name="user" id="user"  class="validate[required,minSize[4],maxSize[20],] medium"  placeholder="Usuario"  />      
              </div>
              <div class="tip">
                <input type="password"  class="validate[required,minSize[6]] medium"  name="pass" id="pass" placeholder="Contrase&ntilde;a" />
              </div>
                   
              <div class="tip">
                <input type="text"  name="nombreA" id="nombreA"  class="validate[required,minSize[3],maxSize[20],] medium"  placeholder="Nombre"  />
              </div>
              <div class="tip">
                <input type="text"  name="apellidoap" id="apellidoap"  class="validate[required,minSize[3],maxSize[20],] medium"  placeholder="Apellido Paterno"  />
              </div>
              <div class="tip">
                <input type="text"  name="apellidoma" id="apellidoma"  class="validate[required,minSize[3],maxSize[20],] medium"  placeholder="Apellido Materno"  />
              </div>
             
              <select data-placeholder="Seleciona tu Carrera."  name="carrera"  id="country" class="validate[required] chzn-select" >
                <option value=""  ></option>
                <option value="TICMCE">TICMCE</option>
                <option value="DNAM"  >DNAM</option>
                <option value="PIAA"  >PIAA</option>
                <option value="PIAM"  >PIAM</option>
                <option value="MAAU"  >MAAU</option>
                <option value="DMIAP" >DMIAP</option>
                <option value="MAI"   >MAI</option>
	              <option value="PIAP"  >PIAP</option>
              </select>  
                    
              </br></br></br></br>
        
              <div class="loginButton" align="center">
                <button type="button" class="btn" id="backLogin"><i class="icon-caret-left"></i> atras </button>
                <button type="button" class="btn btn-danger white " onClick="$('#createaccPage').submit();"><i class="icon-unlock"></i> Registrar </button>
              </div>
                                      
            </form>
          </form>
        </div>
      </div>
      <div class="shadow"></div>
    </div>
        
    <!--Login div-->
    <div class="clear"></div>
    <div id="versionBar" >
    <div class="copyright" >  &copy; Copyright 2016  All Rights Reserved <span class="tip"><a  href="http://www.uttlaxcala.edu.mx/" title="UTT" >Universidad Tecnológica de Tlaxcala</a> </span> </div>
          <!-- // copyright-->
    </div>
        
        <!-- Link JScript-->

    <script type="text/javascript" src="js/login_php.js"></script>
		<script type="text/javascript" >
      $(document).ready(function () {	 
        $('#createacc').click(function(e){
          $('#login').animate({   height: 250, 'margin-top': '-200px' }, 300);	
          $('.formLogin').animate({   height: 500 }, 300);
          $('#createaccPage').fadeIn();
          $('#formLogin').hide();
        });
        $('#backLogin').click(function(e){
          $('#login').animate({   height: 254, 'margin-top': '-148px' }, 300);	
          $('.formLogin').animate({   height: 150 }, 300);
          $('#formLogin').fadeIn();
          $('#createaccPage').hide();
        });			
      });		
    </script>
  </body>
</html>