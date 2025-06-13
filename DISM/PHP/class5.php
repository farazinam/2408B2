<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    
<?php 
echo "<h1> Array </h1>";

echo "<h2> Indexed Array </h2>";
echo "<h3>Multi Dimentional </h3>";


$md = [
    [1, 2, 3, 4, 5],  //0
    [2, 4, 6, 8, 1], //1
    [3, 6, 9, 2, 5] //2
];

$md2 = [
    [10, 20, 30, 40, 50],  //0
    ["Ali", "Bilal", "Usman", "Majeed"], //1
    [2.9, 4.4, 7.6, 13.7, 66.4] //2
];

// echo $md[0][0];
// echo $md[0][1];
// echo $md[0][2];
// echo $md[0][3];
// echo $md[0][4];

// echo "<br>";

// echo $md[1][0];
// echo $md[1][1];
// echo $md[1][2];
// echo $md[1][3];
// echo $md[1][4];

// echo "<br>";

// echo $md[2][0];
// echo $md[2][1];
// echo $md[2][2];
// echo $md[2][3];
// echo $md[2][4];

$md = [
    [1, 2, 3, 4, 5],  //0
    [2, 4, 6, 8, 1], //1
    [3, 6, 9, 2, 5] //2
];

foreach($md as $multi){
    echo "<br>";
    foreach($multi as $dimention){
        echo $dimention;
    }
}


echo "<h2> Associative Array </h2>";
echo "<h3>Single Dimentional </h3>";

$student = [
    "name" => "Ali",
    "age" => 22,
    "height" => 6.7,
    "city" => "Karachi"
];

// echo $student["name"];
// echo $student["age"];
// echo $student["height"];
// echo $student["city"];

foreach($student as $k => $v){
    echo $k . " " . $v . "<br>";
}

echo "<h3>Multi Dimentional </h3>";

$studentInfo = [
    "std1" => [
    "name" => "Ali",
    "age" => 22,
    "height" => 6.7,
    "city" => "Karachi"
    ],

    "std2" => [
    "name" => "Adil",
    "age" => 32,
    "height" => 6.9,
    "city" => "Karachi"
    ],
];

//echo $studentInfo["std2"]["name"];

foreach($studentInfo as $outerKey => $outerVal){
    echo $outerKey . "<br>";
    foreach($outerVal as $innerKey => $innerVal){
        echo $innerKey . " : " . $innerVal . "<br>";
    }
    echo "<hr>";
}


echo "<h1> Functions/Methods </h1>";

echo "<h2> Build-In Functions </h2>";
echo "<h2> Custom/User-defined Functions </h2>";

echo "<h3> Non-Parametarized AND No Return Function </h3>";
function demo1(){
    echo "Welcome to Non parametarized AND No return Function";
}

demo1();

echo "<h3> Parametarized AND No Return Function </h3>";
function demo2($a = 12, $b = 23){
    echo $a + $b;
}

demo2(3, 9);
demo2(12, 33);
demo2();  // error
demo2(5);
demo2(3, 9);

echo "<h3> Non-Parametarized AND Return Function </h3>";
echo "<h3> Parametarized AND Return Function </h3>";

?>
</body>
</html>