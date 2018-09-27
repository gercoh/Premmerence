
<!-- /* Created by PhpStorm.-->
<!-- * User: Admin-->
<!-- * Date: 27.09.2018-->
<!-- * Time: 10:47-->
<!-- */-->

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Категории</title>
</head>
<body>
<form method="post" action="add.php">
<table>
	<tr>
		<td>Название:</td>
		<td><input type="text" name="name" value="name" size='30' /></td>
		<td><input type="text" name="email" value="@mail" size='30' /></td>
		<td><input type="text" name="country" value="country" size='30' /></td>
		<td><input type="submit" name="submit" value="Создать" /></td>
	</tr>
</table>
</form>
<br/>
<table border="1">
	<?php
	include("db.php");
	$result1 = mysqli_query($conn,"SELECT * FROM `userdata`");

	$result2 = mysqli_query($conn,"SELECT * FROM `usercountry`");

	if (!$result1)
		die("Error: Data not found.");
    if (!$result2)
        die("Error: Data not found.");

	while($test = mysqli_fetch_array($result1)  ) {
		$id = $test['id'];
		echo "\n<tr>";
		echo"<td>" .$test['name']."</td>";
		echo"<td>" .$test['email']."</td>";
        if($test2 = mysqli_fetch_array($result2)) {
            echo "<td>" . $test2['country'] . "</td>";

        }



		echo"<td> <a href ='edit.php?id=$id'>Редактировать</a>";
		echo"<td> <a href ='delete.php?id=$id'>Удалить</a>";
		echo "</tr>";
	}
	mysqli_close($conn);
	?>
</table>
</body>
</html>