<?php
    $user = "root";
    $password = "Ol1v3m@n24";
    $database = "playerStats";
    $table = "bestOverall1";
    
    try 
    {
        $db = new PDO("mysql:host=localhost;dbname=$database", $user, $password);

        $response = $db->query("INSERT INTO $table_name ( " . implode(', ',array_keys($playerDictionary)) . ") VALUES (" . implode(', ',$playerDictionary) . ")");
        print_r($response);
      
    } catch (PDOException $e) 
    {
        print "Error!: " . $e->getMessage() . "<br/>";
        die();
    }
?>