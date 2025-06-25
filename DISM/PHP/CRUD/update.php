<?php 
include("connection.php");

$getId = $_GET["id"];

$sel = "SELECT * FROM products WHERE product_id = '$getId'";
$q = mysqli_query($conn, $sel);

$fetch = mysqli_fetch_assoc($q);
//print_r($fetch);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4Q6Gf2aSP4eDXB8Miphtr37CMZZQ5oXLH2yaXMJ2w8e2ZtHTl7GptT4jmndRuHDT" crossorigin="anonymous">
</head>
<body>

<form action="" method="post">
<div class="mb-3">
  <label for="exampleInputEmail1" class="form-label">Product Name</label>
  <input value="<?php echo $fetch["product_name"] ?>" name="product_name" required type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
</div>

<div class="mb-3">
  <label for="exampleInputPassword1" class="form-label">Product Price</label>
  <input value="<?php echo $fetch["product_price"] ?>" name="product_price" required type="number" class="form-control" id="exampleInputPassword1">
</div>

<div class="mb-3">
  <label for="exampleInputPassword1" class="form-label">Product Description</label>
  <input value="<?php echo $fetch["product_description"] ?>" name="product_desc" required type="text" class="form-control" id="exampleInputPassword1">
</div>

<button name="submitBtn" type="submit" class="btn btn-primary">Update</button>
</form>

</body>
</html>


<?php 
if(isset($_POST["submitBtn"])){
   $pn = $_POST["product_name"];
   $pp = $_POST["product_price"];
   $pd = $_POST["product_desc"];

   $upd = "UPDATE products SET product_name = '$pn', product_price = '$pp', product_description = '$pd' WHERE product_id = '$getId'";
   $done = mysqli_query($conn, $upd);

// $upd = "UPDATE `products` SET `product_name`='$pn',`product_price`='$pp',`product_description`='$pd' WHERE `product_id` = '$getId'";
// $done = mysqli_query($conn, $upd);

   if($done){
      echo "<script>
      alert('Record Updated');
      window.location.href='read.php';
      </script>";
   }
}

?>