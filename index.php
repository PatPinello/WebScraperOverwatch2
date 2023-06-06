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
    $attribute = 'Eliminations_MostinGame';
    $table_name = "bestOverall";
    $filename = "bestOverall.json";
    addData($table_name, $filename, "Ninjaman7000-1418");
    $playerDataArray = readData($table_name, "Ninjaman7000-1418", $attribute);

    file_put_contents($userID . '_' . $attribute . '.json', json_encode($playerDataArray));
    echo '<!DOCTYPE html>
    <html>
      <head>
        <script src="C:/Users/patri/Music/WebscraperOverwatch2/WebScraperOverwatch2/index.js"></script>

      </head>
      <body>
        <div>
          <canvas id="myChart"></canvas>
        </div>
        <h2>Demo JavaScript in Body</h2>

        <p id="demo">A Paragraph</p>

        <button type="button" onclick="myFunction()">Try it</button>


        <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

        <script>

          const ctx = document.getElementById("myChart");

          new Chart(ctx, {
            type: "bar",
            data: {
              labels: ["Red", "Blue", "Yellow", "Green", "Purple", "Orange"],
              datasets: [{
                label: "# of Votes",
                data: [12, 19, 3, 5, 2, 3],
                backgroundColor: [
                  "rgba(255, 99, 132, 0.2)",
                  "rgba(255, 159, 64, 0.2)",
                  "rgba(255, 205, 86, 0.2)",
                  "rgba(75, 192, 192, 0.2)",
                  "rgba(54, 162, 235, 0.2)",
                  "rgba(153, 102, 255, 0.2)",
                  "rgba(201, 203, 207, 0.2)"
                  ],
                borderColor: [
                  "rgb(255, 99, 132)",
                  "rgb(255, 159, 64)",
                  "rgb(255, 205, 86)",
                  "rgb(75, 192, 192)",
                  "rgb(54, 162, 235)",
                  "rgb(153, 102, 255)",
                  "rgb(201, 203, 207)"
                  ],
                borderWidth: 1
              }]
            },
            options: {
              scales: {
                y: {
                  beginAtZero: true
                }
              }
            }
          });
        </script>
      </body>
    </html>';


?>