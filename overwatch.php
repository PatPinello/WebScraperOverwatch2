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
    require "./config.php";
    
    $table_name = "bestOverall1"; //! TO DO: make table_name a checkbox so other tables can be chosen
    try 
    {
        //^day and username are unique in SQL table, IGNORE ignores if they are the same
        $db = new PDO($dsn, $username, $password);
        $response = $db->query("CREATE TABLE IF NOT EXISTS `bestOverall1` (
            `EliminationMotinGame` float DEFAULT NULL,
            `FinalBlowMotinGame` float DEFAULT NULL,
            `AllDamageDoneMotinGame` float DEFAULT NULL,
            `HealingDoneMotinGame` float DEFAULT NULL,
            `DefeniveAitMotinGame` float DEFAULT NULL,
            `OffeniveAitMotinGame` float DEFAULT NULL,
            `ObjectiveKillMotinGame` float DEFAULT NULL,
            `ObjectiveTimeMotinGame` float DEFAULT NULL,
            `MultikillBet` float DEFAULT NULL,
            `SoloKillMotinGame` float DEFAULT NULL,
            `TimeSpentonFireMotinGame` float DEFAULT NULL,
            `MeleeFinalBlowMotinGame` float DEFAULT NULL,
            `EnvironmentalKillMotinGame` float DEFAULT NULL,
            `KillStreakBet` float DEFAULT NULL,
            `HeroDamageDoneMotinGame` float DEFAULT NULL,
            `BarrierDamageDoneMotinGame` float DEFAULT NULL,
            `AitMotinGame` float DEFAULT NULL,
            `ObjectiveContetTimeMotinGame` float DEFAULT NULL,
            `ReconAitMotinGame` float DEFAULT NULL,
            `TimeSpentonFireAvgper10Min` float DEFAULT NULL,
            `HeroDamageDoneAvgper10Min` float DEFAULT NULL,
            `DeathAvgper10Min` float DEFAULT NULL,
            `EliminationAvgper10Min` float DEFAULT NULL,
            `AitAvgper10min` float DEFAULT NULL,
            `HealingDoneAvgper10Min` float DEFAULT NULL,
            `ObjectiveKillAvgper10Min` float DEFAULT NULL,
            `ObjectiveTimeAvgper10Min` float DEFAULT NULL,
            `FinalBlowAvgper10Min` float DEFAULT NULL,
            `ObjectiveContetTimeAvgper10Min` float DEFAULT NULL,
            `SoloKillAvgper10Min` float DEFAULT NULL,
            `TimePlayed` float DEFAULT NULL,
            `GamePlayed` float DEFAULT NULL,
            `GameWon` float DEFAULT NULL,
            `GameLot` float DEFAULT NULL,
            `HeroWin` float DEFAULT NULL,
            `EnvironmentalKill` float DEFAULT NULL,
            `TimeSpentonFire` float DEFAULT NULL,
            `MeleeFinalBlow` float DEFAULT NULL,
            `HeroDamageDone` float DEFAULT NULL,
            `Death` float DEFAULT NULL,
            `Elimination` float DEFAULT NULL,
            `DamageDone` float DEFAULT NULL,
            `ObjectiveKill` float DEFAULT NULL,
            `FinalBlow` float DEFAULT NULL,
            `ObjectiveTime` float DEFAULT NULL,
            `ObjectiveContetTime` float DEFAULT NULL,
            `SoloKill` float DEFAULT NULL,
            `Multikill` float DEFAULT NULL,
            `ReconAit` float DEFAULT NULL,
            `Ait` float DEFAULT NULL,
            `HealingDone` float DEFAULT NULL,
            `DefeniveAit` float DEFAULT NULL,
            `OffeniveAit` float DEFAULT NULL,
            `Card` float DEFAULT NULL,
            `day` date DEFAULT NULL,
            `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
            `id` int NOT NULL
          );");
        
    } catch (PDOException $e) 
    {
        print "Error!!: " . $e->getMessage() . "<br/>";
        die();
    }  
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