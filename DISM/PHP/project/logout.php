<?php
session_start();
session_destroy();
header('location: signin.php');
exit();
// echo "<script>
// window.location.href = 'Admin/index.php';
// </script>";
?>