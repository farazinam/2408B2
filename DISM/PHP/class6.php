<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    
<?php 
echo "<h3> Non-Parametarized AND Return Function </h3>";
function demo3(){
    return "Welcome to Non-parametarized BUT Return Function";
}

//echo demo3();
$output = demo3() . "Additional";
echo $output;

echo "<h3> Parametarized AND Return Function </h3>";
function demo4($x, $y, $z){
    return $x + $y * $z;
}

echo demo4(12, 22, 2);

 // -------------------------------------------------------

echo "<h1> Regular Expression </h1>";

$text = "We are learning PHP";
$pattern = "/php/i";
$replace = "Hypertext Preprocessor";

// $check = preg_match($pattern, $text);
// echo($check);

if(preg_match($pattern, $text)){
    echo("Available");
}
else{
    echo("Not Available");
}

$replaced = preg_replace($pattern, $replace, $text);
echo $replaced;
?>
</body>
</html>