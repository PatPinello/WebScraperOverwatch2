<?php

    $context = stream_context_create(
        array(
            "http" => array(
                "header" => "User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36"
            )
        )
    );

    $html = file_get_contents("https://overwatch.blizzard.com/en-us/career/Ninjaman7000-1418/", false, $context);
    
    #best Overall
    $start = stripos($html, 'class="stats quickPlay-view is-active"');
    $end = stripos($html, '</span>', $offset = $start);
    $length = $end - $start;
    $htmlSection = substr($html, $start, $length);

    preg_match_all('/<p class="name">(.*?)<\/p>/', $htmlSection, $names);
    
    foreach ($names as $name) 
    {
        
    }
    
    
    
    ?>