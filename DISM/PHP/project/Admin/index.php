<?php
include("connection.php");
include("header.php");

$countCat = "SELECT COUNT(*) as catCount FROM category";
$catQ = mysqli_query($conn, $countCat);
$fetchCat = mysqli_fetch_assoc($catQ);

$countBrand = "SELECT COUNT(*) as brandCount FROM brand";
$brandQ = mysqli_query($conn, $countBrand);
$fetchBrand = mysqli_fetch_assoc($brandQ);

$countPro = "SELECT COUNT(*) as proCount FROM products";
$proQ = mysqli_query($conn, $countPro);
$fetchPro = mysqli_fetch_assoc($proQ);

$countUser = "SELECT COUNT(*) as userCount FROM users";
$userQ = mysqli_query($conn, $countUser);
$fetchUser = mysqli_fetch_assoc($userQ)
?>


            <!-- Sale & Revenue Start -->
            <div class="container-fluid pt-4 px-4">
                <div class="row g-4">
                    <div class="col-sm-6 col-xl-6">
                        <div class="bg-light rounded d-flex align-items-center justify-content-between p-4">
                            <i class="fa fa-chart-line fa-3x text-primary"></i>
                            <div class="ms-3">
                                <p class="mb-2">Total Categories</p>
                                <h6 class="mb-0"> <?php echo $fetchCat["catCount"] ?></h6>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-xl-6">
                        <div class="bg-light rounded d-flex align-items-center justify-content-between p-4">
                            <i class="fa fa-chart-bar fa-3x text-primary"></i>
                            <div class="ms-3">
                                <p class="mb-2">Total Brands</p>
                                <h6 class="mb-0"> <?php echo $fetchBrand["brandCount"] ?></h6>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-xl-6">
                        <div class="bg-light rounded d-flex align-items-center justify-content-between p-4">
                            <i class="fa fa-chart-area fa-3x text-primary"></i>
                            <div class="ms-3">
                                <p class="mb-2">Today Products</p>
                                <h6 class="mb-0"> <?php echo $fetchPro["proCount"] ?></h6>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-xl-6">
                        <div class="bg-light rounded d-flex align-items-center justify-content-between p-4">
                            <i class="fa fa-chart-pie fa-3x text-primary"></i>
                            <div class="ms-3">
                                <p class="mb-2">Total User</p>
                                <h6 class="mb-0"> <?php echo $fetchUser["userCount"] ?></h6>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


<?php
include("footer.php");
?>     