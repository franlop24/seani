<?php 

session_start();

print_r($_SESSION);

require_once '../config.php';

include('../mvc/modelo.php');

$Seani = new Seani();
//consulta
$response=mysql_query("select * from serie1");

echo "</br>";

//copia elementos en arreglo

$arre = array();

while($algo=mysql_fetch_array($response)){
$arre[]=$algo[1];
}

//print_r($algo[2]);

echo "<br>";



$vari=$Seani->permutaArreglo(count($arre));
print_r($vari);

$alumno=array();

//Guarda todas las preguntas desordenadas
/*
foreach ($vari as $key ) {
	# code...
	$alumno[]=$arre[$key-1];

	print_r($arre[$key-1]);
	echo "</br>";
}*/

//Guarda una parte de las preguntas desordenadas
for($i=0;$i<5;$i++){
	$alumno[]=$arre[$vari[$i]];

	print_r($arre[$vari[$i]]);
	echo "</br>";
}

 ?>