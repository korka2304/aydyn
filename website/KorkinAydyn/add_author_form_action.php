<?php
include('config.php');	
$link = mysqli_connect($server, $user, $password, $database)
	or die('Error: Unable to connect: ' . mysqli_connect_error());
$passporto = mysqli_real_escape_string($link, $_POST['passporto']);
$first_name = mysqli_real_escape_string($link, $_POST['first_name']);
$family_name = mysqli_real_escape_string($link, $_POST['family_name']);
// Ecape String
// PhPMyAdmin // Sakila and World
echo $passporto
echo $first_name;
echo $family_name;
INSERT INTO client (passport, FirstName, kianfouName) VALUES ((SELECT IFNULL(max($passporto+1,1)) from (Select passport from authors) as ID), 
'$first_name','$family_name')
echo '<BR> SQL query: ';
echo $SQLquery;
if (mysqli_query($link, $SQLquery)) {
    echo "<BR>New record created successfully";
} else {
    echo "<BR>Error: " . $sql . "<br>" . mysqli_error($link);
}
mysqli_close($link);
printf('<a href="index.html"> <P>GO BACK</P> </a>');
?>
