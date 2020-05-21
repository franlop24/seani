<?php
	include('../mvc/modelo.php');
	date_default_timezone_set('Mexico/General');
	//datos tabla users
	$folio=$_POST['correo'];
 	$username=$_POST['usuario'];
  	$carrera=$_POST['carrera'];
	$pass= $_POST['password'];
	$email=$_POST['correo'];
	$usuario='1';		
	$date = date('Y-m-d H:i:s');
	$estatus="1";
	//datos tabla datos personal
	$nombreA= $_POST['nombre'];
	$apellidoap=$_POST['apellidoP'];
	$apellidoma= $_POST['apellidoM'];	
	$foto='http://siseac.uttlaxcala.edu.mx/profile.png';
	
	$Seani = new Seani();	
    $Seani->Nregistro($username,$pass,$email,$usuario,$date,$estatus,$foto);
    $idusuario=$Seani->obteneIdusuario($username);
    $Seani->FirstDatosPers($nombreA,$apellidoap,$apellidoma,$email,$date,$idusuario,$carrera);
    
?>