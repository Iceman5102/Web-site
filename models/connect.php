<?php
global $ind;
$ind = mysqli_connect("localhost", "root", "", "Stamps"); // логин, пароль

if (!$ind) {
    echo "Ошибка подключения";
}
