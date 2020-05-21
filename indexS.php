<?php
  
  session_start();
  
  if(isset($_SESSION['account_name']) && $_SESSION["tipo_usuario"]==1){
      header('Location: validar_tipo_usuario.php'); 
  }else if(isset($_SESSION['account_name']) && $_SESSION["tipo_usuario"]==3){
    header('Location: validar_tipo_usuario.php'); 
  }

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Ingreso 2018</title>
    <link rel="stylesheet" href="indexSeani/css/fontello.css">
    <link rel="stylesheet" href="indexSeani/css/bootstrap.min.css">
    <style>
        body{
            background: linear-gradient(to left, rgba(255,0,0,0), rgb(171, 240, 171));
        }
    </style>
</head>
<body>
    
    <div class="container mt-1 mt-md-5 pt-1 pt-md-5">
        <div class="row justify-content-center">  
            <div class="col-12 col-sm-8 col-md-5 cardlog">
                <div class=" shadow card">
                    <div class="card-header">
                        <ul class="nav nav-tabs">
                            <li class="nav-item">
                                <a href="#tab1" class="nav-link active" data-toggle="tab">
                                    <i class="icon-login"></i>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="#tab2" class="nav-link" data-toggle="tab">
                                    <i class="icon-user-plus"></i>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="card-body tab-content">
                        <div class="tab-pane active px-3 py-3" id="tab1" role="tabpanel">
                            
                            <div class="form-group mb-3">
                                <input type="text" name="user" id="user" class="form-control" placeholder="Usuario" required="true">
                            </div>
                            <div class="form-group">
                                    <input type="password" name="pass" id="pass" class="form-control" placeholder="contraseña" required="true">
                            </div>

                            <button class="btn btn-block btn-outline-primary py-2" id="ingresa">Ingresar</button>
                        </div>

                        <div class="tab-pane p-3" id="tab2" role="tabpanel">
                                <div class="form-group mb-3">
                                    <input type="text" name="correo" id="correo" class="form-control" placeholder="E-mail">
                                </div>
                                <div class="form-group mb-3">
                                    <input type="text" name="usuario" id="usuario" class="form-control" placeholder="Usuario">
                                </div>
                                <div class="form-group">
                                        <input type="password" name="password" id="password" class="form-control" placeholder="Contraseña">
                                </div>

                                <div class="form-group mb-3">
                                    <input type="text" name="nombre" id="nombre" class="form-control" placeholder="Nombre">
                                </div>
                                <div class="form-group mb-3">
                                    <input type="text" name="apP" id="apP" class="form-control" placeholder="Apellido Paterno">
                                </div>
                                <div class="form-group mb-3">
                                    <input type="text" name="apM" id="apM" class="form-control" placeholder="Apellido Materno">
                                </div>
                                <div class="form-group">
                                    <label for="carrera">Carrera</label>
                                    <select name="carrera" id="carrera" class="form-control">
                                        <option value=""></option>
                                        <option value="TICMCE">TICMCE</option>
                                        <option value="DNAM">DNAM</option>
                                        <option value="PIAA">PIAA</option>
                                        <option value="PIAM">PIAM</option>
                                        <option value="MAAU">MAAU</option>
                                        <option value="DMIAP">DMIAP</option>
                                        <option value="MAI">MAI</option>
                                        <option value="PIAP">PIAP</option>
                                    </select>
                                </div>
                                <button class="btn btn-block btn-outline-primary py-2" id="registra">Registrar</button>
                        </div>
                         
                    </div>
                </div>
            </div>
           
        </div>
    </div>

    <script src="indexSeani/js/jquery.min.js"></script>
    <script src="indexSeani/js/popper.min.js"></script>
    <script src="indexSeani/js/bootstrap.min.js"></script>
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