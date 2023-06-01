<?php
$pageTitle = "Редактирование";
$description = "Здесь вы можете редактировать данные в базе данных";
require_once "templates/header.php";
$pdo = mysqli_connect("localhost", "root", "", "Stamps");
if (!$pdo) {
    echo "Ошибка подключения";
}
global $id1;
$id1 = $_GET["id"];
$result = mysqli_query($pdo, "SELECT * FROM Stamp1 WHERE id='$id1'");
$row = mysqli_fetch_assoc($result);
?>
<div class="col-md-8 offset-md-2">
<form method="post" action="edit.php">
    <label for="id">ID:</label>
    <input type="text" id="id" name="id" value="<?php echo $row['id']; ?>" readonly><br>

    <label for="name">Название:</label>
    <textarea id="name" name="name" style="width: 500px;"><?php echo $row['name']; ?></textarea><br>

    <label for="descr">Описание:</label>
    <textarea id="descr" name="descr" style="height: 390px; width: 500px;"><?php echo $row['descr']; ?></textarea><br>

    <label for="image">Картинка:</label>
    <input type="text" id="image" name="image" value="<?php echo $row['image']; ?>">

    <button type="submit" name="editButton">Редактировать</button>
    <br><br><br>
    <button type="submit" name="deleteButton">Удалить!</button>
    </form>
</form>
</div>
<?php
if(isset($_POST['editButton'])) {
    // Получение значений из полей формы
    $id = $_POST['id'];
    $name = $_POST['name'];
    $descr = $_POST['descr'];
    $image = addslashes($_POST['image']);

    // Формирование запроса на изменение записи в базе данных
    $sql = "UPDATE Stamp1 SET name='$name', descr='$descr', image='$image' WHERE id=$id";

    // Выполнение запроса
    if ($pdo->query($sql) === TRUE) {
        header('Location:admin_panel.php');
    } else {
        echo "Ошибка при обновлении записи: " . $pdo->error;
    }
}

if (isset($_POST['deleteButton'])) {
    $id = $_POST['id'];
    if (!$id) {
        // если id не задан, выводим ошибку
        echo "Ошибка: id не задан";
        exit;
    }
    $sql = mysqli_query($pdo, "DELETE FROM Stamp1 WHERE id='$id'");
    if ($sql) {
        header('Location:admin_panel.php');
    } else {
        echo "Ошибка при удалении записи: " . mysqli_error($pdo);
    }
}