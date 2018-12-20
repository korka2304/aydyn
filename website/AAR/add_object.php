<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Horchoev_Burtsev</title>
	<link rel="stylesheet" type="text/css" href="sitecss.css">
	<link rel="shortcut icon" href="logo.png" type="image/png" >
</head>
<body>
	<div class="container">
		<div class="header">
				Welcome to Horchoev_Burtsev site.
				<p> Please feel free to browse thorugh the site.</p>
		</div>
		<div class="sidebar">
			<P>Навигация</P><br>
        <a href="allcustomers.php"> <P>Клиенты</P> </a>
        <a href="allobjects.php"> <P>Объекты</P> </a>
        <a href="photos.php"> <P>Фотографии</P> </a>
        <a href="add_object.php"> <P>Добавить новый объект</P> </a>
        <a href="index2.html"> <P>Главная страница</P> </a>
		</div>
		<div class="content">
			 	<table width="100%" cellspacing="0" border="1">	
		<TR>
			<TH>Table column 1</TH>
		</TR>
		<TR>
			<TD>
			  <P>Add object:</P>
			  <form action="add_object_form.php" method="post">
					adress: <input type="text" name="adress">
          		  	<br>
					square: <input type="text" name="square">
          		  	<br>
					room: <input type="text" name="room">
          		  	<br>
					floors: <input type="text" name="floors">
          		  	<br>
					descriptionl: <input type="text" name="descriptionl">
          		  	<br>
					price: <input type="text" name="price">
          		  	<br>
					predoplata: <input type="text" name="predoplata">
          		  	<br>
					free: <input type="text" name="free">
          		  	<br>
					idowner:

				<select name="idowner">
					<?php 

					$link = mysqli_connect('10.14.129.132', 'HorchoevArtur', 'we4DGTeQ','HorchoevArturDB')
    				or die('Error: Unable to connect: ' . mysqli_connect_error());
	
					$SQLquery = 'SELECT idcustomer,CONCAT(surname, \' \', name) FROM customers';
					$SQLresult = mysqli_query($link,$SQLquery);
					while ($result = mysqli_fetch_array($SQLresult,MYSQLI_NUM))
					{
						printf('<option value=%d> %s </option>',$result[0],$result[1]);
					}


					mysqli_free_result($SQLresult);
					mysqli_close($link);
					?>
				</select>
          		  	<br>
            		  	<input type="submit" value="Add object">
      			  </form>
			</TD>
		</TR>
	<?php

?>
</table>
<BR>

<a href="index2.html"> <P>На главную</P> </a>
		</div>
		<div class="footer">
			&copy; Horchoev_Burtsev 2018
		</div>
	</div>
</body>
</html>