<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    

<h1> Operators</h1>

<?php 
echo "<h2> Assignment Opr </h2>";  // =, +=, -=, *=, /=, %=, **=

$a = 4;
$b = 5;

echo $a;
echo $b;

//echo $a += $b; // $a = $a + $b  ----> 9
echo $b += $a; // $b = $b + $a  ----> 9

echo $a;
echo $b;

echo "<h2> Comparison opr </h2>";  // ==, ===, >=, <= , <, >, !=, !==
$x = 2;
$y = 4;
echo ($x == $y);  



echo "<h2> Logical opr </h2>";  // && - and , || - or, ! - not

echo "<h2> Spaceship opr </h2>";  // <=>
$num1 = 20;
$num2 = 20;
echo $num1 <=> $num2;


echo "<hr>";
echo "<h2> Conditional Stat </h2>"; //if, if else, if else if (ladder), nested if, switch

$age = 17;
if($age > 17){
    echo "You are Eligible!";
}

if($age == 17){
    echo "You are Eligible!";
}

$age1 = 17;
$age2 = "17";
if($age1 === $age2){
    echo "You are Eligible!";
}

$age1 = 17;
$age2 = "17";
if($age1 !== $age2){
    echo "Yes!, NOt Equal!";
}

if($age > 17){
    echo "You are Eligible!";
}
else{
    echo "You are NOT Eligible!";
}

$agee = 12;
$cnic = true;

if($agee > 17 or $cnic = true){
    echo "--Eligible--";
}

$per = 82;
if($per >= 80 && $per <= 100){
    echo "A+";
}
else if($per >= 70 and $per <= 79){
    echo "A";
}
else if($per >= 60 && $per <= 69){
    echo "B";
}
else if($per >= 50 && $per <= 59){
    echo "C";
}
else if($per >= 40 && $per <= 49){
    echo "D";
}
else if($per > -1 && $per < 40){
    echo "FAIL";
}
else{
    echo "Please provide correct percentage";
}

?>

</body>
</html>