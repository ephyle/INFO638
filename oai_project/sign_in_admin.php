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
<h3>Enter admin login details</h3>

<form method="POST" action="">
	<fieldset>
	<legend>Log-in</legend>
	<label for="username">Username:</label>
	<input type="text" name="username" size="40">
	<label for="password">Password:</label>
	<input type="password" name="password" size="40"><br>
	<input type="submit" name="submit" value="Log-In">
	</fieldset>
</form>


<!-- php -->
</body>
<?php
session_start();

require_once 'login.php';

if (isset($_POST['submit'])) { //check if the form has been submitted
	if ( empty($_POST['username']) || empty($_POST['password']) ) {
		$message = '<p class="error">Please fill out all of the form fields!</p>';
	} else {
		$conn = new mysqli($hn, $un, $pw, $db);
		if ($conn->connect_error) die($conn->connect_error);
		$username = sanitizeMySQL($conn, $_POST['username']);
		$password = sanitizeMySQL($conn, $_POST['password']);			
		$salt1 = "qm&h*";  
		$salt2 = "pg!@";  
		$password = hash('ripemd128', $salt1.$password.$salt2);
		$query  = "SELECT fname, lname, username FROM user WHERE username='$username' AND token='$password'"; 
		$result = $conn->query($query);    
		if (!$result) die($conn->error); 
		$rows = $result->num_rows;
		if ($rows==1){
			$row = $result->fetch_assoc();
			if ($row['username'] == 'admin') {

				header('location: approve.php');		  
			}else{
				echo "<p>You are not admin. You can login <a href=\"sign_in.php\">here</a></p>";
				// header('location: submission.php');

			}
		}else {
			echo "<p>Wrong username/password combination</p>";
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

<?php 
if (isset($message)) echo $message;
?>

<div id="footer">
<ul>
    <li>Elizabeth Phyle</li>
    <li><a href='https://pratt.digication.com/elizabeth-phyle'>https://pratt.digication.com/elizabeth-phyle</a></li>
    <li><a href="sign_in_admin.php">Admin login</a></li>
</ul>
</div>
<!-- thats all folks -->
</html>
