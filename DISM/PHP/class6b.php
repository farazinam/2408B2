<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4Q6Gf2aSP4eDXB8Miphtr37CMZZQ5oXLH2yaXMJ2w8e2ZtHTl7GptT4jmndRuHDT" crossorigin="anonymous">
</head>
<body>
    <h1>Product Details</h1>

<form method="post">

  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Product Name</label>
    <input name="product_name" required type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
  </div>

  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Product Price</label>
    <input name="product_price" required type="number" class="form-control" id="exampleInputPassword1">
  </div>

  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Product Description</label>
    <input name="product_desc" required type="text" class="form-control" id="exampleInputPassword1">
  </div>

  <button name="submitBtn" type="submit" class="btn btn-primary">Submit</button>

</form>

<?php 
//GET
// if(isset($_GET["submitBtn"])){
//     $pn = $_GET["product_name"];
//     $pp = $_GET["product_price"];
//     $pd = $_GET["product_desc"];

//     // echo $pn . $pp . $pd;
//     echo "Product Name is: " . $pn . " Product Price is: ". $pp . " Product Description is: " . $pd;
// }

//POST 
if(isset($_POST["submitBtn"])){
    $pn = $_POST["product_name"];
    $pp = $_POST["product_price"];
    $pd = $_POST["product_desc"];

    // echo $pn . $pp . $pd;
    echo "Product Name is: " . $pn . " Product Price is: ". $pp . " Product Description is: " . $pd;
}

?>

</body>
</html>