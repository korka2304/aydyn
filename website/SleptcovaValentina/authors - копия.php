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
			  <a href="allbooks.php"> <P>All books</P> </a>
			  <a href="dostojevsky.php"> <P>Books of Dostojevsky</P> </a>
			  <a href="add_book.php"> <P>Add new Book</P> </a> 
			  <a href="users.php"> <P>Our Staff</P> </a>
			  <a href="authors.php"> <P>Authors</P> </a> 
			</TD>
			<TD>
			  <P>Our Authors</P>
					<?php
					// Соединяемся, выбираем базу данных VER3
		                        include('config.php');	
					$link = mysqli_connect($server, $user, $password, $database)					
	    					or die('Error: Unable to connect: ' . mysqli_connect_error());
					echo '<P>Succesfully connected!</P>';
	
					// Выполняем SQL-запрос
					$SQLquery = 'SELECT * FROM authors';
					$SQLresult = mysqli_query($link,$SQLquery);
					while ($result = mysqli_fetch_array($SQLresult,MYSQLI_NUM))
					{
						printf('<P>Author(%d): %s %s</P>',$result[0],$result[1],$result[2]);
					}
					// Освобождаем память от результата
					mysqli_free_result($SQLresult);
					mysqli_close($link);
			                ?>
			<form>
 				<input type="button" value="Add Author" onClick='location.href="add_author.html"'>
			</form>
			</TD>
		</TR>

 </body>
</html>