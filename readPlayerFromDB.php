<?php
    $user = "root"; //! TO DO: change user
    $password = "Ol1v3m@n24";
    $database = "playerStats";
    $table_name = "bestOverall1"; //! TO DO: make table_name a checkbox so other tables can be chosen
    $attribute = $_COOKIE['attribute'];

    //& IF player is comparing against other players, otherwise * will be used
    try 
    {

        $userID = $playerDictionary['username'];
        $db = new PDO("mysql:host=localhost;dbname=$database", $user, $password);

        $sth = $db->prepare("SELECT `$attribute` FROM `$table_name` WHERE username = $userID;");
        $sth->execute();

        $playerData = ($sth->fetchAll(\PDO::FETCH_ASSOC))[0];        

    } catch (PDOException $e) 
    {
        print "Error!: " . $e->getMessage() . "<br/>";
        die();
    }   

    //^ desired data is in $playerData[$attribute]

?>