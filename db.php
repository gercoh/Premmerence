<?php
/**
 * Created by PhpStorm.
 * User: Admin
 * Date: 27.09.2018
 * Time: 10:48
 */

$host = 'localhost'; // адрес сервера
$database = 'users'; // имя базы данных
$user = 'root'; // имя пользователя
$password = ''; // пароль

	$conn = mysqli_connect($host,$user,$password,$database);
	if (!$conn) {
        die('Could not connect: ' . mysqli_error());
    }
	// mysqli_query($conn,'m_category' );
?>