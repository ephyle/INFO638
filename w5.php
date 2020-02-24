<!DOCTYPE html>

<html lang = "en">

<!-- headerinfo -->
<head>
<meta charset="UTF-8">
<title>Classwork-638</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
<meta name="description" content="Links to all web development classwork"/>

</head>

<!-- body -->
<body>
<H1>INFO 638 - Web Development</H1>
<h2>Week 5 </h2>
<nav>
	<a href="w1.php">Week 1</a>
	<a href="w2.php">Week 2</a> 
	<a href="w3.php">Week 3</a>
	<a href="w4.php">Week 4</a>
	<a class= active href="w5.php">Week 5</a>
</nav>
<!-- php practice time! -->

<?php
echo "<p class =\"divide\">Weather Report</p>";
$weather = array("condition"=>"sunny","wind"=> "strong","temp"=> "60");

$weather["humidity"] = 22;

foreach ($weather as $key => $value) {
	echo "<p>The $key is $value today.</p>";
	# code...
}
// echo "<pre>";
// print_r($weather);
// echo "</pre>";
echo "<p class = \"divide\">Student Exam Results</p>";

$student = array('134233' => 80,'543876' => 95,'543234' => 92,'098456' => 68, );
$sumof = array_sum($student);
$studentnum = sizeof($student);
$avrg = $sumof / $studentnum;
$min = min($student);
$max = max($student);

echo "<p>The scores on the recent exam ranged from $max to $min. The average for all $studentnum students in this class was $avrg. Nice job! </p>";

foreach ($student as $key => $value) {
	echo "<p>Student $key received a $value on the recent exam.</p>";
}

?>

</body>

<!-- thats all folks -->
</html>