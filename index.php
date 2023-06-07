<?php
    $html = file_get_contents('index.html');
    include('index2.php');
    echo $_COOKIE['attribute'];
    echo $html;


?>