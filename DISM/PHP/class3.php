<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    
<h1>Condiotonal Statement</h1>

<?php 
echo "<h2> Nested If </h2>";
$num = 17;
if($num > 10){
    echo "Number is Greater than 10 <br>";
    if($num > 15){
        echo "Also Greater than 15 <br>";
        if($num > 20){
            echo "Also Greater than 20 <br>";
        }
        else{
            echo "But NOT Greater than 20 <br>";
        }
    }
    else{
        echo "But NOT Greater than 15 <br>";
    }
}
else{
    echo "Number is Less than 10 <br>";
}


echo "<h2> Switch Case </h2>";

// $month = "january";
// switch($month){
//     case "january":
//         echo "1st month of the Year!";
//         break;
//     case "february":
//         echo "2nd month of the Year!";
//         break;
//     case "march":
//         echo "3rd month of the Year!";
//         break;
//     case "april":
//         echo "4th month of the Year!";
//         break;
//     default : "Please provide correct month!!";
//     break;
// }

$month = "february";
switch($month){
    case "january":
    case "march":
    case "may":
    case "july":
    case "august":
    case "october":
    case "december":
        echo "Month of 31 Days!";
        break;
    case "february":
        echo "Month of 28 Days!";
        break;
    case "april":
    case "june":
    case "september":
    case "november":
        echo "Month of 30 Days!";
        break;
    default : "Please provide correct month!!";
    break;
}

echo "<h1> Loops </h1>";
//for, while, do while, foreach

for($i = 41; $i<51; $i++){
    echo $i . " Welcome to For Loop in PHP! <br>";
}

for($i = 1; $i<11; $i++){
    echo $i . " Welcome to For Loop in PHP! <br>";
}

for($i = 1; $i<11; $i+=2){
    echo $i . " Welcome to For Loop in PHP! <br>";
}

for($i = 0; $i<11; $i+=2){
    echo $i . " Welcome to For Loop in PHP! <br>";
}

for($i = 10; $i>=1; $i--){
    echo $i . " Welcome to For Loop in PHP! <br>";
}


?>

</body>
</html>