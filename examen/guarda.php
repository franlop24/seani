<?php 

session_start();

$username=$_SESSION["account_name"];

$server="localhost";
$user="uttlaxca_seani";
$pass="uttseani2017";
$bd="uttlaxca_seani";

$conn=new mysqli($server,$user,$pass,$bd);

$sqlbusca="SELECT id FROM 01_user where username='$username';";
$buscaID=$conn->query($sqlbusca);

$datos=$buscaID->fetch_assoc();
$idUser=$datos['id'];

if($_POST['opcion']==1){
	$sqlBuscaReg="SELECT * FROM exani_ii WHERE user_id='$idUser';";
	$buscaReg=$conn->query($sqlBuscaReg);
	if($buscaReg->num_rows==0){
		$sqlInsert="INSERT INTO exani_ii(user_id) VALUES('$idUser');";
		$conn->query($sqlInsert);
		echo "registro guardado";
	}
}else{
	$pregunta=$_POST['objeto'];
	$respuesta=$_POST['respuesta'];
	$sqlUpdate="UPDATE exani_ii SET ".$pregunta."='".$respuesta."' WHERE user_id='$idUser';";

	$conn->query($sqlUpdate);	

	echo "respuesta guardada";
}

$conn->close();

 ?>