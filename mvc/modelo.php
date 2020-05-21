<?php

//include('../Conectar.php');
//require '../Conectar.php';    //verificar donde se hace el llamado
//$bd = Db::getInstance();

class Conexion{
    //Clase conexion, medodos consulta simple y consultaretorno
    private $con;
    public function __construct(){
        $this->con = new \mysqli("localhost","uttlaxca_seani","uttseani2017","uttlaxca_seani");
            //se pone la '\' antes de sqli porque es una clase global de php
        $this->con->query("SET NAMES 'utf8'");//Respetar UTF-8      
    }
    public function consultaSimple($sql){
        return $this->con->query($sql);
    }
    public function consultaRetorno($sql){
        $datos = $this->con->query($sql);
        return $datos;
    }
}


class Seani {

    public function __construct(){
        $this->con=new Conexion();
    }
    
    function Nregistro($username, $password, $email, $tipo_usuario, $fecha_hora_alta, $estatus, $foto) 
    {
        $sql = "INSERT INTO 01_user (username,password,email,tipo_usuario,fecha_hora_alta,estatus,foto) 
        VALUES ('$username','$password','$email','$tipo_usuario','$fecha_hora_alta','$estatus','$foto')";
        $this->con->consultaSimple($sql);

        //$result = mysql_query("INSERT INTO 01_user (username,password,email,tipo_usuario,fecha_hora_alta,estatus,foto) 
        //VALUES ('$username','$password','$email','$tipo_usuario','$fecha_hora_alta','$estatus','$foto')");

        /*if (!$result) {
        //  $error = 'Invalid query: ' . mysql_error();
            if ($this->con->error == 32) {
                $error = "El correo electronico ingresado ya esta registrado en nuestra base de datos.";
            } else {
                $error = $this->con->error;
            }

        // cosas
        
            echo $error;
            echo '<script type="text/javascript">';
            echo 'alert("Error en la captura de tu registro intenta nuevamente' . $error . '");';
            echo 'window.location.assign("../index.php");';
            echo '</script>';
            echo '<meta http-equiv="refresh" content="0, url=../index.php">';
            die('Invalid query: ' . $this->con->error);
        } else {
            echo '<script type="text/javascript">';
            echo 'alert("Su Registro ha sido Correcto");';
            echo 'window.location.assign("../index.php");';
            echo '</script>';
            echo '<meta http-equiv="refresh" content="0, url=../index.php">';
        }
        return;*/
    }

    function obteneIdusuario($username) {
        $sql = "SELECT id FROM 01_user where username='$username';";
        $result = $this->con->consultaRetorno($sql);
        $userId = $result->fetch_array();
        return $userId[0];
    }

    function FirstDatosPers($nombre, $ap_paterno, $ap_materno, $email, $ultima_actualizacion, $userId,$carrera) {
        $sql = "INSERT INTO alumnos_datos_personales (nombre,ap_paterno,ap_materno,email,ultima_actualizacion,prf_tipo,user_id,carrera) 
        VALUES ('$nombre','$ap_paterno','$ap_materno','$email','$ultima_actualizacion','1','$userId','$carrera')";

        $result=$this->con->consultaSimple($sql);

        //$result = mysql_query("INSERT INTO alumnos_datos_personales (nombre,ap_paterno,ap_materno,email,ultima_actualizacion,prf_tipo,user_id,carrera) 
        //VALUES ('$nombre','$ap_paterno','$ap_materno','$email','$ultima_actualizacion','1','$userId','$carrera')");

        /*if (!$result) {
            $error = 'Invalid query: ' . $this->con->error;
            echo '<script type="text/javascript">';
            echo 'alert("Error en la captura de tu registro intenta nuevamentezzzzz' . $error . '");';
            echo 'window.location.assign("../index.php");';
            echo '</script>';
            die('Invalid query: ' . $this->con->error);
        } else {
            echo '<script type="text/javascript">';
            echo 'alert("Gracias por registrarte");';
            echo 'window.location.assign("../index.php");';
            echo '</script>';
        }
        return;*/
    }

    function obteneNombreCompleto($id) {

        $sql = "SELECT nombre,ap_paterno,ap_materno FROM alumnos_datos_personales where user_id='$id';";
        $result = $this->con->consultaRetorno($sql);
        $i = 0;

        while ($fila = $result->fetch_array()) {
            echo " <b> ";
            echo $nombre[$i] = $fila[0];
            echo " ";
            echo $ApellidoPaterno[$i] = $fila[1];
            echo " ";
            echo $ApellidoMaterno[$i] = $fila[2];
            echo "</b> ";
            $i++;
        }
    }
 
    function permutaArreglo($tama){
        $numeroEle=$tama-1;
        $permu = array();
        $numeroAle=rand(0,$numeroEle);
        $permu[]=$numeroAle;
        for ($i=0; $i < $numeroEle; $i++) { 
            do{
                $numeroAle=rand(0,$numeroEle);
                $ban=0;     
                foreach ($permu as $key ) {
                    if($key==$numeroAle){
                        $ban=1;             
                    }
                }
            }while($ban==1);
            $permu[]=$numeroAle;
        }

        return $permu;
    }

    function ExamenExaniDinamicoPorAlumno($idAlumno,$numPreg){

        $idExamen = 1;

        //cuenta numero de preguntas por examen de cada carrera
        
        $sqlC = "SELECT count(id_exani) FROM exaniinterno;";
        $result1 = $this->con->consultaRetorno($sqlC);
        $datoExtraido=$result1->fetch_array();
        $numeroTotal=$datoExtraido[0];

        $desordenado=$this->permutaArreglo($numeroTotal);    //genera arreglo de tamaño n desordenado

        //consulta de preguntas de exxamen

        $sql = "SELECT id_exani,respuesta_correcta FROM exaniinterno;";
        $result = $this->con->consultaRetorno($sql);

        //genera arreglo desordenado de preguntas

        $arreConsulId = array();
        $arreConsulRes = array();

        while($algo=$result->fetch_array()){
            $arreConsulId[]=$algo[0];   
            $arreConsulRes[]=$algo[1];   
        }

        //guarda examen  dinamico por alumno

        for($i=0;$i<$numPreg;$i++){

            $valor15=$arreConsulId[$desordenado[$i]];
            $valor16=$arreConsulRes[$desordenado[$i]];
        
            $salSave="INSERT INTO preguntas_por_alumno(id_alumno, id_examen, id_pregunta, correcta)
                    VALUES ($idAlumno, $idExamen, '$valor15', '$valor16');";
            $guarda=$this->con->consultaSimple($salSave);
        
        }

        //guarda bitacora de examenes, con esto se verificará si ya hay examen, si ya está contestado o si ya está iniciado

        $salSave="INSERT INTO bitacora_alumno(id_alumno, id_examen, id_status) 
                VALUES ($idAlumno, $idExamen, 0);";
        $guarda=$this->con->consultaSimple($salSave);
        $salSave="INSERT INTO bitacora_alumno(id_alumno, id_examen, id_status) 
                VALUES ($idAlumno, 2, 0);";
        $guarda=$this->con->consultaSimple($salSave);
        $salSave="INSERT INTO bitacora_alumno(id_alumno, id_examen, id_status) 
                VALUES ($idAlumno, 3, 0);";
        $guarda=$this->con->consultaSimple($salSave);
    }      

    function verificaExisteExamen($idAlumno){
        $sql = "SELECT count(id_bitacora) FROM bitacora_alumno where id_alumno='$idAlumno';";
        $result = $this->con->consultaRetorno($sql);
        $existe = $result->fetch_array();
        return $existe[0];
    }

    function verificaExtadoExamen($idAlumno,$idExamen){
        $sql = "SELECT id_status FROM bitacora_alumno where id_alumno='$idAlumno' and id_examen='$idExamen';";
        $result = $this->con->consultaRetorno($sql);
        $existe = $result->fetch_array();
        
        $estatusExam="";

        if($existe[0]==0){
          $estatusExam="enabled";            
        }else{
          $estatusExam="disabled";            
        }

        return $estatusExam;
    }

    //función para contar preguntas de cada examen por alumno

    function cuentaPreguntasExamen($idAlumno,$idExamen){
        $sql = "SELECT count(id_palumno) FROM preguntas_por_alumno where id_alumno='$idAlumno' and id_examen='$idExamen';";
        $result = $this->con->consultaRetorno($sql);
        $numPreg = $result->fetch_array();
        return $numPreg[0];        
    }

    //función que llene la primera parte del carrusel
    function itemsCarrusel($idAlumno,$idExamen){
        $numPreg=$this->cuentaPreguntasExamen($idAlumno,$idExamen);

        echo '<li data-target="#myCarousel" data-slide-to="0" class="active"></li>';

        for ($i=1; $i < $numPreg ; $i++) { 
            # code...
            echo '<li data-target="#myCarousel" data-slide-to="'.$i.'"></li>';
        }
    }

    //función para llenar cada div con la pregunta especificada
    function elementosSlide($idAlumno,$idExamen){

        $numPreg=$this->cuentaPreguntasExamen($idAlumno,$idExamen);

        $sql = "SELECT id_pregunta,respuesta FROM preguntas_por_alumno where id_alumno='$idAlumno' and id_examen='$idExamen';";
        $result = $this->con->consultaRetorno($sql);

        //genera arreglo desordenado de preguntas

        $arrIdes=array();
        $arrPreg=array();
        $arrRes1=array();
        $arrRes2=array();
        $arrRes3=array();
        $arrRes4=array();
        $arrRespuesta=array();

        $nomExam="";
        $nomIdExam="";

        switch ($idExamen) {
            case '1':
                $nomExam="exaniinterno";
                $nomIdExam="id_exani";
                break;
            case '2':
                $nomExam="examen_especialidad";
                $nomIdExam="id_especialidad";
                break;
            case '3':
                $nomExam="examen_gerenciales";
                $nomIdExam="id_gerenciales";
                break;
            case '4':
                $nomExam="examen_lenguas";
                $nomIdExam="id_lenguas";
                break;
            case '5':
                $nomExam="exaniinterno";
                $nomIdExam="id_exani";
        }

        while($algo=$result->fetch_array()){
            $sql2 = "SELECT * FROM ".$nomExam." WHERE ".$nomIdExam." = '".$algo[0]."';";  //comparar por el id de Examen la consulta
            $result2=$this->con->consultaRetorno($sql2);
            $pregaa=$result2->fetch_array();
            $arrIdes[]=$pregaa[0];
            $arrPreg[]=$pregaa[1];
            $arrRes1[]=$pregaa[2];
            $arrRes2[]=$pregaa[3];
            $arrRes3[]=$pregaa[4];
            $arrRes4[]=$pregaa[5];
            $arrRespuesta[]=$algo[1];
        }

        for($i=0;$i<$numPreg;$i++){
            $activoP="";            
            $numeroMas=$i+1;
            if($i==0){
                $activoP="active";
                }
                $cheq1="";
                $cheq2="";
                $cheq3="";
                $cheq4="";
                $cheq5="";
            switch ($arrRespuesta[$i]) {
                case '1':
                    # code...
                    $cheq1='checked="checked"';
                break;
                case '2':
                    # code...
                    $cheq2='checked="checked"';
                break;
                case '3':
                    # code...
                    $cheq3='checked="checked"';
                break;
                case '4':
                    # code...
                    $cheq4='checked="checked"';
                break;
                case '5':
                    # code...
                    $cheq5='checked="checked"';
                break;
                                
            }            
                    echo '<div class="item '.$activoP.'">        
                            <div class="concentrado">';

                            if(substr($arrPreg[$i],-3)!="png" || substr($arrPreg[$i],-3)!="png" ){
                                echo '<h3 class="demoHeaders">'.$arrPreg[$i].'</h3>';
                            }else{
                                echo '<img src="../imagenExam/'.$arrPreg[$i].'" alt="imagen" width="100%" height= "450px" >';
                            }

                                echo '<div class="radioset">';
                                if($arrRes1[$i]!=""){ 
                                    echo '<input class = "radito" value = "1" type="radio" id="radio'.$i.'1" name="'.$arrIdes[$i].'" '.$cheq1.'>
                                    <label for="radio'.$i.'1">'.$arrRes1[$i].'</label>';
                                }
                                if($arrRes2[$i]!=""){ 
                                    echo '<input class = "radito" value = "2" type="radio" id="radio'.$i.'2" name="'.$arrIdes[$i].'" '.$cheq2.'>
                                    <label for="radio'.$i.'2">'.$arrRes2[$i].'</label>';
                                }
                                if($arrRes3[$i]!=""){ 
                                    echo '<input class = "radito" value = "3" type="radio" id="radio'.$i.'3" name="'.$arrIdes[$i].'" '.$cheq3.'>
                                    <label for="radio'.$i.'3">'.$arrRes3[$i].'</label>';
                                }
                                if($arrRes4[$i]!=""){ 
                                    echo '<input class = "radito" value = "4" type="radio" id="radio'.$i.'4" name="'.$arrIdes[$i].'" '.$cheq4.'>
                                    <label for="radio'.$i.'4">'.$arrRes4[$i].'</label>';
                                }
                                echo '<input class = "radito" value = "5" type="radio" id="radio'.$i.'5" name="'.$arrIdes[$i].'" '.$cheq5.' style="display:none;" > 
                                </div>
                            </div>
                            <div class="carousel-caption">
                                <h3>Pregunta '.$numeroMas.'</h3>          
                            </div>
                        </div>';
                
        }
    }

    function updatePreguntaAlumno($idAlumno,$idPregunta,$idExamen,$respuesta){

        $actualizaRes = "UPDATE preguntas_por_alumno SET respuesta = '$respuesta' WHERE id_alumno='$idAlumno' and id_examen='$idExamen' and id_pregunta='$idPregunta';";
        $guarda=$this->con->consultaSimple($actualizaRes);

        //return "hizo algo acá";

    }

    function guardaResultados($idAlumno,$idExamen){

        if($idExamen == 2){
            $result3=$this->con->consultaSimple("UPDATE bitacora_alumno SET id_status = 1 WHERE id_alumno='$idAlumno' and id_examen='$idExamen';");
        }else{

        $response=$this->con->consultaRetorno("SELECT * FROM preguntas_por_alumno WHERE id_alumno='$idAlumno' and id_examen='$idExamen';");
        
        $right_answer=0;
        $wrong_answer=0;
        $unanswered=0;
        $i=0;
        while($result=$response->fetch_array()){ 
            if($result[4]==$result[5]){
                $right_answer++;
            }else if($result[4]==5){
                $unanswered++;
            }
            else{
                $wrong_answer++;
            }
        $i++;
        }
        $fecha= date('Y-m-d H:i:s');
        $periodo='Ingreso 2018';
        $totalserie=($right_answer/$i)*100;

        $result2 = $this->con->consultaSimple("INSERT INTO resultados(id_alumno,no_serie,correctas,incorrectas,sicontestar,totalserie,fecha,periodo)
            VALUES('$idAlumno','$idExamen','$right_answer','$wrong_answer','$unanswered','$totalserie','$fecha','$periodo');");        
        if (!$result2) {
            $error = 'Invalid query: ' . $this->con->error;
            echo '<script type="text/javascript">';
            echo 'alert("Error en la captura de tus respuestas' . $error . '");';
            echo 'window.location.assign("index.php");';
            echo '</script>';
            die('Invalid query: ' . $this->con->error);
        } else {

            $result3=$this->con->consultaSimple("UPDATE bitacora_alumno SET id_status = 1 WHERE id_alumno='$idAlumno' and id_examen='$idExamen';");
        }
    }
    }

    function ObtenerDatosResultadosSerie() {

        $sql="SELECT alumnos_datos_personales.user_id  , alumnos_datos_personales.nombre , alumnos_datos_personales.ap_paterno, alumnos_datos_personales.ap_materno, alumnos_datos_personales.carrera  ,
        MAX(CASE WHEN no_serie = 1 THEN correctas ELSE 0 END) Bien_basicas,
        MAX(CASE WHEN no_serie = 1 THEN incorrectas ELSE 0 END) Mal_basicas,
        MAX(CASE WHEN no_serie = 1 THEN totalserie ELSE 0 END) basicas,
        MAX(CASE WHEN no_serie = 3 THEN correctas ELSE 0 END) Bien_Ingles,
        MAX(CASE WHEN no_serie = 3 THEN incorrectas ELSE 0 END) Mal_Ingles,
        MAX(CASE WHEN no_serie = 3 THEN totalserie ELSE 0 END) ingles,
        periodo
        FROM alumnos_datos_personales,resultados
        where alumnos_datos_personales.user_id=resultados.id_alumno
        group by user_id;";
        
        $result = $this->con->consultaRetorno($sql);
        $i = 0;
        while ($fila = $result->fetch_array()) {
            echo "<tr class='odd gradeX'>";
            echo " <td>";
            echo $ID[$i] = $fila[0];
            echo " </td>";
            echo " <td>";
            echo $NOMBRE[$i] = $fila[1];
            echo " </td>";
            echo" <td>";
            echo $appaterno[$i] = $fila[2];
            echo" </td>";
            echo" <td>";
            echo $apmaterno[$i] = $fila[3];
            echo" </td>";
            echo" <td>";
            echo $carrera[$i] = $fila[4];
            echo" </td>";
            echo" <td>";
            echo $fila[5];
            echo" </td>";
            echo" <td>";
            echo $fila[6];
            echo" </td>";
            echo" <td>";
            echo $fila[7];
            echo" </td>";
            echo" <td>";
            echo $fila[8];
            echo" </td>";
            echo" <td>";
            echo $fila[9];
            echo" </td>";
            echo" <td>";
            echo $fila[10];
            echo" </td>";
            echo" <td>";        
            echo $fila[11];
            echo" </td>";
            echo" </tr>";
            $i++;
        }
    }

    function ObtenerUsuariosAlumnos() {

        $sql = "SELECT id,username,password,email,fecha_hora_alta FROM 01_user where tipo_usuario=1;";
        $result = $this->con->consultaRetorno($sql);
        $i = 0;
    
        //echo $valorterman;
        while ($fila = $result->fetch_array()) {
            echo "<tr class='odd gradeX'>";
            echo "<td>";
            echo $ID[$i] = $fila[0];
            echo " </td>";
            echo " <td>";
            echo $user[$i] = $fila[1];
            echo" </td>";
            echo" <td>";
            echo $pass[$i] = $fila[2];
            echo" </td>";
            echo" <td>";
            echo $email[$i] = $fila[3];
            echo" </td>";
            echo" <td>";
            echo $fecha[$i] = $fila[4];
            echo" </td>";
            echo" </tr>";
            $i++;
        }
    }

    function obtieneExamenIngles(){
        $sql="select * from nivela_ingles";

        $result = $this->con->consultaRetorno($sql);

        return $result;
    }

    function obtieneTotalPreguntasIngles(){
        $sql="select count(id) from nivela_ingles";
        $result = $this->con->consultaRetorno($sql);
        $cuenta = $result->fetch_array();
        $totalPreg=$cuenta[0];

        return $totalPreg;
    }

    function respuestasNivelaIngles(){
        $sql = "select id,question_name,answer from nivela_ingles;";

        $result = $this->con->consultaRetorno($sql);

        return $result;
    }

    function guardaResultadosIngles($id_alumno,$idExamen,$right_answer,$wrong_answer,$unanswered,$totalserie,$periodo){
        $fecha= date('Y-m-d H:i:s');

        $result = $this->con->consultaSimple("INSERT INTO resultados(id_alumno,no_serie,correctas,incorrectas,sicontestar,totalserie,fecha,periodo)
            VALUES('$id_alumno','$idExamen','$right_answer','$wrong_answer','$unanswered','$totalserie','$fecha','$periodo');");        
        if (!$result) {
            $error = 'Invalid query: ' . $this->con->error;
            echo '<script type="text/javascript">';
            echo 'alert("Error en la captura de tus respuestas' . $error . '");';
            echo 'window.location.assign("index.php");';
            echo '</script>';
            die('Invalid query: ' . $this->con->error);
        } else {

            $result2=$this->con->consultaSimple("UPDATE bitacora_alumno SET id_status = 1 WHERE id_alumno='$id_alumno' and id_examen='$idExamen';");
        }

    }
}

?>
