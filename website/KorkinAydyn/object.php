<html>
 <head>
  <title>WEB-site of the KorkinAydyn</title>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
 </head>
 <body>
<?php
printf('<P>Hello World! object  </P>');
$link = mysqli_connect(($server, $user, $password, $database) or die('Error! You suck!'.mysqli_connect_error());
echo '<P>Successfully connected<\P>';

$SQLquery = 'SELECT * FROM Object';
$SQLresult = mysqli_query($link,$SQLquery);
while ($result = mysqli_fetch_array($SQLresult,MYSQLI_NUM))
	{
		printf('<TR>');
		printf('<TD> %s </TD> <TD>%s</TD> <TD> %s (%d) </TD>',$result[1],$result[2],$result[5],$result[6]);
		printf('</TR> %s',"\n");
	}
	printf('</table> %s',"\n");

mysqli_free_result($SQLresult);
mysqli_close($link);
?>
<BR>
<a href="index.html"> <P>GO BACK</P> </a>
 </body>
</html>
