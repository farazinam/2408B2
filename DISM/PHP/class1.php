<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    

<h1 style="color: green;">PHP Day 1</h1>
<hr>

<?php

print("Hello World <br>");
print "This is another way of print";

print "<hr>";

echo("Hello World <br>");
echo "This is another of echo";

//echo '<h1 style="color: blue;"> Variables </h1>';
// echo " <script> 
// alert('This is alert of Javascript using in PHP');
// </script> ";

echo "<h1 style='color: blue;'> Variables </h1>";

//var name = "Faraz Inam"; --- variable definition in JS
$name = "Faraz Inam";  // variable definition in PHP
echo $name;

echo "<br>";

echo "My Name Is: " . $name;

echo "<br>";

$fname = "Faraz";
$lname = " Inam";

echo $fname . $lname;
echo $fname . " " . $lname;

$num1 = 12;
$num2 = 21;

echo $num1 + $num2;

echo "<hr>";
echo "<h1 style='color: blue;'> Operators </h1>";

//Unary Opr - Inc/Dec ++, --

// $n = 3;
// echo $n;
// echo $n++;  // post inc
// echo $n;
// echo ++$n;  // pre inc
// echo $n;

// $m = 6;
// echo $m;
// echo $m--;  // post dec
// echo $m;
// echo --$m;  // pre dec
// echo $m;

//ternary Opr - Conditional Opr ? :
$age = 12;
$result = ($age > 17) ? "Eligible" : "Not Eligible";
echo $result;
//-- or --
echo ($age > 17) ? "Eligible" : "Not Eligible";

echo "<br>";
//Binary Opr
// --- arithmetic opr +, -, *, / ,%, **
$n1 = 13;
$n2 = 7;
echo $n1 + $n2;  // 20
echo "<br>";
echo $n1 - $n2;  // 6
echo "<br>";
echo $n1 * $n2;  // 91
echo "<br>";
echo $n1 / $n2; //1.something...
echo "<br>";
echo $n1 % $n2; // 6
echo "<br>";
echo $n1 ** $n2; // 

?>



</body>
</html>