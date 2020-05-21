<?php 

	include('../mvc/modelo.php');

    date_default_timezone_set('Mexico/General');  

    $Seani = new Seani();

    if($_POST['opcion']==1)
	{
    	
    }else{

    	$idAlumno=$_POST['idAlumnos'];
    	$idExamen=$_POST['idExamens'];

    	$Seani->guardaResultados($idAlumno,$idExamen);

    	echo "listo!";
    }

 ?>