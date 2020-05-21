<?php 

$con2 = new mysqli('localhost','uttlaxca_seani','uttseani2017','uttlaxca_seani');

if($_POST['opcion']==1){
	$user = $_POST['user'];
	$pass = $_POST['pass'];

	$sql = "SELECT * FROM 01_user WHERE username='$user' and password='$pass'";

	$result = $con2->query($sql);

	if($result->num_rows>0){
		$row = $result->fetch_assoc();

		session_start();
		
		$_SESSION["account_name"]=$row['username'];	// create SESSION  
		$_SESSION["tipo_usuario"]=$row['tipo_usuario'];	// create SESSION  
        $_SESSION["estatus"]=$row['estatus']; // create SESSION  

        echo '';
	}else{
		echo 'usuario o contraseña incorrectos';
	}
}

 ?>