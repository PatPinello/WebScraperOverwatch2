<?php
    function addData(string $table_name, string $fileName, string $userID)
    {
        $connect = mysqli_connect(
            'db',
            'php_docker',
            'password',
            'playerStats' #db name
        );
        // Read the JSON file in PHP
        $data = file_get_contents($fileName);

        // Convert the JSON String into PHP Array
        $array = json_decode($data, true);
        $dict_list = $array;
        // print_r($dict_list);
        $userDict = $dict_list[$userID];
        #adding date
        $currentDate = date('Ymd');
        $userDict['day'] = $currentDate;

        #search if present
        $username = $userDict['username'];
        $userPresent = "SELECT * FROM $table_name WHERE username = $username";
        $check = mysqli_query($connect,$userPresent);
        $checkRows = mysqli_num_rows($check);
        if($checkRows > 0 ) #user exists
        {
            #check if same date
            $datePresent = "SELECT * FROM $table_name WHERE day = $currentDate AND username =$username";
            $checkDate = mysqli_query($connect,$datePresent);
            $checkDateRows = mysqli_num_rows($checkDate);

            if($checkDateRows > 0) #user with date already exists
            {
                #already have values - do nothing
            }
            else #date for user hasnt been logged - create new row
            {
                $saveData = ("INSERT INTO $table_name ( " . implode(', ',array_keys($userDict)) . ") VALUES (" . implode(', ',$userDict) . ")");
                mysqli_query($connect,$saveData);
            }
        }
        else #create new user
        {
            $saveData = ("INSERT INTO $table_name ( " . implode(', ',array_keys($userDict)) . ") VALUES (" . implode(', ',$userDict) . ")");
            mysqli_query($connect,$saveData);
        }
            return "Data added Successfully";
    }

    function readData(string $table_name, string $userID, string $attribute)
    {
        $connect = mysqli_connect(
            'db',
            'php_docker',
            'password',
            'playerStats' #db name
        );

        $query = "SELECT $attribute FROM `$table_name` WHERE username = '$userID';";
        $playerDataArray = array();
        $result = mysqli_query($connect,$query);
        if($result)
        {
            while ($row = $result->fetch_assoc())
            {
                foreach($row as $value) array_push($playerDataArray, $value);
            }
        }
        return $playerDataArray;
    }

    $userID = "Ninjaman7000-1418";
    $attribute = 'Elimination_MotinGame';
    $table_name = "bestOverall";
    $filename = "bestOverall.json";

    $playerIds =  explode (",", $_COOKIE['playerIds']);
    $playerIdsSize = count($playerIds);
    for($i=0; $i < $playerIdsSize;$i++)
    {
        if($playerIds[$i]==null)
        {
            $playerIds =  array_slice($playerIds,-(($playerIdsSize-1)-$i));
            break;
        }
    }
    foreach($playerIds as $players)
    {
        echo $players;
        if($players != null)
        {
            addData($table_name, $filename, $players);
        }
    }
    $count = 0;
    $playerDataArray = array_fill(0,5,'null');
    foreach($playerIds as $players)
    {
        if($players != null)
        {
            $playerDataArray[$count] = readData($table_name, $players, $_COOKIE["attribute"]);
            $count++;
        }

    }
    // print_r($playerDataArray);
    $player1_data = $playerDataArray[0][0];
    $player2_data = $playerDataArray[1][0];
    $player3_data = $playerDataArray[2][0];
    $player4_data = $playerDataArray[3][0];
    $player5_data = $playerDataArray[4][0];

    // file_put_contents($userID . '_' . $attribute . '.json', json_encode($playerDataArray));
?>

<script type="text/javascript">var player1_data = "<?= $player1_data ?>";</script>
<script type="text/javascript">var player2_data = "<?= $player2_data ?>";</script>
<script type="text/javascript">var player3_data = "<?= $player3_data ?>";</script>
<script type="text/javascript">var player4_data = "<?= $player4_data ?>";</script>
<script type="text/javascript">var player5_data = "<?= $player5_data ?>";</script>
<script type="text/javascript">var player1_name = "<?= $playerIds[0] ?>";</script>
<script type="text/javascript">var player2_name = "<?= $playerIds[1] ?>";</script>
<script type="text/javascript">var player3_name = "<?= $playerIds[2] ?>";</script>
<script type="text/javascript">var player4_name = "<?= $playerIds[3] ?>";</script>
<script type="text/javascript">var player5_name = "<?= $playerIds[4] ?>";</script>
<script type="text/javascript">var attribute = "<?= $_COOKIE["attribute"] ?>";</script>
<script type="text/javascript">var display = "<?= 1 ?>";</script>

<!-- <script type="text/javascript">var jArray =<?php echo json_encode($playerDataArray); ?>;</script> -->

