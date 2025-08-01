<?php
session_start();
include("../Admin/connection.php");

require '../vendor/autoload.php';

// Use PHPMailer classes
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;


if(isset($_SESSION["role"]) == null){
    echo "<script>
    window.location.href = '../signin.php';
    </script>";
}
else if($_SESSION["role"] == 1){
    echo "<script>
    window.location.href = '../Admin/index.php';
    </script>";
}


$p_id = $_GET['id'];

$query = "SELECT * FROM `products` WHERE `product_id` = '$p_id'";
$result = mysqli_query($conn, $query);

$fetch = mysqli_fetch_assoc($result);

$pn = $fetch['product_name'];
$pp = $fetch['product_price'];
$pd = $fetch['product_description'];

$useremail = $_SESSION['email'];
$customername = $_SESSION['user'];

$mail = new PHPMailer(true);

try {
    // SMTP server configuration
    $mail->isSMTP();
    $mail->Host = 'smtp.gmail.com';              // Gmail SMTP server
    $mail->SMTPAuth = true;
    $mail->Username = 'faraz_inam@aptechnorth.edu.pk';    // Your Gmail address
    $mail->Password = 'kzcg rcnh vrrx isuw';       // Your Gmail App Password
    $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;
    $mail->Port = 587;

    // Recipients
    $mail->setFrom('faraz_inam@aptechnorth.edu.pk', 'Aptech Learning pakistan');
    $mail->addAddress($useremail, $customername);

    // Email content
    $mail->isHTML(true);
    $mail->Subject = "Your Order has been Confirmed!";
    $mail->Body = "
        <h2>Dear {$customername},</h2>
        <p>Your order has been confirmed with the following details:</p>
        <ul>
            <li><strong>Product Name:</strong> {$pn}</li>
            <li><strong>Product Price:</strong> {$pp}</li>
            <li><strong>Product Description:</strong> {$pd}</li>
        </ul>
        <p>Thank you for shopping with us!</p>
    ";

    $mail->send();

    echo "<script>
            alert('Mail Sent');
            window.location.href = 'index.php';
          </script>";
} catch (Exception $e) {
    echo "<script>
            alert('Mailer Error: " . $mail->ErrorInfo . "');
            window.location.href = 'index.php';
          </script>";
}
?>
