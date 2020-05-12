<!DOCTYPE html>

<html lang = "en">

<!-- headerinfo -->
<head>
<meta charset="UTF-8">
<title>Project-638</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
<meta name="description" content="Project-638"/>

</head>

<!-- body -->
<body>
<H1>Harvesting Library Science</H1>
<nav>
	<a href="index.php">Home</a> 
	<a href="search.php">Search</a>
	<a class= active href="sign_in.php">Login to Add Endppoint</a>
	<a href="about.php">About the Project</a>
</nav>
<h3>Enter Endpoint Information </h3>

<!-- php -->
</body>
<?php
session_start();

require_once 'auth.php';
require_once 'login.php';


if (isset($_POST['submit'])) { //check if the form has been submitted
	if ((empty($_POST['endpoint_name'])) || (empty($_POST['endpoint'])) ) {
		$message = '<p class="error">Please fill out endpoint and the name of the data provider!</p>';
	} else {
		$username = $_SESSION['username'];
		$conn = new mysqli($hn, $un, $pw, $db);
		if ($conn->connect_error) die($conn->connect_error);
		$endpoint_name = sanitizeMySQL($conn, $_POST['endpoint_name']);
		$endpoint = sanitizeMySQL($conn, $_POST['endpoint']);		
		$repo_url = sanitizeMySQL($conn, $_POST['repo_url']);			
		$query = "INSERT INTO submission VALUES(NULL, \"$endpoint\", \"$endpoint_name\", NOW(), \"waiting\", \"$username\", \"$repo_url\")";
		$result = $conn->query($query);
		if (!$result) {
			die ("Database access failed: " . $conn->error);
		} else {
			$message = "<p class=\"message\">Successfully added endpoint from $endpoint_name! Your endpoint submission will be reviewed.</p>
				<p><a href=\"submission.php\">Make another submission </a><p>
			";
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
echo "<p><a href=\"sign_out.php\">Log off and return to homepage </a><p>";
?>

<?php 
if (isset($message)) echo $message;
?>
<form method="post" action="">
	<fieldset>
		<legend>Add an Endpoint</legend>
		<label for="name">Data provider name:</label><br>
		<input type="text" name="endpoint_name"><br> 
		<label for="endpoint">Endpoint:</label><br>
		<input type="text" name="endpoint"><br> 
		<label for="repo_url">Repository URL:</label><br>
		<input type="text" name="repo_url"><br> 
		<input type="submit" name="submit">
	</fieldset>
</form>


<div id="footer">
<ul>
    <li>Elizabeth Phyle</li>
    <li><a href='https://pratt.digication.com/elizabeth-phyle'>https://pratt.digication.com/elizabeth-phyle</a></li>
    <li><a href="sign_in_admin.php">Admin login</a></li>
</ul>
</div>
<!-- thats all folks -->
</html>

