<?php
	define('HOST', 'localhost');
	define('USER', 'root');
	define('PASS', '');
	define('BASE', 'ticket');

	$conn = new MySQLi(HOST,USER,PASS,BASE);

	if(mysqli_connect_errno()){
		printf("Erro ao conectar: ", mysqli_connect_error());
		exit();
	}