<html>
 <head>
  <title>WEB-site of the Sletcova National Library</title>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
 </head>

 <body>
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
<BR>
<a href="index.html"> <P>GO BACK</P> </a>
 </body>
</html>