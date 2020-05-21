<?php
define('DB_HOST', 'localhost');
define('DB_NAME', 'uttlaxca_seani');
define('DB_USER','uttlaxca_seani');
define('DB_PASSWORD','uttseani2017');

$con=mysql_connect(DB_HOST,DB_USER,DB_PASSWORD) or die("Failed to connect to MySQL: " . mysql_error());
$db=mysql_select_db(DB_NAME,$con) or die("Failed to connect to MySQL: " . mysql_error());


//$con = new \mysqli("localhost","uttlaxca_seani","uttseani2017","uttlaxca_seani");


?>