<?php
  require("./connectvalues.php");

  $dsn        = "mysql:host=$host;dbname=playerStats";

  $options    = array(
                  PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION
                );