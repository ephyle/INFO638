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
<form method="get" action="search.php">
	<fieldset>
		<legend>Search Articles </legend>
		<label for="name">Keyword:</label>
		<input type="text" name="input" required><br> 
		<input type="submit" name="submit">
	</fieldset>
	<br>
</form>
<nav>
	<a href="index.php">Home</a> 
	<a class= active href="search.php">Search</a>
	<a href="submission.php">Login to add endppoint</a>
</nav>

<!-- php -->
</body>
<?php
require_once 'login.php';
if (isset($_GET['submit'])) { //check if the form has been submitted
	if (empty($_GET['input'])) {
		echo "<p>Enter a keyword to search</p>";
	} else {
		$conn = new mysqli($hn, $un, $pw, $db);
		if ($conn->connect_error) die($conn->connect_error);	
		$input = sanitizeMySQL($conn, $_GET['input']);
		$query = "SELECT * FROM article NATURAL JOIN creator WHERE title LIKE '%$input%' OR description LIKE '%$input%'";
		$result = $conn->query($query);
		if (!$result) {
			die ("Database access failed: " . $conn->error);
		} else {
			$rows = $result->num_rows;
			if ($rows) {
				echo "<h3>Results</h3><table><tr><th>Title</th><th>Author</th><th>ID</th></tr>";
				while ($row = $result->fetch_assoc()) {
					echo "<tr>"; 
					echo "<td>".$row["title"]."</td><td>".$row["creator_name"]."</td>";
					echo "<td>".$row["article_ID"]."</td><td>";
					echo "<a href=\"viewarticle.php?id=".$row["article_ID"]."\">View</a>";
					echo "</tr>";
				}
				echo "</table>";
			} else {
				echo "<p>No results!</p>";
			}
		}
	}
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


<!-- thats all folks -->
</html>
