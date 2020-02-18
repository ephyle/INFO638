<!DOCTYPE html>

<html lang = "en">

<!-- headerinfo -->
<head>
<meta charset="UTF-8">
<title>I'm a title!!</title>
<link rel="stylesheet" type="text/css" href="style.css">
<meta name="description" content="A rinky-dink webpage"/>
<!-- a.  The mt_rand() function returns a random value; optionally you may enter a mix and max number to be returned. Documentation is available at http://www.w3schools.com/php/func_math_mt_rand.asp  
Create a PHP page that simulates a series of random coin tosses for 1, 3, 5, 7, and 9 flips. You should make your page visually interesting by using images to represent a toss of heads or tails, e.g.:


b.  Create a loop that will toss the coin repeatedly until you have flipped exactly two heads in a row. Stop the loop and print out to the page the number of tosses this took, e.g.: -->
<style>

</style>
</head>

<!-- body -->
<body>
<H1>INFO 638 - Homework 2</H1>
<h2>Coin Toss</h2>
<nav>
	<a href="hw1_challenge1.php">HW1 Challenge 1</a>
	<a href="hw1_challenge2.php">HW1 Challenge 2</a>
	<a href="hw2_challenge1.php">HW2 Challenge 1</a>
	<a class= active href="hw2_challenge2.php">HW2 Challenge 2</a>
</nav>
<!-- php practice time! -->

<?php
$this_toss = true;
$last_toss = false;

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

function toss_many($num){
	while($num > 0){
		coin_toss();
		$num = $num - 1;
	}
}

function doubles(){
	$repeat = 0;
	$tosses = 1;
	$last_toss = coin_toss();
	while ($repeat < 1) {
		$next_toss = coin_toss();
		$tosses = $tosses + 1;
    	if (($last_toss != $next_toss)){
    		$last_toss = $next_toss;
    	}else{
    		$repeat = $repeat + 1;
    		echo"<p>It took $tosses tosses to throw doubles </p>";
		}	
    }
}
echo"<p>1 Coin Toss</p>";
toss_many(1);
echo"<p>3 Coin Tosses</p>";
toss_many(3);
echo"<p>5 Coin Tosses</p>";
toss_many(5);
echo"<p>7 Coin Tosses</p>";
toss_many(7);
echo"<p>9 Coin Tosses</p>";
toss_many(9);
echo"<p>Toss until you get doubles</p>";
doubles();

?>

</body>

<!-- thats all folks -->
</html>