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
        <a href="allcustomers.php"> <P>All customers</P> </a>
        <a href="allobjects.php"> <P>All objects</P> </a>
        <a href="photos.php"> <P>photos</P> </a>
        <a href="add_object.php"> <P>add object</P> </a>
		</div>
		<div class="content">
				<?php
	printf('<P>Hello world! Searching for every customer:</P> %s',"\n");
	
	$link = mysqli_connect('10.14.129.132', 'HorchoevArtur', 'we4DGTeQ','HorchoevArturDB')
	    or die('Error: Unable to connect: ' . mysqli_connect_error());
	printf('<P>Succesfully connected!</P> %s',"\n");
	
	$SQLquery = 'SELECT * FROM customers';
	$SQLresult = mysqli_query($link,$SQLquery);

	printf('<table cellspacing=\' 0 \' border=\' 1 \'> %s',"\n");
	printf('<TR> %s',"\n");
	printf('	<TH>idcustomer</TH> %s',"\n");
	printf('	<TH>passport</TH> %s',"\n");
	printf('	<TH>adress</TH> %s',"\n");
	printf('	<TH>surname</TH> %s',"\n");
	printf('	<TH>name</TH> %s',"\n");
	printf('	<TH>fathername</TH> %s',"\n");
	printf('</TR> %s',"\n");


	while ($result = mysqli_fetch_array($SQLresult,MYSQLI_NUM))
	{
		printf('<TR>');
		printf('<TD> %s </TD> <TD>%s</TD> <TD> %s  </TD><TD> %s  </TD><TD> %s  </TD><TD> %s  </TD>',$result[0],$result[1],$result[2],$result[3],$result[4],$result[5]);
		printf('</TR> %s',"\n");
	}
	printf('</table> %s',"\n");
	mysqli_free_result($SQLresult);
	mysqli_close($link);

?>
<BR>
<a href="index.html"> <P>GO BACK</P> </a>
		</div>
		<div class="footer">
			&copy; Horchoev_Burtsev 2018
		</div>
	</div>
</body>
</html>