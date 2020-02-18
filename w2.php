<!DOCTYPE html>
<html>

<!-- headerinfo -->
<head>
<meta charset="UTF-8">
<title>I'm a title!!</title>
<meta name="description" content="A rinky-dink webpage"/>

<!-- style -->
<style>
	table{
		color:#284B63;
	}
	body{
		background-color: #FFFFFF;
	}
	p{
		color:##3C6E71;
		font-family: arial;
	}
	h3{
		text-align:center;
		color:#353535
	}
	h4{
		float: right;
	}
	img{
		border-radius: 8px;
	}
	div{
		width:50%;
		border: thin solid #444444;
		/*float: right;*/
		margin-left:auto; 
		margin-right:0;
	}
</style>
</head>

<!-- body -->
<body>
<H3>It's week 2!</H3>

<!-- php practice time! -->
<?php
// write your name and age
$f_name = 'Elizabeth';
$m_name = 'Ann';
$l_name = 'Phyle';
$age = 28;
$five_years = $age + 5;
$future = (2034-2020) + $age;
$comp = $future - $five_years;
$in_month = $age * 12;
$next_year = ++$age;
$full_name = array($f_name,$m_name,$l_name);
echo "<ul><li>$l_name, $f_name $m_name ($age)</li></ul>";
// echo (int) $f_name;
echo $f_name.', '.$m_name.' '.$l_name.' ';
echo $five_years.' ';
echo $future.' ';
echo $comp.' ';
echo $five_years.' ';
echo $in_month.' ';
echo $next_year.' ';


// make weather divs
$temp = 30.4;
$weather = "partly cloudy";
$celsius = fahrenheit_to_celsius($temp);
$current_condition = "<p>Today it is $temp degrees and $weather. And $celsius in Celsius.</p>";
$is_nice_out = true;
$weather_structure = array(40.7, "Sunny");
function fahrenheit_to_celsius($given_value)
{
	$celsius = 5/9*($given_value-32);
	return $celsius;
}
// print_r($weather_structure);
// print_r($_SERVER);
echo "<div>Today's weather</div>";
echo "<div>$current_condition</div>";
if ($is_nice_out = true) {
 	echo "<div><p>Make sure to get outside today!</p></div>";
 } 
echo "<h5>a table of paintings:</h5>";

?>

<!-- other stuff to work with -->
<table border ="1">
<tr></tr>
<td>Title</td>
<td>Creator</td>
<td>Date</td>
<td>Photo</td>
<tr></tr>
<td>Still Life with Cabbage and Clogs</td>
<td>Van Gogh, Vincent</td>
<td>1881</td>
<td><img src="photo1.jpg" alt="Still Life with Cabbage and Clogs"></td>
<tr></tr>
<td>The Old Cemetery Tower at Nuenen in the Snows</td>
<td>Van Gogh, Vincent</td>
<td>1885</td>
<td><img src="photo2.jpg" alt="Still Life with Cabbage and Clogs"></td>
</table>
</body>

<!-- thats all folks -->
</html>