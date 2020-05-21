<?php 

	include('../mvc/modelo.php');

    date_default_timezone_set('Mexico/General');  

    $Seani = new Seani();

    if($_POST['opcion']==1)
	{
    	$idAlumno=$_POST['idAlumnos'];
    	$idPregunta=$_POST['idPreguntas'];
    	$idExamen=$_POST['idExamens'];
    	$respuesta=$_POST['respuestas'];    
    
        $Seani-> updatePreguntaAlumno($idAlumno,$idPregunta,$idExamen,$respuesta);
    	echo "Respuesta guardada";

    }else{

    	$idAlumno=$_POST['idAlumnos'];
    	$idExamen=$_POST['idExamens'];

    	$Seani->guardaResultados($idAlumno,$idExamen);

    	echo "listo!";
    }

 ?>