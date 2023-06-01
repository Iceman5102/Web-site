<?php
$pageTitle = "Главная страница";
$description = "Это главная страница сайта";
include "templates\header.php";
global $ind;
$ind = mysqli_connect("localhost", "root", "", "Stamps"); // логин, пароль

if (!$ind) {
    echo "Ошибка подключения";
}

$result = mysqli_query($ind, "SELECT * FROM `Stamp1`");
$slug = $_GET['slug'] ?? '';
if (!empty($slug)) {
// Запрос на получение товара по его slug
    $query = "SELECT * FROM products WHERE slug = '{$slug}'";
}
print_r($slug);
?>
<div class="col-lg-12">
    <h1 class="page-header">Каталог</h1>
</div>
<section class="py-5">
    <div class="container px-4 px-lg-5 mt-5">
        <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
            <?php while ($stamp = mysqli_fetch_assoc($result)):?>
            <div class="col mb-5">
                <div class="card h-100">
                    <a href="stamp.php?id=<?php echo $stamp['id'];?>">
                        <img class="card-img-top" src="<?php print_r($stamp['image']); ?>"
                             alt="<?php echo($stamp['name']); ?>"/>
                    </a>
                    <div class="card-body p-4">
                        <div class="text-center">
                            <p class="text-start">
                            <h5 class="fw-bolder">
                                <a href="stamp.php?id=<?php echo $stamp['id'];?>"> <p style = ""> <?php print_r($stamp['name']); ?></p>
                                </a>
                            </h5>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <?php endwhile; ?>
</section>
<?php include "templates/footer.php";?>
