<html>
 <head>
  <title>WEB-site of the KorkinAydyn</title>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
 </head>
 <body>
<?php
printf('<P>CLIENT  </P>');

include('config.php');	
$link = mysqli_connect($server, $user, $password, $database) or die('Error! You suck!'.mysqli_connect_error());
echo '<P>Successfully connected</P>';

$SQLquery = 'SELECT * FROM Client';
$SQLresult = mysqli_query($link,$SQLquery);
printf('<table cellspacing=\' 0 \' border=\' 1 \'> %s',"\n");
	printf('<TR> %s',"\n");
	printf('	<TH>familyName</TH> %s',"\n");
	printf('	<TH>Name</TH> %s',"\n");
	printf('	<TH>kianfouName</TH> %s',"\n");
	printf(' <TH> Passs</TH> %s' ," \n");
printf('	<TH>Adress</TH> %s',"\n");
printf('	<TH>srok</TH> %s',"\n");

	printf('</TR> %s',"\n");
while ($result = mysqli_fetch_array($SQLresult,MYSQLI_NUM))
	{
		printf('<TR>');
		printf('<TD> %s </TD> <TD>%s </TD> <TD> %s</TD> <TD>%d </TD> <TD> %s</TD> <TD> %d</TD> <TD> %d</TD>',$result[0],$result[1],$result[2],$result[3],$result[5],$result[6]);
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