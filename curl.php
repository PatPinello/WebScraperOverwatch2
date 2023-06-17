<?php
    $ch = curl_init();
    curl_setopt($ch, CURLOPT_URL, "https://overwatch.blizzard.com/en-us/career/Ninjaman7000-1418/");
    curl_setopt($ch, CURLOPT_CUSTOMREQUEST, 'GET');
    curl_setOpt($ch, CURLOPT_RETURNTRANSFER, 1);
    $response = curl_exec($ch);
    echo 'HTTP Status Code: ' . curl_getinfo($ch, CURLINFO_HTTP_CODE) . PHP_EOL;
    echo 'Response Body: ' . $response . PHP_EOL;
    curl_close($ch);

?>