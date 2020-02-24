<!DOCTYPE html>

<html lang = "en">

<!-- headerinfo -->
<head>
<meta charset="UTF-8">
<title>Homework-638</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
<meta name="description" content="Links to all web development homework submissions"/>

<!-- Repeat the coin exercise from HW2, but modify your program to 1) be a function that takes one argument – the number of heads in a row you'd like to flip and then 2) modify your code to use this argument to allow a variable number of heads in a row to be chosen. E.g.  coinToss(8); will flip the coin until 8 heads in a row are obtained.  
You should print out the number of heads in a row you are seeking and the total number of flips it took.
 -->
</head>

<!-- body -->
<body>
<H1>INFO 638 - Homework 3</H1>
<h2>Coin Toss, continued</h2>
<nav>
	<a href="hw1_challenge1.php">HW1 Challenge 1</a>
	<a href="hw1_challenge2.php">HW1 Challenge 2</a>
	<a href="hw2_challenge1.php">HW2 Challenge 1</a>
	<a href="hw2_challenge2.php">HW2  Challenge 2</a>
	<a href="hw3_challenge1.php">HW3 Challenge 1</a>
	<a class= active href="hw3_challenge2.php">HW3  Challenge 2</a>
</nav>
<form action = "" method="POST">
	<p class = "form">Type number of heads in a row:</p>
	<input type="text" name="heads"/>
	<input type="submit" value= "submit">
</form>
<!-- php practice time! -->

<?php

function coin_toss(){
	$toss = mt_rand(0,1);
	if ($toss === 0){
		echo 
		"<div class = \"images\">
		<img src=\"img/coin_heads.jpg\" alt=\"heads\">
		</div>";
		return true;
	} else if ($toss === 1){
		echo 
		"<div class = \"images\">
		<img src=\"img/coin_tails.jpg\" alt=\"tails\">
		</div>";
		return false;
	} 
}


function in_a_row($heads){
	$tosses = 1;
	$head_count = 0;
	$last_toss = coin_toss();
	while ($head_count < $heads-1) {
		$toss_again = coin_toss();
		if ($toss_again == true && $toss_again == $last_toss){
			$last_toss = $toss_again;
			$head_count = $head_count + 1;
		}else{
			$head_count = 0;
			$last_toss = $toss_again;
		}
		$tosses = $tosses + 1;
	}
	echo"<p>It took $tosses tosses to get $heads heads in a row. </p>";
}

$heads = $_POST["heads"];

echo"<p>Toss until you get $heads heads in a row! </p>";
in_a_row($heads);


?>

</body>

<!-- thats all folks -->
</html>