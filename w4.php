<!DOCTYPE html>

<html lang = "en">

<!-- headerinfo -->
<head>
<meta charset="UTF-8">
<title>I'm a title!!</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
<meta name="description" content="A rinky-dink webpage"/>

<!-- 99 bottles of beer on the wall, 99 bottles of beer. Take one down, pass it around, 98 bottles of beer on the wall. -->
</head>

<!-- body -->
<body>
<H1>INFO 638 - Web Development</H1>
<h2>Week 4</h2>
<nav>
	<a href="w1.php">Week 1</a>
	<a href="w2.php">Week 2</a> 
	<a href="w3.php">Week 3</a>
	<a class= active href="w4.php">Week 4</a>
</nav>
<!-- php practice time! -->

<?php
$practicestr = "Hey there earth.";

$name = "Elizabeth Ann Phyle";
$last = substr($name, 14, 5);
$middle = substr($name, 10, 3);
$first = substr($name, 0, 9);
$upmiddle = strtoupper($middle);
$nameshuf = str_shuffle($name);
echo "<p>My name is $first $middle $last. Again my middle name is $upmiddle!!!!</p>";
echo "<p>\t\t -- $nameshuf</p>";

function mealPrice ($price, $tip){
$calctip = round(($price * ($tip/100)), 2);
$calcprice = $calctip + $price;

echo "<p>Given a meal that costs $price dollars, a tip of $tip percent would be $calctip for a total bill of $calcprice.</p>";
}

echo mealPrice(56.73, 20);
//phpinfo();
?>

</body>

<!-- thats all folks -->
</html>