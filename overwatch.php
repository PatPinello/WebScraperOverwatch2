<?php    
    ################################################################
    #This takes the inputted URLs and creates dictionaries from them
        #Uses GET to obtain urls
        #Called when submitting players
    ################################################################ 
    //! TO DO: Make this run automatically every day for all unqiue users in database
    function makePlayerDictionary($playerUrl) 
    {
        $context = stream_context_create(
            array(
                "http" => array(
                    "header" => "User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36"
                )
            )
        );

        $html = file_get_contents($playerUrl, false, $context);
        
        #best Overall
        $start = stripos($html, 'class="stats quickPlay-view is-active"');
        $end = stripos($html, '</span>', $offset = $start);
        $length = $end - $start;
        $htmlSection = substr($html, $start, $length);

        preg_match_all('/<p class="name">(.*?)<\/p>/', $htmlSection, $htmlNames);
        preg_match_all('/<p class="value">(.*?)<\/p>/', $htmlSection, $htmlValues);
        $names = $htmlNames[1];
        $values = $htmlValues[1];

        $playerDictionary = [];

        $problemChars = array("s", "-", " ", ":");
        $removeURL = array("https://overwatch.blizzard.com/en-us/career/", "/");
        $cleanURL = array("", "");
        $username = str_replace($removeURL, $cleanURL, $playerUrl);
        $killChars   = array("", "", "", "");

        for($i=0; $i < count($names); $i++)
        {
            $names[$i] = str_replace($problemChars, $killChars, $names[$i]);
            $values[$i] = str_replace($problemChars, $killChars, $values[$i]);
            $playerDictionary[$names[$i]] = $values[$i];
        }
        $playerDictionary['day'] = date('Ymd');
        $playerDictionary['username'] = "'" . $username . "'";

        return $playerDictionary;
    }
    $start_time = microtime(TRUE);
    // $playerUrl = $_GET['playerUrl'];
    $playerUrls = explode(",", $_COOKIE['playerUrls']);
    foreach ($playerUrls as $url)
    {
        $playerDictionary = makePlayerDictionary($url);
        include('insertPlayerToDB.php');
    }
    include('readPlayerFromDB.php');
    $html = file_get_contents('index.html');
    echo $html;
    $end_time = microtime(TRUE);
    $time_taken =($end_time - $start_time);
    $time_taken = round($time_taken,5);
    
    echo 'Page generated in '.$time_taken.' seconds.';
    // header('Location: index.html');
    // exit;
?>