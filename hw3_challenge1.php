<!DOCTYPE html>

<html lang = "en">

<!-- headerinfo -->
<head>
<meta charset="UTF-8">
<title>Homework-638</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
<meta name="description" content="Links to all web development homework submissions"/>

</head>

<!-- body -->
<body>
<H1>INFO 638 - Homework 3</H1>
<h2>Book Lists</h2>
<nav>
	<a href="hw1_challenge1.php">HW1 Challenge 1</a>
	<a href="hw1_challenge2.php">HW1 Challenge 2</a>
	<a href="hw2_challenge1.php">HW2 Challenge 1</a>
	<a href="hw2_challenge2.php">HW2  Challenge 2</a>
		<a class= active href="hw3_challenge1.php">HW3 Challenge 1</a>
	<a href="hw3_challenge2.php">HW3  Challenge 2</a>
</nav>

<!-- php practice time! -->

<?php

//data-------------------------------------------
$book_1 = array(
"PHP and MySQL Web Development",
"Luke Welling",
"144",
"Paperback",
"31.63");
$book_2 = array(
"Web Design with HTML, CSS, JavaScript and jQuery",
"Jon Duckett",
"135",
"Paperback",
"41.23");
$book_3 = array(
"PHP Cookbook: Solutions & Examples for PHP Programmers",
"David Sklar",
"14",
"Paperback",
"40.88");
$book_4 = array(
"JavaScript and JQuery: Interactive Front-End Web Development",
"Jon Duckett",
"251",
"Paperback",
"22.09");
$book_5 = array(
"Modern PHP: New Features and Good Practices",
"Josh Lockhart",
"7",
"Paperback",
"28.49");
$book_5 = array(
"Programming PHP",
"Kevin Tatroe",
"26",
"Paperback",
"28.96");


$book_data = array();
$id = array();

function add_new($array){
	global $book_data;
	global $id;
	$id = $array[0];
	$book_data[$id] = array();
	$book_data[$id]['Title'] = $array[0]; 
	$book_data[$id]['Author'] = $array[1];
	$book_data[$id]['Number of pages'] = $array[2];
	$book_data[$id]['Type'] = $array[3]; 
	$book_data[$id]['Price'] = $array[4];
	$search_term = urlencode($array[0]);
	$book_data[$id]['Search'] = "<a href=\"https://www.goodreads.com/search?utf8=%E2%9C%93&q=$search_term\">Look it up</a>";
}

add_new($book_1); 
add_new($book_2); 
add_new($book_3); 
add_new($book_4); 
add_new($book_5); 
// print_r($book_data);

//---------ADD FROM FORM---------------------
$title = $_POST["title"];
$author = $_POST["author"];
$pages = $_POST["pages"];
$type = $_POST["type"];
$price = $_POST["price"];

$user_book = array($title, $author, $pages, $type, $price);

if ($user_book != null){
	add_new($user_book);
}


//----------print table----------

echo "<table border = 1> ";
echo "<tr></tr>";
foreach ($book_data[$id] as $column => $value) {
	echo"<th>$column</th>";
	}
foreach ($book_data as $row => $book) {
	echo "<tr></tr>";
	foreach ($book as $key => $value) {
		echo"<td>$value</td>";
		}  	
	}
echo "</table>";


//----------print total price--------
$price = array_column($book_data, 'Price');
//print_r($price);
$checkout_total = array_sum($price);
echo "<p>The total price of these books is \$$checkout_total</p>";

?>


<!-- html form -->
<form action = "" method="POST">
	<p class = form>Add another book:</p><br>
	<label>
      <span>Title</span><input type="text" name="title"/>
    </label><br>
    <label>
      <span>Author</span><input type="text" name="author"/>
    </label><br>
    <label>
      <span>Pages</span><input type="text" name="pages"/>
    </label><br>
    <label>
      <span>Type</span><input type="text" name="type"/>
    </label><br>
    <label>
      <span>Price</span><input type="text" name="price"/>
    </label><br>

	<input type="submit" value= "submit">
</form>

</body>

<!-- thats all folks -->
</html>