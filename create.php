<?php
$pageTitle = "Создание";
$description = "Создание строки, здесь вы можете создать строку в базе данных";
require_once "templates/header.php";
$pdo = mysqli_connect("localhost", "root", "", "Stamps");

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    if (!empty($_POST['name']) && !empty($_POST['descr']) && !empty($_POST['image'])) {
        $sql1 = "SELECT * FROM `Stamp1`";
        $result = mysqli_query($pdo, $sql1);
        $id = mysqli_num_rows($result) + 1;
        $name = $_POST['name'];
        $descr = $_POST['descr'];
        $image = $_POST['image'];
        $stmt = mysqli_prepare($pdo, "INSERT INTO `Stamp1` (`id`, `name`, `descr`, `image`) VALUES (?, ?, ?, ?)");
        mysqli_stmt_bind_param($stmt, "isss", $id, $name, $descr, $image);
        mysqli_stmt_execute($stmt);

        header('Location:admin_panel.php');
    }
}
?>
<div class="col-md-8 offset-md-2">
<form method="post" action="create.php">
    <label for="name">Название:</label>
    <textarea id="name" name="name" style="width: 500px;"></textarea><br>

    <label for="descr">Описание:</label>
    <textarea id="descr" name="descr" style="height: 390px; width: 500px;"></textarea><br>

    <label for="image">Картинка:</label>
    <input type="text" id="image" name="image" value="images\.jpg">

    <button type="submit" name="createButton">Создать</button>
</form>
</div>