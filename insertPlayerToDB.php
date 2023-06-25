<?php
    // $user = "root"; //! TO DO: change user
    // $password = "Ol1v3m@n24";
    // $database = "playerStats";
    require "./config.php";
    require "./common.php";
    $table_name = "bestOverall1"; //! TO DO: make table_name a checkbox so other tables can be chosen
    try 
    {
        //^day and username are unique in SQL table, IGNORE ignores if they are the same
        $db = new PDO($dsn, $user, $password);
        $response = $db->query("INSERT IGNORE INTO $table_name ( " . implode(', ',array_keys($playerDictionary)) . ") VALUES (" . implode(', ',$playerDictionary) . ")");
        
    } catch (PDOException $e) 
    {
        print "Error!: " . $e->getMessage() . "<br/>";
        die();
    }   
?>