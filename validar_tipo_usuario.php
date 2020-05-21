<?php
session_start();

if (!$_SESSION["account_name"]){

   header('Location: index.php');
 
  }else if($_SESSION["tipo_usuario"]==1 && $_SESSION["estatus"]==1){
   	// create SESSION  
     		//	header('Location: index.php');
        echo '<script language="javascript">'; 
        echo 'ventana = window.open("examen/index.php","ventana","fullscreen=1")'; 
        echo '</script>';            
  }
    else if($_SESSION["tipo_usuario"]==2 && $_SESSION["estatus"]==1){
   	// create SESSION  

			   header('Location: directorc/AdminDirectorC.php');
  }
   else if($_SESSION["tipo_usuario"]==3 && $_SESSION["estatus"]==1){
   	// create SESSION  

			   header('Location: admin/index.php');
  }else if($_SESSION["estatus"]==2){
  		echo '<script type="text/javascript">';				
    	echo 'alert("Error usuario desactivado'.$error.'");';
    	echo 'window.location.assign("index.php");';
	    echo '</script>';
  }

?>

<?php
session_start();
if (!$_SESSION["account_name"]) {

//    header('Location: ../index.php');
    echo '<script type="text/javascript">';
    echo 'alert("No has iniciado sesión' . $error . '");';
    echo 'window.location.assign("../index.php");';
    echo '</script>';
} else if ($_SESSION["tipo_usuario"] != 1) {
    // create SESSION  
    echo '<script type="text/javascript">';
    echo 'alert("No tiene permiso acceder a esta zona' . $error . '");';
    echo 'window.location.assign("../index.php");';
    echo '</script>';
} else if ($_SESSION["estatus"] == 2) {
    echo '<script type="text/javascript">';
    echo 'alert("No tiene permiso acceder a esta zona' . $error . '");';
    echo 'window.location.assign("../index.php");';
    echo '</script>';
}
ini_set('session.bug_compat_42', "0");
ini_set('session.bug_compat_warn', "0");
?>