<?php

global $ind;
$ind = mysqli_connect("localhost", "root", "", "Stamps"); // логин, пароль

if (!$ind) {
    echo "Ошибка подключения";
}
$id = $_GET['id'];
$result = mysqli_query($ind, "SELECT * FROM `Stamp1` WHERE id=$id");
$stamp = mysqli_fetch_assoc($result);
$pageTitle = $stamp['name'];
$description = "Здесь вы можете посмотреть информацию о выбранной марке";
include "templates\header.php";
?>
<title><?php echo $stamp['name']?></title>
<section class="py-5">
    <div class="container px-4 px-lg-5 my-5">
        <div class="row gx-4 gx-lg-5 align-items-center">
            <div class="col-md-6"><img class="card-img-top mb-5 mb-md-0"
            src="<?php echo $stamp['image']?>" alt="..."/></div>
            <div class="col-md-6">
                <h1 class="display-5 fw-bolder">Марка №<?php echo $id?></h1>
                <p class="lead"><?php echo $stamp['descr']?></p>
            </div>
        </div>
    </div>
</section>
<?php include "templates/footer.php";?>
