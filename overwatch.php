<?php    
    ################################################################
    #This takes the inputted URLs and creates dictionaries from them
        #Uses GET to obtain urls
        #Called when submitting players
    ################################################################ 
    
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
        // echo count($playerDictionary);
        print_r($playerDictionary);

        return $playerDictionary;
    }

    $playerUrl = $_GET['playerUrl'];
    $playerDictionary = makePlayerDictionary($playerUrl); 

    // print_r($playerDictionary);
    $user = "root";
    $password = "Ol1v3m@n24";
    $database = "playerStats";
    $table_name = "bestOverall1";
    
    try 
    {
        $db = new PDO("mysql:host=localhost;dbname=$database", $user, $password);
        print_r("INSERT INTO $table_name ( " . implode(', ',array_keys($playerDictionary)) . ") VALUES (" . implode(', ',$playerDictionary) . ")");
        $response = $db->query("INSERT INTO $table_name ( " . implode(', ',array_keys($playerDictionary)) . ") VALUES (" . implode(', ',$playerDictionary) . ")");
        
        print_r($response);
      
    } catch (PDOException $e) 
    {
        print "Error!: " . $e->getMessage() . "<br/>";
        die();
    }   
?>