<?php 
include("connection.php");

if(isset($_POST["submitBtn"])){
   $pn = $_POST["product_name"];
   $pp = $_POST["product_price"];
   $pd = $_POST["product_desc"];
   $pi = $_FILES["product_image"]; //Image data comes in form of Array

$img_name = $pi["name"];
$img_tmp = $pi["tmp_name"];
$img_type = $pi["type"];
$img_size = $pi["size"];

$img_path = "image/" . $img_name;

$moved = move_uploaded_file($img_tmp, $img_path);

if($moved){
    $ins = "INSERT INTO products(product_name, product_price, product_description, product_image) VALUES ('$pn', '$pp', '$pd', '$img_name')";
    $done = mysqli_query($conn, $ins);

       if($done){
      echo "<script>
      alert('Record Inserted');
      window.location.href='read.php';
      </script>";
   }
}
}
?>