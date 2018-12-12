<html>
<head>
<title>Online Drugstore Database</title>
</head>
<body>
<?php
	printf('<P>Hello world!</P> %s',"\n");
	include('config.php');
	$link=mysqli_connect($server,$user,$password,$database)
	 or die('Error: Unable to connect');
	printf('<P>Succesfully connected!</P>  %s',"\n");

	$SQLquery='SELECT `Name` from `DrugsNew` INNER JOIN `Makers` on `DrugsNew`.`Maker`=`Makers`.`ID`,`Medicine` on `DrugsNew`.`Medicine`=`Medicine`.`ID`' ;
	$SQLquery=mysqli_query($link,$SQLquery);
	printf('<table cellspacing=\' 0 \' border=\' 1 \'> %s',"\n");
	
	printf('<TR> %s',"\n");
	
	printf('	<TH>Name</TH> %s',"\n");
	
	printf('	<TH>Maker</TH> %s',"\n");
	
	printf('	<TH>Medicine</TH> %s',"\n");
	
	printf('</TR> %s',"\n");


	
	
	while ($result = mysqli_fetch_array($SQLresult,MYSQLI_NUM))
	
	{
		
		printf('<TR>');
		
		printf('<TD> %s </TD> <TD> %s </TD> <TD> %s </TD>',$result[1],$result[2],$result[3]);
			printf('</TR> %s',"\n");
	
	}
	
	printf('</table> %s',"\n");
	
	mysqli_free_result($SQLresult);
	
	mysqli_close($link);

	

?>
<br>
<a href="index.html"><P>go back</P></a>
</body>
</html>