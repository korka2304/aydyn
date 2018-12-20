<html>
 <head>
  <title>Online Drugstore Database</title>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
 </head>
 <body>
    <?php
	printf('<P>Makers: v1.0</P> %s',"\n");
	
	$link = mysqli_connect('10.14.129.132', 'LebedkinAnatolij', 'QFbg8V97', 'LebedkinAnatolijDB')
	    or die('Error: Unable to connect: ' . mysqli_connect_error());
	printf('<P>Succesfully connected!</P> %s',"\n");
	
	$SQLquery = 'SELECT Makers.ID,Makers.Name,Adresses.Adress,Cities.Name,Country.Name FROM Makers JOIN Adresses ON Makers.Adress=Adresses.ID JOIN Cities ON Adresses.City=Cities.ID JOIN Country ON Cities.Country=Country.ID';
	$SQLresult = mysqli_query($link,$SQLquery);

	printf('<table cellspacing=\' 0 \' border=\' 1 \'> %s',"\n");
	printf('<TR> %s',"\n");
	printf('	<TH>ID</TH> %s',"\n");
	printf('	<TH>Name</TH> %s',"\n");
	printf('	<TH>Adress</TH> %s',"\n");
	printf('	<TH>City</TH> %s',"\n");
	printf('	<TH>Country</TH> %s',"\n");
	printf('</TR> %s',"\n");
	
	while ($result = mysqli_fetch_array($SQLresult,MYSQLI_NUM))
	{
		printf('<TR>');
		printf('<TD> %s </TD> <TD>%s</TD> <TD>%s</TD> <TD>%s</TD> <TD>%s</TD>',$result[0],$result[1],$result[2],$result[3],$result[4]);
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