<?php
// Соединяемся, выбираем базу данных VER3
echo "Добрый день!"
$link = mysql_connect('mysql_host', 'mysql_user', 'mysql_password')
    or die('Не удалось соединиться: ' . mysql_error());
echo 'Соединение успешно установлено';
mysql_select_db('my_database') or die('Не удалось выбрать базу данных');

// Выполняем SQL-запрос
$query = 'SELECT * FROM my_table';
$result = mysql_query($query) or die('Запрос не удался: ' . mysql_error());

// Check ahead, before using it
if (mysql_num_rows($result) > 0) 
{
	// Выводим результаты в html
	echo "<table>\n";
	while ($line = mysql_fetch_array($result, MYSQL_ASSOC)) {
	    echo "\t<tr>\n";
	    foreach ($line as $col_value) {
        	echo "\t\t<td>$col_value</td>\n";
	    }
	    echo "\t</tr>\n";
	}
	echo "</table>\n";
}

// Освобождаем память от результата
mysql_free_result($result);

// Закрываем соединение
mysql_close($link);
?>
