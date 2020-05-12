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
	<a class= active href="search.php">Search</a>
	<a href="sign_in.php">Login to Add Endppoint</a>
	<a href="about.php">About the Project</a>
</nav>
<h3>Search the article database </h3>

<!-- template for search from : https://phppot.com/php/advanced-search-using-php/ -->
<?php
$with_any_one_of = "";
$with_the_exact_of = "";
$without = "";
$starts_with = "";
$search_in = "";
?>
<form method="get" action="search.php">

	<label class="search-label">With Any One of the Words:</label><br> 
	<input type="text" name="search[with_any_one_of]" value="<?php echo $with_any_one_of; ?>"/><br> 

	<div id="advanced-search-box">
		<label class="search-label">With the Exact String:</label><br> 
			<input type="text" name="search[with_the_exact_of]" id="with_the_exact_of" value="<?php echo $with_the_exact_of; ?>"/><br> 
		<label class="search-label">Without:</label><br>
			<input type="text" name="search[without]" id="without" class="demoInputBox" value="<?php echo $without; ?>"	/><br>

		<label class="search-label">Starts With:</label><br> 
			<input type="text" name="search[starts_with]" id="starts_with" value="<?php echo $starts_with; ?>"/><br> 

		<label class="search-label">Search Keywords in:</label><br> 
			<div class="custom-select" style="width:100px;">
			<select name="search[search_in]" id="search_in" class="demoInputBox">
				<option value="">Select Column</option>
				<option value="title" <?php if($search_in=="title") { echo "selected"; } ?>>Title</option>
				<option value="description" <?php if($search_in=="description") { echo "selected"; } ?>>Description</option>
				<option value="creator_name" <?php if($search_in=="creator_name") { echo "selected"; } ?>>Author</option>
				<option value="subject_name" <?php if($search_in=="subject_name") { echo "selected"; } ?>>Subject</option>
			</select>
			</div>
	</div>
	
		<input type="submit" name="go" class="btnSearch" value="search">
	
</form>

<!-- php -->
</body>
<?php
require_once 'login.php';

$conn = new mysqli($hn, $un, $pw, $db);	

$queryCondition = "";
if(!empty($_GET["search"])) {
	// $input = sanitizeMySQL($conn, $_GET['search']);
	foreach($_GET["search"] as $k=>$v){
		if(!empty($v)) {

			$queryCases = array("with_any_one_of","with_the_exact_of","without","starts_with");
			
			if(in_array($k,$queryCases)) {
				if(!empty($queryCondition)) {
					$queryCondition .= " AND ";
				} else {
					$queryCondition .= " WHERE ";
				}
			}
			switch($k) {
				case "with_any_one_of":
					$with_any_one_of = $v;
					$wordsAry = explode(" ", $v);
					$wordsCount = count($wordsAry);
					for($i=0;$i<$wordsCount;$i++) {
						if(!empty($_GET["search"]["search_in"])) {
							$queryCondition .= $_GET["search"]["search_in"] . " LIKE '%" . $wordsAry[$i] . "%'";
						} else {
							$queryCondition .= "title LIKE '%" . $wordsAry[$i] . "%' OR description LIKE '%" . $wordsAry[$i] . "%' OR creator_name LIKE '%" . $wordsAry[$i] . "%' OR subject_name LIKE '%" . $wordsAry[$i] . "%'";
						}
						if($i!=$wordsCount-1) {
							$queryCondition .= " OR ";
						}
					}
					break;
				case "with_the_exact_of":
					$with_the_exact_of = $v;
					if(!empty($_GET["search"]["search_in"])) {
						$queryCondition .= $_GET["search"]["search_in"] . " LIKE '%" . $v . "%'";
					} else {
						$queryCondition .= "title LIKE '%" . $v . "%' OR description LIKE '%" . $v . "%' OR creator_name LIKE '%" . $v . "%' OR subject_name LIKE '%" . $v . "%'";
					}
					break;
				case "without":
					$without = $v;
					if(!empty($_POST["search"]["search_in"])) {
						$queryCondition .= $_POST["search"]["search_in"] . " NOT LIKE '%" . $v . "%'";
					} else {
						$queryCondition .= "title NOT LIKE '%" . $v . "%' AND description NOT LIKE '%" . $v . "%' AND creator_name NOT LIKE '%" . $v . "%' AND subject_name NOT LIKE '%" . $v . "%'";
					}
					break;
				case "starts_with":
					$starts_with = $v;
					if(!empty($_GET["search"]["search_in"])) {
						$queryCondition .= $_GET["search"]["search_in"] . " LIKE '%" . $v . "%'";
					} else {
						$queryCondition .= "title LIKE '%" . $v . "%' OR description LIKE '%" . $v . "%' OR creator_name LIKE '%" . $v . "%' OR subject_name LIKE '%" . $v . "%'";
					}
					break;
				case "search_in":
					$search_in = $_GET["search"]["search_in"];
					break;
			}
		}
	}

	$orderby = " ORDER BY title asc"; 
	$sql = "SELECT title, date, ANY_VALUE(subject.subject_name)subject_name, article_ID, ANY_VALUE(creator.creator_name)creator_name FROM article NATURAL JOIN article_to_subject NATURAL JOIN subject NATURAL JOIN article_to_creator NATURAL JOIN creator" . $queryCondition . " GROUP BY article_ID";
	$result = $conn->query($sql);
	// echo "<p>$sql</p>";
	if (!$result) {
		die ("Database access failed: " . $conn->error);
	} else {
		$rows = $result->num_rows;
		if ($rows) {
			echo "<h3>Results</h3><table><tr><th>Title</th><th>Author</th><th>Subject</th></tr>";
			while ($row = $result->fetch_assoc()) {
				// $id = $row["article_ID"];
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
} 
// }



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

<div id="footer">
<ul>
    <li>Elizabeth Phyle</li>
    <li><a href='https://pratt.digication.com/elizabeth-phyle'>https://pratt.digication.com/elizabeth-phyle</a></li>
    <li><a href="sign_in_admin.php">Admin login</a></li>
</ul>
</div>

<!-- thats all folks -->
</html>
