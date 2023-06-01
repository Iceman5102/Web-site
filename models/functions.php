<?php
    require_once "connect.php";

    function getStamps ($limit) {
        global $mysqli;
        connectDB();
        $result = $mysqli->query("SELECT * FROM `Stamp` order by 'id' DESC LIMIT $limit");
        closeDB();
        return resultToArray ($result);
    }

    function resultToArray ($result) {
        $array = array ();
        while(($row = $result->fetch_assoc()) != false)
                $array[] = $row;
        return $array;
    }

?>

<?php
ini_set('display_startup_errors',1);
ini_set('display_errors',1);
error_reporting(-1);
global $ind;
$ind = mysqli("localhost", "root", "", "Stamps"); // логин, пароль

if (!$ind) {
    echo "Ошибка подключения";
}

$result = mysqli_query($ind, "SELECT * FROM `Stamp`");

$row = mysqli_fetch_assoc($result);
print_r($row);
?>
