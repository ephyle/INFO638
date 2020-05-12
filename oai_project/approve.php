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
	<a href="sign_in.php">Login to Add Endppoint</a>
	<a class= active href="approve.php">Approve Submission</a>
	<a href="about.php">About the Project</a>
</nav>
</body>


<?php  
session_start();
require_once 'login.php';
require __DIR__.'/vendor/autoload.php';
// require_once 'auth.php';

echo "<p><a href=\"sign_out.php\">Log off and return to homepage </a><p>";

$conn = new mysqli($hn, $un, $pw, $db);
if ($conn->connect_error) die($conn->connect_error);		
$query = "SELECT * FROM submission ";
$result = $conn->query($query);

//--------GET WAITING ENDPOINTS
if (!$result) {
	die ("Database access failed: " . $conn->error);
} else {
	$rows = $result->num_rows;
	if ($rows) {
		echo "<h3>View submissions</h3><table><tr><th>Submission ID</th><th>endpoint_name</th><th>endpoint</th><th>submission_status</th></tr>";
		while ($row = $result->fetch_assoc()) {
			echo "<tr>"; 
			echo "<td>".$row["submission_ID"]."</td><td>".$row["endpoint_name"]."</td><td>".$row["endpoint"]."</td><td>".$row["submission_status"]."</td>";
			echo "</tr>";
		}
		echo "</table>";
	} else {
		echo "<p>No waiting submissions</p>";
		}

}

//--------CHANGE STATUS
if (isset($_POST['submit'])) { //check if the form has been submitted
	if ((empty($_POST['status'])) ) {
		$message = '<p class="error">Please fill out endpoint and the name of the data provider!</p>';
	} else {
		$conn = new mysqli($hn, $un, $pw, $db);
		if ($conn->connect_error) die($conn->connect_error);
		$status = sanitizeMySQL($conn, $_POST['status']);
		$id = sanitizeMySQL($conn, $_POST['id']);

		$query = "UPDATE submission SET submission_status=\"$status\" WHERE submission_ID = \"$id\"";
		$result = $conn->query($query);
		if (!$result) {
			die ("Database access failed: " . $conn->error);
		} else {
			$message = "<p class=\"message\">Status changed</p>
				<p><a href=\"sign_out.php\">Log off and return to homepage </a><p>
			";
		}
	}
}
?>

<form method="post" action="">
	<fieldset>
		<legend>Change status of submission</legend>
		<label for="id">Enter submission id</label><br>
		<input type="text" name="id"><br>
		<label for="status">Status</label><br>
		<select name="status">
		  <option value="waiting">Waiting</option>
		  <option value="approved">Approved</option>
		  <option value="rejected">Rejected</option>
		</select><br> 
		<input type="submit" name="submit">
	</fieldset>
	<br>
</form>

<?php
//--------VIEW APPROVED ENTRIES
$conn = new mysqli($hn, $un, $pw, $db);
if ($conn->connect_error) die($conn->connect_error);		
$query = "SELECT * FROM submission WHERE submission_status = \"approved\" ";
$result = $conn->query($query);
if (!$result) {
	die ("Database access failed: " . $conn->error);
} else {
	$rows = $result->num_rows;
	if ($rows) {
		echo "<h3>View approved submissions</h3><table><tr><th>Submission ID</th><th>endpoint_name</th><th>endpoint</th><th>submission_status</th></tr>";
		while ($row = $result->fetch_assoc()) {
			echo "<tr>"; 
			echo "<td>".$row["submission_ID"]."</td><td>".$row["endpoint_name"]."</td><td>".$row["endpoint"]."</td><td>".$row["submission_status"]."</td>";
			echo "</tr>";
		}
		echo "</table>";
	} else {
		echo "<p>No approved submissions</p>";
		}

}

///--------ADD APPROVED ENDPOINTS
if (isset($_POST['approved'])) { //check if the form has been submitted
	$conn = new mysqli($hn, $un, $pw, $db);
	if ($conn->connect_error) die($conn->connect_error);
	$id = sanitizeMySQL($conn, $_POST['id_to_add']);

	$query = "SELECT endpoint, repo_url FROM submission WHERE submission_id = \"$id\" ";
	$result = $conn->query($query);
	if (!$result) {
		die ("Database access failed: " . $conn->error);
	} else {
		$rows = $result->num_rows;
		if ($rows) {
			while ($row = $result->fetch_assoc()) {
				$endpoint = $row["endpoint"];
				$repo_url = $row["repo_url"];
				global $repo_url;
				global $endpoint; 

			}
		} else {
			echo "<p>ID not found</p>";
			}

	}


	function clean($string) {
	   return preg_replace('/[^A-Za-z0-9\-.$ ]/', '', $string); // Removes special chars.
	}

	//looping through each endpoint

	$myEndpoint = \Phpoaipmh\Endpoint::build($endpoint);
	echo "<h3>Log of Records Added from $endpoint </h3>";
	$recs = $myEndpoint->listRecords('oai_dc');
	//looping through each record of endpoint
	$y = 1;
	foreach($recs as $rec) {
		echo "<p>I am record $y!</p>";
		$metadata = $rec->metadata->children('oai_dc', 1)->dc->children('dc', 1);

		$y = $y + 1;

		$query = "INSERT INTO article VALUES(NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, \"$repo_url\")";
		echo "<p> $query </p>";
		$result = $conn->query($query);
		$article_ID = $conn->insert_id;
		global $article_ID; 
		$query = "SELECT url FROM article WHERE article_ID = \"$article_ID\"";
		$result = $conn->query($query);
		$rows = $result->num_rows;
		if ($rows) {
			$has_url = FALSE;
		}

		//looping through each key-value of record and adding it to the database. 
			//make a function and/or change how values are added to fix articleid adding?

	    foreach ($metadata as $key => $value) {

	    	//title
	    	if ($key == 'title'){
	    		$value = clean($value);
	    		$query = "UPDATE article SET title =\"$value\" WHERE article_ID = \"$article_ID\"";
			    echo "<p> $query </p>";
			    $result = $conn->query($query);

			//date
			}else if ($key == 'date'){
				$query = "UPDATE article SET date =\"$value\" WHERE article_ID = \"$article_ID\"";
				echo "<p> $query </p>";
				$result = $conn->query($query);

			//url
			}else if ($key == 'identifier' && $has_url != TRUE){
			    $query = "UPDATE article SET url =\"$value\" WHERE article_ID = \"$article_ID\"";
				echo "<p> $query </p>";
				$result = $conn->query($query);
				$has_url = TRUE;

			//source
			}else if ($key == 'source'){
			    $query = "UPDATE article SET source =\"$value\" WHERE article_ID = \"$article_ID\"";
				echo "<p> $query </p>";
				$result = $conn->query($query);

			//publisher
			}else if ($key == 'publisher'){
			    $query = "UPDATE article SET publisher =\"$value\" WHERE article_ID = \"$article_ID\"";
			    echo "<p> $query </p>";
				$result = $conn->query($query);

			//description
			}else if ($key == 'description'){
				$value = clean($value);
			    $query = "UPDATE article SET description =\"$value\" WHERE article_ID = \"$article_ID\"";
				echo "<p> $query </p>";
				$result = $conn->query($query);

			//type
			}else if ($key == 'type'){
			    $query = "UPDATE article SET type =\"$value\" WHERE article_ID = \"$article_ID\"";
				$result = $conn->query($query);

			//format
			}else if ($key == 'format'){
			    $query = "UPDATE article SET format =\"$value\" WHERE article_ID = \"$article_ID\"";
				echo "<p> $query </p>";
				$result = $conn->query($query);

			}else if ($key == 'subject'){
	    		$query = "SELECT subject_ID FROM subject WHERE subject_name =\"$value\"";
			    $check_subject = $conn->query($query);	
			    $rows = $check_subject->num_rows;
			
	    		if ($rows == 0){
		    		$query = "INSERT INTO subject VALUES(NULL, \"$value\")";
				    $result = $conn->query($query);
				    $subject_ID = $conn->insert_id;

					echo "<p> $subject_ID </p>";
					$query = "INSERT INTO article_to_subject VALUES(NULL, \"$article_ID\", \"$subject_ID\")";
					$result = $conn->query($query);
				}else{
					$query = "INSERT INTO article_to_subject VALUES(NULL, \"$article_ID\", (SELECT subject_ID FROM subject WHERE subject_name=\"$value\" LIMIT 1))";
					$result = $conn->query($query);
				}
			}else if ($key == 'creator'){
	    		$query = "SELECT creator_ID FROM creator WHERE creator_name =\"$value\"";
			    ////doesn't work////
			    $check_creator = $conn->query($query);	
			    $rows = $check_creator->num_rows;
			    // echo "<p> $check_creator </p>";				
	    		if ($rows == 0){
		    		$query = "INSERT INTO creator VALUES(NULL, \"$value\")";
				    $result = $conn->query($query);
				    $creator_ID = $conn->insert_id;

					echo "<p> $creator_ID </p>";
					$query = "INSERT INTO article_to_creator VALUES(NULL, \"$article_ID\", \"$creator_ID\")";
					$result = $conn->query($query);
				}else{
					echo "<p> $value</p>";
					$query = "INSERT INTO article_to_creator VALUES(NULL, \"$article_ID\", (SELECT creator_ID FROM creator WHERE creator_name=\"$value\" LIMIT 1))";
					$result = $conn->query($query);
				}
			}

			if (!$result) {
				die ("Database access failed: " . $conn->error);
				} else {
					echo "<p>Successfully added $article_ID </p>";
				}
		}	
	}
	// mysqli_close($conn);
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

<form method="post" action="">
	<fieldset>
		<legend>Add approved endpoints </legend>
		<label for="id">Enter submission id</label>
		<input type="text" name="id_to_add"><br>
		<input type="submit" name="approved">
	</fieldset>
	<br>
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
