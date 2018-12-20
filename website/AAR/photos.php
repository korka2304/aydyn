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
			<?php
	printf('<P>Hello world! Searching for every customer:</P> %s',"\n");
	
	$link = mysqli_connect('10.14.129.132', 'HorchoevArtur', 'we4DGTeQ','HorchoevArturDB')
	    or die('Error: Unable to connect: ' . mysqli_connect_error());
	printf('<P>Succesfully connected!</P> %s',"\n");
	
	$SQLquery = 'SELECT * FROM photos';
	$SQLresult = mysqli_query($link,$SQLquery);
	$varA;

	printf('<table cellspacing=\' 0 \' border=\' 1 \'> %s',"\n");
	printf('<TR> %s',"\n");
	printf('	<TH>photos</TH> %s',"\n");
	printf('</TR> %s',"\n");


	while ($result = mysqli_fetch_array($SQLresult,MYSQLI_NUM))
	{
		printf('<TR>');
		printf('<TD> %s </TD>',$result[2]);
		$varA = $result[2];
		printf('</TR> %s',"\n");
	}
	printf('</table> %s',"\n");
	mysqli_free_result($SQLresult);
	mysqli_close($link);

?>
<table width="100%" cellspacing="0" border="1">	
		<TR>
			<TH>Table column 1</TH>
		</TR>
		<TR>
			<TD>
			  <img src=<?php echo $varA;?> alt="This is how my library will look like" />			
			</TD>
		</TR>
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