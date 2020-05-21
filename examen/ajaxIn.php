<?php
require_once '../config.php';

include('../mvc/modelo.php');
	date_default_timezone_set('Mexico/General');
	$Seani = new Seani();

	$response=$Seani->respuestasNivelaIngles();//mysql_query("select id,question_name,answer from nivela_ingles");
	 $i=1;
	 $right_answer=0;
	 $wrong_answer=0;
	 $unanswered=0;
	 while($result=$response->fetch_array()){ 
	       if($result['answer']==$_POST["$i"]){
		       $right_answer++;
		   }else if($_POST["$i"]==5){
		       $unanswered++;
		   }
		   else{
		       $wrong_answer++;
		   }
		   $i++;
	 }

	//datos tabla users
	

    $id_alumno=$_POST['id'];
	$no_serie=3;
	$totalserie=($right_answer/40)*10;
    $periodo='Agosto 2018';  
		
	$Seani->guardaResultadosIngles($id_alumno,$no_serie,$right_answer,$wrong_answer,$unanswered,$totalserie,$periodo);

		//$Seani->InsertarResSerie($id_alumno,$no_serie,$right_answer,$wrong_answer,$unanswered,$totalserie,$fecha,$periodo);  
         
?>