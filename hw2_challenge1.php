<!DOCTYPE html>

<html lang = "en">

<!-- headerinfo -->
<head>
<meta charset="UTF-8">
<title>I'm a title!!</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
<meta name="description" content="A rinky-dink webpage"/>
<!-- An ISBN is a ten digit code which identifies a book. The first nine digits represent the book and the last digit is used to make sure the ISBN is correct.  To verify an ISBN you do the following: 

Obtain the sum of 10 times the first digit, 9 times the second digit, 8 times the third digit... all the way till you add 1 times the last digit.

Divide the sum by 11, if the sum leaves no remainder when divided by 11 the code is a valid ISBN.
 -->
</head>

<!-- body -->
<body>
<H1>INFO 638 - Homework 2</H1>
<h2>ISBN Validation</h2>
<nav>
	<a href="hw1_challenge1.php">HW1 Challenge 1</a>
	<a href="hw1_challenge2.php">HW1 Challenge 2</a>
	<a class= active href="hw2_challenge1.php">HW2 Challenge 1</a>
	<a href="hw2_challenge2.php">HW2  Challenge 2</a>
</nav>
<!-- php practice time! -->

<?php
function valid_isbn ($num){
	$counter = 10;
	$digits =  str_split($num);
	$product_array = [];
	if (strlen($num) == 10 && is_numeric($num) == true){
		$digits =  str_split($num);
		while ( $counter > 0) {
			foreach ($digits as &$value) {
				$product = $value * $counter;
				array_push($product_array, $product);
				//echo "<p>$value * $counter = $product </p>";
				$counter = $counter - 1;
			}
		}
		$sumof = array_sum($product_array);
		if ($sumof % 11 === 0){
			return true;
		}else{
			return false;
		}
	}else{
		echo "<p>Please enter a 10 digit number</p>";
	}

}	


$ISBN = '0747532699';
if (valid_isbn($ISBN) === true){
	echo "<p>$ISBN is a valid ISBN</p>";
}else{
	echo "<p>$ISBN is NOT a valid ISBN</p>";
}

?>

</body>

<!-- thats all folks -->
</html>