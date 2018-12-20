<html>
 <head>
  <title>Rabotniki</title>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
 </head>
 <body>
	<?php
	printf('<P>Spisok rabotnikov:</P> %s',"\n");
	// ������塞��, �롨ࠥ� ���� ������ VER3
	
	$link = mysqli_connect('10.14.129.132', 'EgorovaTatyana', 'zEdAkFNC','EgorovaTatyanaDB')
	    or die('Error: Unable to connect: ' . mysqli_connect_error());
	printf('<P>Succesfully connected!</P> %s',"\n");
	
	// �믮��塞 SQL-�����
	$SQLquery = 'SELECT * FROM rabotniki';
	$SQLresult = mysqli_query($link,$SQLquery);

	printf('<table cellspacing=\' 0 \' border=\' 1 \'> %s',"\n");
	printf('<TR> %s',"\n");
	printf('	<TH>Doctor</TH> %s',"\n");
	printf('	<TH>Degree</TH> %s',"\n");
	printf('	<TH>Specialty</TH> %s',"\n");
	printf('	<TH>Speciality</TH> %s',"\n");
	printf('	<TH>Passport</TH> %d',"\n");
	printf('</TR> %s',"\n");


	while ($result = mysqli_fetch_array($SQLresult,MYSQLI_NUM))
	{
		printf('<TR>');
		printf('<TD> %s %s %s </TD> <TD> %s </TD> <TD> %s </TD> <TD> %s </TD> <TD> %d </TD>',$result[0],$result[1],$result[2],$result[3],$result[4],$result[5],$result[6]);
		printf('</TR> %s',"\n");
	}
	printf('</table> %s',"\n");
	// �᢮������� ������ �� १����
	mysqli_free_result($SQLresult);
	mysqli_close($link);

?>
<BR>
<a href="index.html"> <P>GO BACK</P> </a>
 </body>                         	
</html>