<?php
include('config.php');	
$link = mysqli_connect($server, $user, $password, $database)
	or die('Error: Unable to connect: ' . mysqli_connect_error());

$book_authorid = mysqli_real_escape_string($link, $_POST['book_authorid']);
$book_title = mysqli_real_escape_string($link, $_POST['book_title']);
$book_year = mysqli_real_escape_string($link, $_POST['book_year']);
// ÇÀÝÑÊÅÉÏÈÒÜ
// PhPMyAdmin
// ÑÀÊÈËÀ ÂÎÐËÄ
echo $book_authorid;
echo $book_title;
echo $book_year;
$SQLquery = "INSERT INTO books (BookID, AuthorID, Title, Year) VALUES ((SELECT max(BookID)+1 from (Select BookID from books) as ID), $book_authorid,'$book_title',$book_year)";
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