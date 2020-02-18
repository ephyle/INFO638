<!DOCTYPE html>

<html>

<!-- headerinfo -->
<head>
<meta charset="UTF-8">
<title>I'm a title!!</title>
<meta name="description" content="A rinky-dink webpage"/>

<!-- style -->
<style>
	p{
		color:#353535;
		background-color: #75DBCD;
		opacity: 0.5;
		font-family: arial;
		width:60%;
		padding: 3%;
		float: right;
		display: inline-block;
	}

	h2{
		background-color:#FAA381;
		color:#F5CDA7;
		width:80%;
		padding: 3%;
		float: right;
		display: inline-block;
		display: inline-block;
		padding: 2%;
		margin: 5%;
		text-decoration: none;
	}

	nav a{
		text-align: center;
		margin: 0 auto;
		color: #000000;
		background: #DCDBA8;
		opacity: 0.5;
		display: inline-block;
		padding: 2%;
		height:40%;
		width: 90%;
		margin: 5%;
		text-decoration: none;
		border-radius: 5px;	
	}

	nav {
		width:22%;
		margin: 0 auto;
		display: inline-block;
		height:10%;
		padding: 2%;
		float: left;
	}

	a:hover, a.active {
	  color: #ffffff;
	  background-color: #000000;
	}

	h1{
		text-align:center;
		color:#353535;
	}

</style>
<!-- 99 bottles of beer on the wall, 99 bottles of beer. Take one down, pass it around, 98 bottles of beer on the wall. -->
</head>

<!-- body -->
<body>
<H1>INFO 638 - Code HW1</H1>
<h2>99 Bottles</h2>
<nav> 
	<a href="hw1_challenge1.php">Challenge 1</a>
	<a class= active href="hw1_challenge2.php">Challenge 2</a>
</nav>
<!-- php practice time! -->
<?php

$bottlebeer = 99;
while ($bottlebeer > 0){
	$bottlebeerless = $bottlebeer-1;
	echo "<p>$bottlebeer bottles of beer on the wall, $bottlebeer bottles of beer. Take one down, pass it around, $bottlebeerless bottles of beer on the wall! </p>";
	$bottlebeer = $bottlebeer -1;
}
?>

</body>

<!-- thats all folks -->
</html>