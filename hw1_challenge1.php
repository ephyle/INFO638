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
<!-- One dollar fits into 159, leaving 59 cents.
Two quarters fit into 50 cents, leaving 9 cents.
No dimes are needed.
One nickel fit into 9 cents, leaving 4 cents.
Four cents are left. 
Your change is: 1 dollar, two quarters, one nickel and three cents -->
</head>

<!-- body -->
<body>
<h1>INFO 638 - Code HW1</h1>
<h2>Change Counter</h2>
<nav> 
	<a class= active href="hw1_challenge1.php">Challenge 1</A>
	<a href="hw1_challenge2.php">Challenge 2</A>
</nav>
<!-- php practice time! -->
<p>
<?php
$change = 159;

$remain_dol = $change % 100;
$change_dol = intval($change / 100);

$remain_quart = $remain_dol % 25;
$change_quart = intval($remain_dol / 25);

$remain_di = $remain_quart % 10; 
$change_di = intval($remain_quart / 10);

$remain_nick = $remain_di % 5; 
$change_nick = intval($remain_di / 5);

$pennies = $remain_di - $remain_nick;

function makechange ($moneytype){
	$change = 159;
	$remain = $change % $moneytype;
	$change = intval($remain / $moneytype);
	return $remain;
}
echo "You will get ".makechange(25)." quarters back in change for 159 cents. "." --OR-- ";

echo "You will recieve $change_dol dollar(s), $change_quart quarter(s), $change_di dime(s), $change_nick nickel(s), and $pennies penny(/ies) as change. Thank you for shopping."
?>
</p>
</body>

<!-- thats all folks -->
</html>