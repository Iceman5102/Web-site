<?php
$pdo = mysqli_connect("localhost", "root", "", "Stamps");
if (!$pdo) {
    echo "Ошибка подключения";
}
$login = mysqli_real_escape_string($pdo, $_POST['login']);
$password = mysqli_real_escape_string($pdo, $_POST['password']);


$result = mysqli_query($pdo, "SELECT id FROM users WHERE login='$login' AND password='$password'");
$result = mysqli_fetch_assoc($result);
if ($result["id"] > 0) {
    header('Location:admin_panel.php');
} else {
    header('Location:login.php');
}

mysqli_close($pdo);
?>
