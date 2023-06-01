<?php
include "models.template.php";
$pagetitle = "My Template Class";
foreach($results as $row) {
    $row['date'] = date("m/d/y");
    $data[] = $row;
}
$data = chunk_split($data,3);
?>
