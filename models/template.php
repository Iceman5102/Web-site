<?php include "exm.php" ?>
<html>
<head>
    <title><?=$pagetitle?></title>
</head>
<body>
<table>
    <?php foreach ($data as $chunk): ?>
        <tr>
            <?php foreach ($chunk as $row): ?>
                <td>
                    <h3>Hello <?=$name?>!</h3>
                    <p>The time is: <?=$date?></p>
                    <p>Embedded PHP works in the template</p>
                    <p><b>But embed PHP in the data is a VERY BAD IDEA</b></p>
                    <p><?=$address?></p>
                </td>
            <?php endforeach ?>
        </tr>
    <?php endforeach ?>
</table>
</body>
</html>