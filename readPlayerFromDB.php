<?php
    function readData($userID) {

        
        // $user = "root"; //! TO DO: change user
        // $password = "Ol1v3m@n24";
        // $database = "playerStats";
        require "./config.php";
        
        $table_name = "bestOverall1"; //! TO DO: make table_name a checkbox so other tables can be chosen
        $attribute = $_COOKIE['attribute'];

        //& IF player is comparing against other players, otherwise * will be used
        try 
        {

            // $userID = $playerDictionary['username'];
            $db = new PDO($dsn, $user, $password);
            
            //^Get most recent values from DB
            $sth = $db->prepare("SELECT B.$attribute FROM
                                (
                                    select username,max(day) day
                                    from bestOverall1 group by username
                                ) 
                                A INNER JOIN bestOverall1 B USING (username,day)
                                WHERE username=$userID;");
            $sth->execute();

            $playerData = ($sth->fetchAll(\PDO::FETCH_ASSOC))[0];
            

        } catch (PDOException $e) 
        {
            print "Error!: " . $e->getMessage() . "<br/>";
            die();
        }   
        return $playerData;
    }
    //^ desired data is in $playerData[$attribute]
    $playerIds =  explode (",", $_COOKIE['playerIds']);
    $playerIdsSize = count($playerIds);
    $playerNameArray = array_fill(0,5,'None');
    for($i=0; $i < $playerIdsSize;$i++)
    {
        $playerNameArray[$i] = $playerIds[$i];
    }
    
    // foreach($playerIds as $players)
    // {
    //     if($players != null)
    //     {
    //         addData($table_name, $filename, $players);
    //     }
    // }
    $count = 0;
    $playerDataArray = array_fill(0,5,'null');
    $attribute = $_COOKIE['attribute'];
    
    foreach($playerNameArray as $players)
    {
        if($players != 'None')
        {
            $playerDataArray[$count] = readData("'" . $players . "'");
        }
        else
        {
            $playerDataArray[$count]= array($attribute=>0);
        }
        $count++;
        
    }
    
    $player1_data = $playerDataArray[0][$attribute];
    $player2_data = $playerDataArray[1][$attribute];
    $player3_data = $playerDataArray[2][$attribute];
    $player4_data = $playerDataArray[3][$attribute];
    $player5_data = $playerDataArray[4][$attribute];
?>
<script type="text/javascript">var player1_data = "<?= $player1_data ?>";</script>
<script type="text/javascript">var player2_data = "<?= $player2_data ?>";</script>
<script type="text/javascript">var player3_data = "<?= $player3_data ?>";</script>
<script type="text/javascript">var player4_data = "<?= $player4_data ?>";</script>
<script type="text/javascript">var player5_data = "<?= $player5_data ?>";</script>
<script type="text/javascript">var player1_name = "<?= $playerNameArray[0] ?>";</script>
<script type="text/javascript">var player2_name = "<?= $playerNameArray[1] ?>";</script>
<script type="text/javascript">var player3_name = "<?= $playerNameArray[2] ?>";</script>
<script type="text/javascript">var player4_name = "<?= $playerNameArray[3] ?>";</script>
<script type="text/javascript">var player5_name = "<?= $playerNameArray[4] ?>";</script>
<script type="text/javascript">var attribute = "<?= $_COOKIE["attribute"] ?>";</script>