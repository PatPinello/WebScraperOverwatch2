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

    //^ desired data is in $playerData[$attribute]

?>
<script type="text/javascript">var player1_data = "<?= $playerData[$attribute] ?>";</script>
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