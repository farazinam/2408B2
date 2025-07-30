<?php
session_start();
include("../Admin/connection.php");

require '../vendor/autoload.php';

// Use PHPMailer classes
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

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
    $mail->Username = 'provide_sender_email';    // Your Gmail address
    $mail->Password = 'provide_sender_app_password';       // Your Gmail App Password
    $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;
    $mail->Port = 587;

    // Recipients
    $mail->setFrom('provide_sender_email', 'Aptech Learning pakistan');
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
