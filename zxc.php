<?php
include_once('tbs_class.php');
$TBS = new clsTinyButStrong;
$TBS->LoadTemplate('template.htm');
$message = 'Hello';
$TBS->Show();