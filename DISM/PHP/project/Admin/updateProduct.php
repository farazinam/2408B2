<?php 
include("connection.php");
include("header.php");

$getId = $_GET["id"];

$sel = "SELECT * FROM products WHERE product_id = '$getId'";
$q = mysqli_query($conn, $sel);

$fetch = mysqli_fetch_assoc($q);
//print_r($fetch);
?>

<div class="container-fluid pt-4 px-4">
    <div class="row g-4">
        <div class="col-sm-12 col-xl-12">
            <div class="bg-light rounded h-100 p-4">
                <h6 class="mb-4">Update Product</h6>

                <form method="post" enctype="multipart/form-data">

                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Product Name</label>
                        <input type="text" value="<?php echo $fetch["product_name"] ?>" name="product_name" class="form-control" id="exampleInputEmail1"
                            aria-describedby="emailHelp">
                    </div>

                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Product Price</label>
                        <input type="number" value="<?php echo $fetch["product_price"] ?>" name="product_price" class="form-control" id="exampleInputEmail1"
                            aria-describedby="emailHelp">
                    </div>

                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Product Description</label>
                        <input type="text" value="<?php echo $fetch["product_description"] ?>" name="product_desc" class="form-control" id="exampleInputEmail1"
                            aria-describedby="emailHelp">
                    </div>

                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Product Image</label>
                        <input type="file" value="<?php echo $fetch["product_image"] ?>" name="product_image" class="form-control" id="exampleInputEmail1"
                            aria-describedby="emailHelp">
                    </div>

                    <button name="submitBtn" type="submit" class="btn btn-primary">Update Product</button>
                </form>
            </div>
        </div>
    </div>
</div>


<?php 
if(isset($_POST["submitBtn"])){
   $pn = $_POST["product_name"];
   $pp = $_POST["product_price"];
   $pd = $_POST["product_desc"];
   $pi = $_FILES["product_image"]; //Image data comes in form of Array

   $img_name = $pi["name"];
   $img_tmp = $pi["tmp_name"];
   //$img_type = $pi["type"];
   //$img_size = $pi["size"];
   
   $img_path = "image/" . $img_name;

   if(is_uploaded_file($img_tmp)){
       
       $moved = move_uploaded_file($img_tmp, $img_path);

       $upd = "UPDATE products SET product_name = '$pn', product_price = '$pp', product_description = '$pd', product_image = '$img_name' WHERE product_id = '$getId'";
       $done = mysqli_query($conn, $upd);

       if($done){
        echo "<script>
        alert('Record Updated');
        window.location.href='read.php';
        </script>";
     }
   }

   else{
    $upd = "UPDATE products SET product_name = '$pn', product_price = '$pp', product_description = '$pd' WHERE product_id = '$getId'";
    $done = mysqli_query($conn, $upd);

    if($done){
     echo "<script>
     alert('Record Updated');
     window.location.href='read.php';
     </script>";
   }

}
}

?>