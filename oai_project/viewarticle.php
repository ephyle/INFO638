<!DOCTYPE html>

<html lang = "en">

<!-- headerinfo -->
<head>
<meta charset="UTF-8">
<title>Project-638</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
<meta name="description" content="Test site for Project-638"/>

</head>

<!-- body -->
<body>
<H1>INFO 638 - Web Development</H1>
<h2>Search the article database </h2>
<nav>
	<a href="index.php">Home</a> 
	<a href="submission.php">Login to add endppoint</a>
	<a class= active href="search.php">Search</a>
</nav>

<?php

require_once 'login.php';

$conn = new mysqli($hn, $un, $pw, $db);
if ($conn->connect_error) die($conn->connect_error);

if (isset($_GET['id'])) {
	$id = sanitizeMySQL($conn, $_GET['id']);
	$query = "SELECT * FROM article NATURAL JOIN creator WHERE article_ID =".$id;
	$result = $conn->query($query);
	if (!$result) die ("Invalid article ID.");
	$rows = $result->num_rows;

		while ($row = $result->fetch_assoc()) {
			echo '<h1>Article Details</h1><table><tr><th>Field</th><th>Value</th></tr>';
			echo "<tr><td>Title</td><td>".$row["title"]."</td></tr>";
			echo "<tr><td>Date</td><td>".$row["date"]."</td></tr>";
			echo "<tr><td>URL</td><td>".$row["url"]."</td></tr>";
			echo "<tr><td>Source</td><td>".$row["source"]."</td></tr>";
			echo "<tr><td>Publisher</td><td>".$row["publisher"]."</td></tr>";
							
		}
	echo "<p><a href=\"search.php\">Return to search page</a></p>";
} else {
	echo "No article ID passed";
}
function sanitizeString($var)
{
	$var = stripslashes($var);
	$var = strip_tags($var);
	$var = htmlentities($var);
	return $var;
}
function sanitizeMySQL($connection, $var)
{
	$var = sanitizeString($var);
	$var = $connection->real_escape_string($var);
	return $var;
}

?>

</body>

<!-- thats all folks -->
</html>
