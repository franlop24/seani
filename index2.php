<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="utf-8">
    <title>EGETSU V.0.1</title>
    <link type="text/css" rel="stylesheet" href="components/bootstrap/bootstrap.css" />
    <link type="text/css" rel="stylesheet" href="css/zice.style.css"/>
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
              <div class=" pull-right" style="margin-right:-8px;">
                <div class="btn-group">
                  <button type="button" class="btn" id="but_login">Iniciar</button>
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
        
  </body>
</html>