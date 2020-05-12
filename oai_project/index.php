<!DOCTYPE html>

<html lang = "en">

<!-- headerinfo -->
<head>
<meta charset="UTF-8">
<title>Project-638</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
<meta name="description" content="=Project-638"/>

</head>

<!-- body -->
<body>
<H1>Harvesting Library Science</H1>
<nav>
	<a class= active href="index.php">Home</a> 
	<a href="search.php">Search</a>
	<a href="sign_in.php">Login to Add Endppoint</a>
	<a href="about.php">About the Project</a>
</nav>
<!-- <h2>Search the article database </h2> -->

<p>The Open Archives Initiative Protocol for Metadata Harvesting, <a href= "https://www.openarchives.org/organization/">OAI-PMH</a>, allows digital repositories to make the metadata of various media types available to harvesters. It is a way for digital repositories of purposes and media types to share information about their records with the larger digital world. </p>

<p>On this site you can search for articles that were harvested with OAI-PMH for various repositories with a Library and Information Science (LIS) focus. My question in starting this project was, how do you use OAI-PMH to aggregate resources around a particular subject? How powerful is the protocol and do the formats and standards that guide it, such as <a href = "https://en.wikipedia.org/wiki/Dublin_Core">Dulin Core</a> and XML, allow you to consistently select the desired resources and the information they contain? </p>


<!-- php -->
<?php

require_once 'login.php';

$conn = new mysqli($hn, $un, $pw, $db);
if ($conn->connect_error) die($conn->connect_error);	
$query = "SELECT title, date, ANY_VALUE(subject.subject_name)subject_name, article_ID, ANY_VALUE(creator.creator_name)creator_name FROM article NATURAL JOIN article_to_creator NATURAL JOIN creator NATURAL JOIN article_to_subject NATURAL JOIN subject GROUP BY article_ID ORDER BY RAND() LIMIT 10";

$result = $conn->query($query);
if (!$result) {
	die ("Database access failed: " . $conn->error);
} else {
	$rows = $result->num_rows;
	if ($rows) {
		echo "<h3>Selection of Random Articles</h3><table><tr><th>Title</th><th>Author</th><th>Subject</th></tr>";
		while ($row = $result->fetch_assoc()) {
			echo "<tr><td>"; 
			echo "<a href=\"viewarticle.php?id=".$row["article_ID"]."\">";
			echo $row["title"]."</a></td>";
			echo "<td>".$row["creator_name"]."</td><td>".$row["subject_name"]."</td>";
			echo "</tr>";
		}
		echo "</table>";
	} else {
		echo "<p>No results!</p>";
	}
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


