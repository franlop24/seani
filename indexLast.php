<?php
  
  session_start();
  
  if(isset($_SESSION['account_name']) && $_SESSION["tipo_usuario"]==1){
      header('Location: validar_tipo_usuario.php'); 
  }else if(isset($_SESSION['account_name']) && $_SESSION["tipo_usuario"]==3){
    header('Location: validar_tipo_usuario.php'); 
  }

?>

<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
<head>
<title>SEANI 1.0</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="css/style.css" />
</head>
<body>
<div class="wrap">
<!-- tab style-1 -->
<div class="row">
	<div class="grid_12 columns">
		<div class="tab style-1">
    					<dl>
 			              	<dd class="users"><a class="user active" href="#tab1" > </a></dd>
    						<dd class="settings"><a class="setting" href="#tab3"> </a></dd>
    					</dl>
    					<ul>
    						<li class="active">
			    				<div class="form">		

										<input type="text" id='user' class="active textbox" placeholder="Usuario" required="true">
										
										<input type="password" id = 'pass' class="textbox" placeholder="Contraseña" style="width: 90%; padding:10px;border:1px solid #DDDDDD; border-radius: 3px;" required="true">
										<input type="submit" value="Ingresar" id="ingresa">
							    </div>
							</li>
    						
    						<li>
    							<div class="form">		
									<input type="text" class="active textbox" placeholder="E-mail" id = 'correo'>
									<input type="text" class="textbox" placeholder="Usuario" id='usuario'>
									<input type="password" class="textbox" placeholder="Contraseña" id="password" style="width: 90%; padding:10px;border:1px solid #DDDDDD; border-radius: 3px;">
									<input type="text" class="textbox" placeholder="Nombre" id='nombre' >
									<input type="text" class="textbox" placeholder="Apellido Paterno" id='apP'>
									<input type="text" id='apM' class="textbox" placeholder="Apellido Materno" >
									<select data-placeholder="Seleciona tu Carrera."  name="carrera"  id="carrera" style="width: 90%; padding:10px;border:1px solid #DDDDDD; border-radius: 3px;">
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
									<input type="submit" value="Registrar" id='registra'>
							    </div>
    						</li>
						
    					</ul>
		</div>
</div>            
</div>			
</div>
<div class="wrap">
	<!--footer-->
<div class="footer">
	<p>UNIVERSIDAD TECNOLÓGICA DE TLAXCALA</p>
</div>
<div class="clear"> </div>
</div>
<script type="text/javascript" src="js/JFCore.js"></script>
<script src='js/jquery.min.js'></script>
		
		<!-- Set here the key for your domain in order to hide the watermark on the web server -->
		<script type="text/javascript">
			(function() {
				JC.init({
					domainKey: ''
				});
				})();
		</script>
<script>
	$(document).ready(function(){
		$('#ingresa').click(function(e){
			e.preventDefault();
			var userIn = $('#user').val();
			var passIn = $('#pass').val();
			if(userIn != '' || passIn!='')
			{
			$.post('sesion.php',{
				opcion: 1,
				user: $('#user').val(),
				pass: $('#pass').val()
			},function(res){
				if(res=='')
					window.open('validar_tipo_usuario.php','_self');
				else
					alert(res);
			});
		}else{
			alert("Ingresa tu usuario y contraseña");
		}
		});
		$('#registra').click(function(e){
			e.preventDefault();
			$.post('insert/registro.php',{
				option: 2,
				correo: $('#correo').val(),
				usuario: $('#usuario').val(),
				password: $('#password').val(),
				nombre: $('#nombre').val(),
				apellidoP: $('#apP').val(),
				apellidoM: $('#apM').val(),
				carrera: $('#carrera').val()
			},function(){
				alert('Usuario Registrado');
				window.open('index.php','_self');
			})
		});
	});
</script>
    </body>
</html>