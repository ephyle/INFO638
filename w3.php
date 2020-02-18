<!DOCTYPE html>
<html>

<!-- headerinfo -->
<head>
<meta charset="UTF-8">
<title>I'm a title!!</title>
<meta name="description" content="A rinky-dink webpage"/>

<!-- style -->
<style>
	body{
		background-color: #FFFFFF;
	}
	p{
		color:#3C6EAA;
		font-family: arial;
	}
	h3{
		text-align:center;
		color:#353535
	}
	.square{
		background: yellow;

	}

</style>
</head>

<!-- body -->
<body>
<H3>It's week 3!</H3>

<!-- php practice time! -->
<p>
<?php

$myvar = 10;
++$myvar;
(2>$myvar) ? print "2 is greater than 10.\n" : print "2 is less than 10.\n";
if ($myvar > 10){
	echo "$myvar is greater than 10.\n";
}elseif ($myvar < 5) {
	echo "$myvar is less than than 5.\n"; 
}else{
	echo "$myvar is less than than 10. \n"; 
}
?>
</p>

<p>
<?php

$mybirthday = "0205";
$speedlimit = 60;
$myspeed = 65;



if ($myspeed <= $speedlimit){
	echo "No ticket. \n";
}elseif ($mybirthday == date("md") && $myspeed < ($speedlimit+5)) {
	echo "No ticket, Happy Birthday!\n";
}elseif ($myspeed > $speedlimit && $myspeed <= 80 ) {
	echo "Small ticket.\n";
}elseif ($myspeed > 80) {
	echo "Big ticket, shame on you.\n";
}


while ($myspeed > 60){
	$over = $myspeed-$speedlimit;
	echo "You are going over the speedlimit by $over mph! Slow down!\n";
	$myspeed = $myspeed-1;
}
	
?>
</p>

<table border = 1>
<?php

for ($x = 1; $x <= 12; ++$x){
echo "<tr>";
echo "</tr>";
echo "<td>$x</td>";
	for ($y = 2; $y <= 12; ++$y){
		if ($x == $y){
			echo "<td class =\"square\">";
			echo $y*$x;
			echo "</td>";
		}else{
		echo "<td>";
		echo $y*$x;
		echo "</td>";
	}
	}
}
?>
</table>


<!-- other stuff to work with -->

</body>

<!-- thats all folks -->
</html>