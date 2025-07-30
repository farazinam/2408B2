<?php 
include("header.php");
include("../Admin/connection.php");

$getId = $_GET["id"];

$sel = "SELECT p.*, c.category_name, b.brand_name 
FROM products AS p
INNER JOIN category AS c
ON p.category_id = c.category_id
INNER JOIN brand AS b
ON p.brand_id = b.brand_id
WHERE product_id = '$getId'";

$q = mysqli_query($conn, $sel);

$fetch = mysqli_fetch_assoc($q)
?>

<!-- About Start -->
<div class="container-xxl py-5">
        <div class="container py-5">
            <div class="row g-5 align-items-center">
                <div class="col-lg-6 wow fadeIn" data-wow-delay="0.1s">
                    <div class="about-img position-relative overflow-hidden p-5 pe-0">
                        <img class="img-fluid w-100" src="../Admin/image/<?php echo $fetch["product_image"]?>">
                    </div>
                </div>
                <div class="col-lg-6 wow fadeIn" data-wow-delay="0.5s">
                    <h1 class="display-5 mb-4"> <?php echo $fetch["product_name"]?></h1>
                    <p class="mb-4"> <?php echo $fetch["product_description"]?> </p>
                    <p><i class="fa fa-check text-primary me-3"></i> <?php echo $fetch["product_price"]?> </p>
                    <p><i class="fa fa-check text-primary me-3"></i><?php echo $fetch["category_name"]?></p>
                    <p><i class="fa fa-check text-primary me-3"></i><?php echo $fetch["brand_name"]?></p>
                    <a class="btn btn-secondary rounded-pill py-3 px-5 mt-3" href="">Add To Cart</a>
                    <a class="btn btn-success rounded-pill py-3 px-5 mt-3" href="mail.php?id=<?php echo $fetch["product_id"]?>">Buy Now</a>
                </div>
            </div>
        </div>
    </div>
    <!-- About End -->


    <?php 
include("footer.php");
?>