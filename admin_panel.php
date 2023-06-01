<?php
session_start();
$pageTitle = "Админская панель";
$description = "Это админская панель, здесь вы можете управлять данными в базе данных";
include "templates/header.php";
?>
<form method="post" action="create.php">
<button type="submit" name="createButton">Создать</button><br>
</form>
<?php
$pdo = mysqli_connect("localhost", "root", "", "Stamps");
if (!$pdo) {
    echo "Ошибка подключения";
}
$result = mysqli_query($pdo, "SELECT * FROM `Stamp1`");
while ($row = mysqli_fetch_assoc($result)) {
    echo "<a href='edit.php?id=" . $row["id"] . "'>";
    echo " ID: " . $row["id"];
    echo " Название: " . $row["name"] ;
    echo " Описание: " . substr($row["descr"],0,105);
    echo " Картинка: " . $row["image"];
    echo "</a></br>";
}
?>
