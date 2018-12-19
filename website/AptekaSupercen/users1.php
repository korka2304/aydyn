<html>
 <head>
  <title>WEB-site of the Sletcova National Library</title>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
 </head>
 <body>
	<P style="color:red; font-size:18">
	Welcome to the Slepcova Valentina National Library!<BR>
	<BR>
	Please feel free to browse thorugh the site.
	</P>
 	<meta charset="utf-8">
	
	<table width="100%" cellspacing="0" border="1">	
		<TR>
			<TH>Table column 1</TH>
			<TH>Table column 2</TH>
		</TR>
		<TR>
			<TD>
			  <a href="allbooks.php"> <P>All</P> </a>
			  <a href="counteries.php"> <P>List of all Counteries</P> </a>
			  <a href="users.php"> <P>Our Staff</P> </a>
			  <a href="users1.php"> <P>Preparite</P> </a> 
			</TD>
			<TD>
			  <P>Preparite:</P>
			  <form action="preparite_from.php" method="post">
          		  	Name: <input type="text" name="b_t">
          		  	<br>
				ID: <input type="number" name="b_y">
          		  	<br>
				Postav: 
				<select name="b_a">
					<?php 
		                        include('config.php');	
					$link = mysqli_connect($server, $user, $password, $database)					
	    					or die('Error: Unable to connect: ' . mysqli_connect_error());
						
					// Выполняем SQL-запрос
					$SQLquery = 'SELECT ID_int, CONCAT(Name, \' \', postav) FROM Drug';
					$SQLresult = mysqli_query($link,$SQLquery);
					while ($result = mysqli_fetch_array($SQLresult,MYSQLI_NUM))
					{
						printf('<option value=%d>%s</option>',$result[0],$result[1]);
					}
					// Освобождаем память от результата
					mysqli_free_result($SQLresult);
					mysqli_close($link);
					?>
				</select>
				<br>
            		  	<input type="submit" value="Add">
      			  </form>
			</TD>
		</TR>

 </body>
</html>