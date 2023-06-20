<?php
    $user = "root"; //! TO DO: change user
    $password = "Ol1v3m@n24";
    $database = "playerStats";
    $table_name = "bestOverall1"; //! TO DO: make table_name a checkbox so other tables can be chosen
    
    try 
    {
        $db = new PDO("mysql:host=localhost;dbname=$database", $user, $password);
        $response = $db->query("INSERT INTO $table_name ( " . implode(', ',array_keys($playerDictionary)) . ") VALUES (" . implode(', ',$playerDictionary) . ")");
        
    } catch (PDOException $e) 
    {
        print "Error!: " . $e->getMessage() . "<br/>";
        die();
    }   
?>