<title>404</title>
<?php
include "templates/header.php";
header("HTTP/1.0 404 Not Found");?>
<body><p style="text-align: center"> <?php echo "Страница не найдена";?></p></body>
<?php
exit;
?>