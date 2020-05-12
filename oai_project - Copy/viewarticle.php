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
<H1>Harvesting Library Science</H1>
<nav>
	<a href="index.php">Home</a> 
	<a href="submission.php">Login to add endppoint</a>
	<a class= active href="search.php">Search</a>
	<a href="about.php">About the Project</a>
</nav>

<?php

require_once 'login.php';

$conn = new mysqli($hn, $un, $pw, $db);
if ($conn->connect_error) die($conn->connect_error);

if (isset($_GET['id'])) {
	$id = sanitizeMySQL($conn, $_GET['id']);
	$query = "SELECT * FROM article NATURAL JOIN article_to_subject NATURAL JOIN subject NATURAL JOIN article_to_creator NATURAL JOIN creator WHERE article_ID =".$id." GROUP BY article_ID";

	$result = $conn->query($query);
	if (!$result) die ("Invalid article ID.");
	$rows = $result->num_rows;

		while ($row = $result->fetch_assoc()) {
			$repo_url = $row["repo_url"];
			$url = $row["url"];
			echo "<table><h3>Article Details</h3><table><tr><th class =\"field\">Field</th><th class =\"divide\">Value</th></tr>";
			echo "<tr><td>Title</td><td>".$row["title"]."</td></tr>";
			echo "<tr><td>Author</td><td>".$row["creator_name"]."</td></tr>";
			echo "<tr><td>Date</td><td>".$row["date"]."</td></tr>";
			echo "<tr><td>Subject</td><td>".$row["subject_name"]."</td></tr>";
			echo "<tr><td>URL</td><td><a href=\"$url\">$url</a></td></tr>";
			echo "<tr><td>Source</td><td>".$row["source"]."</td></tr>";
			echo "<tr><td>Publisher</td><td>".$row["publisher"]."</td></tr>";
			echo "<tr><td>Description</td><td>".$row["description"]."</td></tr>";
			echo "<tr><td>Home Repository</td><td><a href= \"$repo_url\">$repo_url</a></td></tr>";
							
		}
	echo "</table><h3><a href=\"search.php\">Return to search page</a></h3>";
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
<div id="footer">
<ul>
    <li>Elizabeth Phyle</li>
    <li><a href='https://pratt.digication.com/elizabeth-phyle'>https://pratt.digication.com/elizabeth-phyle</a></li>
    <li><a href="sign_in_admin.php">Admin login</a></li>
</ul>
</div>
<!-- thats all folks -->
</html>
