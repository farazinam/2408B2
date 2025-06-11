<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    

<?php 

echo "<h1> Loops </h1>";

// for($i = 1; $i <= 20; $i++){
//     echo $i . "<br>";
// }

// for($i = 0; $i <= 20; $i = $i + 2){
//     echo $i . "<br>";
// }

// for($i = 0; $i <= 20; $i++){
//     if($i%2 == 0){
//         echo $i . "<br>";
//     }
// }

// for($i = 0; $i <= 20; $i++){
//     if($i%2 == 1){
//         continue;
//     }
//     echo $i . "<br>";
// }


// for($i = 1; $i<= 20; $i++){
//     if($i == 17){
//         continue;
//     }
//     echo $i . "<br>";
// }

// for($i = 1; $i<= 20; $i++){
//     echo $i . "<br>";
//     if($i == 17){
//         break;
//     }
// }


// $i = 1;
// while($i < 1){
//     echo $i . "<br>";
//     $i++;
// }

// $i = 1;
// do{
//     echo $i . "<br>";
//     $i++;
// }
// while($i < 1)


echo "<h1> Array </h1>";

echo "<h2> Indexed Array </h2>";
echo "<h3>Single Dimentional </h3>";

$students1 = [12, 23, 17, 31, 29, 32, 22, 33, 44, 55555]; 
$students2 = array(14, 17, 11, 24, 19);

// echo $students1[0];
// echo $students1[1];
// echo $students1[2];
// echo $students1[3];
// echo $students1[4];

// echo $students1[0] . $students1[1] . $students1[2];

//echo count($students1);

// for($i = 0; $i<7; $i++) {
//     echo $students1[$i];
// }

// for($i = 0; $i<count($students1); $i++) {
//     echo $students1[$i];
// }

foreach($students1 as $s1){
    echo $s1;
}

?>


</body>
</html>