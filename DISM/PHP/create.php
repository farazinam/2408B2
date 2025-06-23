<?php 
include("connection.php");

if(isset($_POST["submitBtn"])){
   $pn = $_POST["product_name"];
   $pp = $_POST["product_price"];
   $pd = $_POST["product_desc"];

   $ins = "INSERT INTO products(product_name, product_price, product_description) VALUES ('$pn', '$pp', '$pd')";
   $done = mysqli_query($conn, $ins);

   if($done){
      echo "<script>
      alert('Record Inserted');
      window.location.href='read.php';
      </script>";
   }
}
?>